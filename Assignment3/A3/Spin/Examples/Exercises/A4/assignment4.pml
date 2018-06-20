#define THRESHOLD 4

//======== Defines message structure which is encapsulated in the ESBPacket ===========
typedef Message {
byte id;
byte state;
byte members;
byte time;
}

//================== Defines a structure of ESBPacket ======================
typedef EsbPacket {
    int processId;
    Message msg;
}

//=========== Structure to store Common Knowledge of each process with each member process =============
typedef commonKnowledge { byte member[4] };
commonKnowledge ck[4];

int counter =0;
byte commonKnowledgeState[4];
byte  currentSlot = 1;
byte tioa_tdma_state; //0 : Aloha & 1: TDMA
int missingMessages[4];
byte timer_tick=0;
byte numberOfNodes=4;
byte members = 0;
bool tranmission_state;
EsbPacket controlPacket[4];

//================= Chanel Declaration =================
chan P0P1 = [0] of {EsbPacket};
chan P0P2 = [0] of {EsbPacket};
chan P0P3 = [0] of {EsbPacket};
chan P1P0 = [0] of {EsbPacket};
chan P1P2 = [0] of {EsbPacket};
chan P1P3 = [0] of {EsbPacket};
chan P2P0 = [0] of {EsbPacket};
chan P2P1 = [0] of {EsbPacket};
chan P2P3 = [0] of {EsbPacket};
chan P3P0 = [0] of {EsbPacket};
chan P3P1 = [0] of {EsbPacket};
chan P3P2 = [0] of {EsbPacket};
//====================  End ============================


//================= Macro For LTL Property =================
//Property to check for liveness: Infinitely Often every process enters TDMA
//Steps For Execution::
// 1. spin -a -f '!([]<>tdma)' assignment4.pml
// 2. spin -a -f '!([]<>tdma)' > property.ltl
// 3. spin -a -N property.ltl assignment4.pml
// 4. gcc -o pan pan.c
// 5. ./pan
#define tdma (tioa_tdma_state == 1)
//==================== Macro End ============================

//================= Initializing variables =================
init {
    tioa_tdma_state = 0; //Aloha
    tranmission_state=true; // true -> transmission State , false -> listening state
    int m;
    int n;
    //controlPacket.processId = 0;
    for (n : 0..3){
        controlPacket[n].msg.id  = 1;
        controlPacket[n].msg.state  = tioa_tdma_state;
        controlPacket[n].msg.members  = 1;
    }
    for(m : 0..3){
        for (n : 0..3){
            // Initializing the common knowledge value for each process
            ck[m].member[n] = 1 ;
        }
    }
    atomic {
        // Start the timer to invoke multiple processes
        run startTimer();
    }
}


//================= Calling esbTimeSlot with ids: 0,1,2,3 =================
proctype startTimer() {
do
    ::if
        :: timer_tick < 7 -> atomic {
	    int p;
	    for(p : 0..3) {
            // Four process are started
	       run esbTimeSlot(p);
	    }
        timer_tick++;
        }
     fi;
od;
}


//================= Send EsbPacket using channel =================

proctype send(byte senderID) {

//================= Sending packet initialization =================
EsbPacket sendPacket;
sendPacket.msg.id=senderID;
sendPacket.msg.state=tioa_tdma_state;
sendPacket.msg.members=senderID;
//================= END =================

atomic {
if
    //If the currentSlot is satisfied by senderID 0
    ::(senderID==0 && currentSlot%4==senderID) ->
        sendPacket.msg.time = currentSlot;

        //Send esbPacket from senderID 0 to 1
        sendPacket.processId=1;
        P0P1!sendPacket;

        //Send esbPacket from senderID 0 to 2
        sendPacket.processId=2;
        P0P2 !sendPacket;
        printf("Sending packet = %d",senderID);

        //Send esbPacket from senderID 0 to 3
        sendPacket.processId=3;
        P0P3 !sendPacket;
        printf("Sending packet = %d",senderID);

    //If the currentSlot is satisfied by senderID 1
    ::(senderID==1 && currentSlot%4==senderID) ->
        sendPacket.msg.time = currentSlot;

        //Send esbPacket from senderID 1 to 0
        sendPacket.processId=0;
        P1P0!sendPacket;

        //Send esbPacket from senderID 1 to 2
        sendPacket.processId=2;
        P1P2 !sendPacket;
        printf("Sending packet = %d",senderID);

        //Send esbPacket from senderID 1 to 3
        sendPacket.processId=3;
        P1P3 !sendPacket;
        printf("Sending packet = %d",senderID);

    //If the currentSlot is satisfied by senderID 2
    ::(senderID==2 && currentSlot%4==2) ->
        sendPacket.msg.time = currentSlot;

        //Send esbPacket from senderID 2 to 0
        sendPacket.processId=0;
        P2P0!sendPacket;

        //Send esbPacket from senderID 2 to 1
        sendPacket.processId=1;
        P2P1 !sendPacket;
        printf("Sending packet = %d",senderID);

        //Send esbPacket from senderID 2 to 3
        sendPacket.processId=3;
        P2P3 !sendPacket;
        printf("Sending packet = %d",senderID);

    //If the currentSlot is satisfied by senderID 2
    ::(senderID==3 && currentSlot%4==3) ->
        sendPacket.msg.time = currentSlot;

        //Send esbPacket from senderID 3 to 0
        sendPacket.processId=0;
        P3P0!sendPacket;

        //Send esbPacket from senderID 3 to 1
        sendPacket.processId=1;
        P3P1 !sendPacket;
        printf("Sending packet = %d",senderID);

        //Send esbPacket from senderID 3 to 2
        sendPacket.processId=2;
        P3P2 !sendPacket;
        printf("Sending packet = %d",senderID);

    fi;
}
}

/* =========================
 * Procedure to send EsbPacket according
 * to the current state and move to
 * other states (Ex. Aloha to TDMA).
 * ========================== */

proctype esbTimeSlot(byte processID)
{
	atomic{
        if
	      :: tranmission_state == true ->
                controlPacket[processID].msg.time = currentSlot;
                controlPacket[processID].msg.state  = tioa_tdma_state;
                if
                    :: tioa_tdma_state == 0 ->  // In Aloha State
                    if
                        ::tranmission_state == true ->
                            run send(processID); // Send ESBPacket
                            if
                                :: controlPacket[processID].msg.members == 4 ->
                                    tioa_tdma_state = 1; // Move to TDMA State if all members are known
                                :: else ->
                                    run failureDetector(tioa_tdma_state);
                            fi;
                       // :: true -> printf("Message Dropped!");skip;  // Introducing random message drop in Aloha Phase.
                    fi;
                    :: tioa_tdma_state == 1 ->  // In TDMA State
                            if
                                :: currentSlot%4 == processID ->
                                            run send(processID);
                                ::else -> run failureDetector(tioa_tdma_state);
                            fi;
                fi;
	fi;
	currentSlot++;
}
}


/* ============================================
 * Procedure to detect failure and accordingly
 * change the current state if Threshold value
 * is exceeded.
 * ============================================ */

proctype failureDetector(byte state) {
	int m;
	for(m : 0..3){
	if
		:: controlPacket[m].msg.members >= m ->
		if
		:: state == commonKnowledgeState[m] ->
		missingMessages[m]++;
		fi;

		if
		:: missingMessages[m] > THRESHOLD ->
		//controlPacket[m].msg.members = controlPacket.msg.members - 1;
        	controlPacket[m].msg.members = controlPacket[m].msg.members & ~(1 << m);
        	missingMessages[m]=0;
		commonKnowledgeState[m] = 0;
		fi;
	fi;
}
}

/* ==========================================
 * Procedure to receive the packet
 * in the appropriate channel and invoke the
 * receiver handler accrodingly.
 * ========================================== */

active proctype receive (){
EsbPacket receivedPacket;
do
    ::if
        :: P0P1?receivedPacket  
	-> run onPacketReceive(receivedPacket);

        :: P0P2?receivedPacket  
	-> run onPacketReceive(receivedPacket);

        :: P0P3?receivedPacket
    -> run onPacketReceive(receivedPacket);

        :: P1P0?receivedPacket
	-> run onPacketReceive(receivedPacket);

        :: P1P2?receivedPacket  
	-> run onPacketReceive(receivedPacket);

        :: P1P3?receivedPacket
    -> run onPacketReceive(receivedPacket);

        :: P2P0?receivedPacket  
	-> run onPacketReceive(receivedPacket);

        :: P2P1?receivedPacket  
	-> run onPacketReceive(receivedPacket);

        :: P2P3?receivedPacket
    -> run onPacketReceive(receivedPacket);

        :: P3P0?receivedPacket
    -> run onPacketReceive(receivedPacket);

        :: P3P1?receivedPacket
    -> run onPacketReceive(receivedPacket);

        :: P3P2?receivedPacket
    -> run onPacketReceive(receivedPacket);
    fi;
od;
}

/* =======================================
 * Handler to perform actions when
 * sent packet is received in the channel
 * associated with the process.
 * ======================================= */

proctype onPacketReceive(EsbPacket receivedPacket) {
int m;
int n;
atomic {
    printf("****Receiving PACKET %d",receivedPacket.processId);
    if
        :: controlPacket[receivedPacket.processId].msg.members < 4 -> controlPacket[receivedPacket.processId].msg.members = controlPacket[receivedPacket.processId].msg.members + 1;
        :: else -> skip;
    fi;
    if
        :: true -> ck[receivedPacket.processId].member[receivedPacket.processId] = controlPacket[receivedPacket.processId].msg.members ;
        printf("$$$$Updating ck of %d when received from %d---own",receivedPacket.processId,receivedPacket.processId);
        :: else -> skip;
    fi;
    if
        :: true ->  ck[receivedPacket.processId].member[receivedPacket.msg.id] = controlPacket[receivedPacket.msg.id].msg.members;
        printf("$$$Updating ck of %d when received from %d---sender",receivedPacket.processId,receivedPacket.msg.id);
        :: else -> skip;
    fi;

for(m : 0..3){
    for (n : 0..3){
        printf("|%d",ck[m].member[n]);
    }
}

//========= Updating the commonknowledge state with the state of the received packet ========
commonKnowledgeState[receivedPacket.msg.id] = receivedPacket.msg.state;

printf("~~~~~In On Receive--before for");

//============== Check if All processes know about all other processes =================
for(m : 0..3){
   for (n : 0..3){
    if
    :: ck[m].member[n] == 4 -> counter=counter+1;printf("\nin onreceive::::Insidee for \nCount: %d\n",counter);
    :: else -> /*ck[m].member[m]=4; counter=counter+1;*/ printf("In else\ns");skip;
    fi;

    }
}
printf("Count is ::: %d",counter);

//============= If all process know about each process move to TDMA, else return to Aloha =================
if
    :: counter == 16 ->
        tioa_tdma_state = 1;
        printf("\n~~~~~~Going to TDMA, Count = %d\n",counter);
    :: else ->
        tioa_tdma_state = 0;
        printf("\n~~~~~~Going to Aloha, Count = %d\n",counter);
fi;
commonKnowledgeState[receivedPacket.msg.id] = tioa_tdma_state;
counter =0;
}
}
