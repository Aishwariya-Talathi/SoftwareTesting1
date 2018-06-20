
#define RXQ_LEN 2

#define THRESHOLD  4



static enum {doTx, doRx} rs;      //Radio state
static enum {Tx, Rx} timeSlot, action;      
enum {ELECTING_STATE, TDMA_STATE};
enum {LEADER_ELECTION = 4, EXCHANGE_INFO = 12};

static EsbPacket rxPackets[TXQ_LEN];
static int rxq_head = 0;
static int rxq_tail = 0;

void startTimer();

#define PHASE 33

uint16_t commonKnowledge[16];
char commonKnowledgeState[16];
int  currentSlot = 0;
int  myId = 0;
char tioa_tdma_state;
char missingMessages[16];
char numberOfNodes=1;
char members = 0;
char transmission_state;


static EsbPacket ackPacket;     // Empty ack packet
static EsbPacket servicePacket; // Packet sent to answer a low level request

// 1bit packet counters
static int curr_down = 1;
static int curr_up = 1;


static EsbPacket controlPacket;
void esbTimeSlot();
void sendAloha();
void onReceive(EsbPacket *pt);
void getCommonKnowledge();
char minId;
#define delayms  4



static void setupRx()
{

}



static uint32_t rnd8(void)
{
}

void timerTrigger(void)
{
  esbTimeSlot();
}



void radioReceive()
{
    
    switch (action){
    case Rx:
      if (0xFC & rxPackets[rxq_head].msg.messageId)
      {
          if (EXCHANGE_INFO == rxPackets[rxq_head].msg.messageId || LEADER_ELECTION == rxPackets[rxq_head].msg.messageId)
          {
              onReceive(&rxPackets[rxq_head]);
          }

          if (((rxq_head+1)%RXQ_LEN) == rxq_tail) {
              listen();
              return;
          }
          rxq_head = ((rxq_head+1)%RXQ_LEN);
      }
       
      break;
    case Tx:     
	{
	  setupRx();  // after transmiting, it receives
	}
      
      break;
    }
}


void startTimer()
{
    // stuff to start the timer
}

void stopTimer()
{
    // stuff to stop the timer
 
}



void booting(unsigned char id)
{
    
  myId = id;
  tioa_tdma_state = ELECTING_STATE;
  controlPacket.msg.messageId = LEADER_ELECTION;
  
  memset(controlPacket.data, 0, sizeof(controlPacket));
  memset(missingMessages, 0, sizeof(missingMessages));
  memset(commonKnowledge, 0, sizeof(commonKnowledge));
  memset(commonKnowledgeState, 0, sizeof(commonKnowledgeState));
  
  controlPacket.size = 32;
  controlPacket.noack = 1;
  controlPacket.msg.id  = myId;
  minId = myId;
  controlPacket.msg.state  = tioa_tdma_state;
  controlPacket.msg.leaderId = myId;
  controlPacket.msg.members  = 1 << (myId-1);
  commonKnowledge[myId-1]  = 1 << (myId-1);
  
  transmission_state = false;
  startTimer();
}



void sendAloha()
{
    if (rnd8() < 128 && currentSlot == (myId << 1))
       send();
    else 
      timeSlot = Rx;
}


void failureDectector(char state)
{
    int i;
    for (i=0; i<16; i++)
    {
      if (controlPacket.msg.members & (1 << i))
      {
	if (state == commonKnowledgeState[i])
	  missingMessages[i]++;
	if (missingMessages[i] > THRESHOLD)
	{
	    controlPacket.msg.members &= ~(1 << i);
	    missingMessages[i] = 0;
	    commonKnowledgeState[i] = ELECTING_STATE;
	}
      }
    }
    missingMessages[myId-1] = 0;
}

void esbTimeSlot()
{   
    if (transmission_state)
    {
      controlPacket.msg.time = currentSlot;
      controlPacket.msg.state  = tioa_tdma_state;
      switch (tioa_tdma_state)
      {
	case ELECTING_STATE:
	  controlPacket.msg.messageId  = LEADER_ELECTION;
	  sendAloha();
	  if ((currentSlot % PHASE) == 0)  // one round
	  {  
	      if (controlPacket.msg.members == (1 << (myId-1)))  
	      { 
              tioa_tdma_state = TDMA_STATE;
              controlPacket.msg.leaderId = myId;
	      }
	      else{
              failureDectector(tioa_tdma_state);
	      }
	  }   
	  break;
	case TDMA_STATE: 
	  if (currentSlot == (myId << 1))
	  {  
	      controlPacket.msg.messageId  = EXCHANGE_INFO;
	      send();
	      failureDectector(tioa_tdma_state);
	  }
	  else
	  {
  	    timeSlot = Rx;
	  }
	  break;
      }
    }
    currentSlot++;	
    if (currentSlot == PHASE)
      transmission_state = true;
    currentSlot %= PHASE;
}



void getCommonKnowledge()
{
    int i;
    int whoKnows = 0;
    numberOfNodes = 0;
    for (i=15; i>=0; i--)
    {
	if (controlPacket.msg.members & (1<<i))
	{
   	    if (commonKnowledge[i] == controlPacket.msg.members) 
	    {
	       whoKnows++;
	       controlPacket.msg.leaderId = i+1;
	    }
	    numberOfNodes++; 
	}
    }
    if (numberOfNodes == whoKnows)
    {
        tioa_tdma_state = TDMA_STATE;
    }
    else
    {
	controlPacket.msg.leaderId  = myId;
	tioa_tdma_state = ELECTING_STATE;
    }
}

void onReceive(EsbPacket *receivedPacket)
{
    controlPacket.msg.members |= 1 << (receivedPacket->msg.id -1 );
    commonKnowledge[myId-1] = controlPacket.msg.members;
    commonKnowledge[receivedPacket->msg.id-1] = receivedPacket->msg.members;
    missingMessages[receivedPacket->msg.id-1] = 0;
    commonKnowledgeState[receivedPacket->msg.id-1] = receivedPacket->msg.state;
  
    if (!transmission_state)
    {
	if (receivedPacket->msg.id <= minId && controlPacket.msg.state == TDMA_STATE)
	{
	  minId = receivedPacket->msg.id;
	  currentSlot = receivedPacket->msg.time;
	}
    
    }
    getCommonKnowledge();
    if (controlPacket.msg.leaderId == receivedPacket->msg.id && tioa_tdma_state == TDMA_STATE)
      currentSlot = receivedPacket->msg.time;
}
