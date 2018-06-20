#define THRESHOLD 4

typedef Message {
byte id;
byte state;
byte members;
byte time;
}

typedef EsbPacket {
int processId;
Message msg;
//byte data;
}

typedef commonKnowledge { byte member[3] };
commonKnowledge ck[3];
int count =0;
byte commonKnowledgeState[3];
byte  currentSlot = 1;
byte tioa_tdma_state; //0 :  Aloha & 1: TDMA
int missingMessages[3];
byte globalclock=0;
byte numberOfNodes=3;
int myId = 0;
byte members = 0;
bool transmission_state;
EsbPacket controlPacket[3];

//================= Chanel Declaration =================
chan P0P1 = [0] of {EsbPacket};
chan P0P2 = [0] of {EsbPacket};
chan P1P0 = [0] of {EsbPacket};
chan P1P2 = [0] of {EsbPacket};
chan P2P0 = [0] of {EsbPacket};
chan P2P1 = [0] of {EsbPacket};
//====================  End ============================

init {
myId=1;
transmission_state = true;
tioa_tdma_state = 0; //Aloha
int m;
int n;
//controlPacket.processId = 0;
for (n : 0..2){
controlPacket[n].msg.id  = myId;
controlPacket[n].msg.state  = tioa_tdma_state;
controlPacket[n].msg.members  = 1;
}
for(m : 0..2){
for (n : 0..2){
ck[m].member[n] = 1 ;
}
}
atomic {
run startTimer();
}
}

proctype startTimer() {
do
::if
::globalclock < 7 -> atomic {
run esbTimeSlot(0);
run esbTimeSlot(1);
run esbTimeSlot(2);
globalclock++;
}
fi;
od;
}

proctype send(byte prid) {
EsbPacket sendPacket;
sendPacket.msg.id=prid;
sendPacket.msg.members=prid;
sendPacket.msg.state=tioa_tdma_state;
atomic {
if
::(prid==0 && currentSlot%3==prid) ->
sendPacket.msg.time = currentSlot;
sendPacket.processId=1;
P0P1!sendPacket;
sendPacket.processId=2;
P0P2 !sendPacket;
printf("Sending packet = %d",prid);
::(prid==1 && currentSlot%3==prid) ->
sendPacket.msg.time = currentSlot;
sendPacket.processId=0;
P1P0!sendPacket;
sendPacket.processId=2;
P1P2 !sendPacket;
printf("Sending packet = %d",prid);
::(prid==2 && currentSlot%3==2) ->
sendPacket.msg.time = currentSlot;
sendPacket.processId=0;
P2P0!sendPacket;
sendPacket.processId=1;
P2P1 !sendPacket;
printf("Sending packet = %d",prid);
fi;

}
}


proctype esbTimeSlot(byte processID)
{
atomic{
if
:: transmission_state == true ->
controlPacket[processID].msg.time = currentSlot;
controlPacket[processID].msg.state  = tioa_tdma_state;
if
:: tioa_tdma_state == 0 ->
if
:: true ->
run send(processID);
if
:: controlPacket[processID].msg.members == 2 ->
tioa_tdma_state = 1;
:: else ->
run failureDetector(tioa_tdma_state);
fi;
// :: true -> printf("Message Dropped!");skip;  // Introducing random message drop in Aloha Phase.
fi;
:: tioa_tdma_state == 1 ->
if
:: currentSlot%3 == processID ->
run send(processID);
::else -> run failureDetector(tioa_tdma_state);
fi;
fi;
:: else -> skip;
fi;
currentSlot++;
}
}



proctype failureDetector(byte state) {
int m;
for(m : 0..2){
if
:: controlPacket[m].msg.members == m ->
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


active proctype receive (){
EsbPacket receivedPacket;
do
::if
:: P0P1?receivedPacket -> run onReceive(receivedPacket);
:: P0P2?receivedPacket  -> run onReceive(receivedPacket);
:: P1P0?receivedPacket  -> run onReceive(receivedPacket);
:: P1P2?receivedPacket  -> run onReceive(receivedPacket);
:: P2P0?receivedPacket  -> run onReceive(receivedPacket);
:: P2P1?receivedPacket  -> run onReceive(receivedPacket);
fi;
od;
}

proctype onReceive(EsbPacket receivedPacket) {
int m;
int n;
atomic {
printf("****Receiving PACKET %d",receivedPacket.processId);
if
:: controlPacket[receivedPacket.processId].msg.members < 3 -> controlPacket[receivedPacket.processId].msg.members = controlPacket[receivedPacket.processId].msg.members + 1;
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

for(m : 0..2){
for (n : 0..2){

printf("|%d",ck[m].member[n]);
}
}

commonKnowledgeState[receivedPacket.msg.id] = receivedPacket.msg.state;

printf("~~~~~In On Receive--before for");

for(m : 0..2){
for (n : 0..2){
if
:: ck[m].member[n] == 3 -> count=count+1;printf("\nin onreceive::::Insidee for \nCount: %d\n",count);
:: else -> /*ck[m].member[m]=3; count=count+1;*/ printf("In else\ns");skip;
fi;

}
}
printf("Count is ::: %d",count);
printf("\n######################PROCESS ID is ::: %d\n",receivedPacket.msg.id);
if
:: (count == 9) ->
    if
        ::true->tioa_tdma_state = 1; printf("\n~~~~~~Going to TDMA, Count = %d\n",count);
        ::true->printf("\nProcessor failure: Going back from TDMA to aloha\n"); tioa_tdma_state = 0; send(receivedPacket.msg.id);
       ::else->skip;
    fi;
:: else -> tioa_tdma_state = 0; printf("\n~~~~~~Going to Aloha, Count = %d\n",count);
fi;
commonKnowledgeState[receivedPacket.msg.id] = tioa_tdma_state;

count =0;
}
}
