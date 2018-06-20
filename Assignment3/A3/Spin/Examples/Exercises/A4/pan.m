#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM never_0 */
	case 3: // STATE 1 - ./property.ltl:4 - [(!((tioa_tdma_state==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][1] = 1;
		if (!( !((((int)now.tioa_tdma_state)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 8 - ./property.ltl:9 - [(!((tioa_tdma_state==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][8] = 1;
		if (!( !((((int)now.tioa_tdma_state)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 13 - ./property.ltl:11 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC onPacketReceive */
	case 6: // STATE 1 - ./assignment4.pml:305 - [printf('****Receiving PACKET %d',receivedPacket.processId)] (0:0:0 - 1)
		IfNotBlocked
		reached[6][1] = 1;
		Printf("****Receiving PACKET %d", ((P6 *)this)->receivedPacket.processId);
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 2 - ./assignment4.pml:307 - [((controlPacket[receivedPacket.processId].msg.members<4))] (13:0:1 - 1)
		IfNotBlocked
		reached[6][2] = 1;
		if (!((((int)now.controlPacket[ Index(((P6 *)this)->receivedPacket.processId, 4) ].msg.members)<4)))
			continue;
		/* merge: controlPacket[receivedPacket.processId].msg.members = (controlPacket[receivedPacket.processId].msg.members+1)(0, 3, 13) */
		reached[6][3] = 1;
		(trpt+1)->bup.oval = ((int)now.controlPacket[ Index(((P6 *)this)->receivedPacket.processId, 4) ].msg.members);
		now.controlPacket[ Index(((P6 *)this)->receivedPacket.processId, 4) ].msg.members = (((int)now.controlPacket[ Index(((P6 *)this)->receivedPacket.processId, 4) ].msg.members)+1);
#ifdef VAR_RANGES
		logval("controlPacket[onPacketReceive:receivedPacket.processId].msg.members", ((int)now.controlPacket[ Index(((P6 *)this)->receivedPacket.processId, 4) ].msg.members));
#endif
		;
		/* merge: .(goto)(0, 7, 13) */
		reached[6][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 8: // STATE 8 - ./assignment4.pml:311 - [(1)] (20:0:1 - 1)
		IfNotBlocked
		reached[6][8] = 1;
		if (!(1))
			continue;
		/* merge: ck[receivedPacket.processId].member[receivedPacket.processId] = controlPacket[receivedPacket.processId].msg.members(20, 9, 20) */
		reached[6][9] = 1;
		(trpt+1)->bup.oval = ((int)now.ck[ Index(((P6 *)this)->receivedPacket.processId, 4) ].member[ Index(((P6 *)this)->receivedPacket.processId, 4) ]);
		now.ck[ Index(((P6 *)this)->receivedPacket.processId, 4) ].member[ Index(((P6 *)this)->receivedPacket.processId, 4) ] = ((int)now.controlPacket[ Index(((P6 *)this)->receivedPacket.processId, 4) ].msg.members);
#ifdef VAR_RANGES
		logval("ck[onPacketReceive:receivedPacket.processId].member[onPacketReceive:receivedPacket.processId]", ((int)now.ck[ Index(((P6 *)this)->receivedPacket.processId, 4) ].member[ Index(((P6 *)this)->receivedPacket.processId, 4) ]));
#endif
		;
		/* merge: printf('$$$$Updating ck of %d when received from %d---own',receivedPacket.processId,receivedPacket.processId)(20, 10, 20) */
		reached[6][10] = 1;
		Printf("$$$$Updating ck of %d when received from %d---own", ((P6 *)this)->receivedPacket.processId, ((P6 *)this)->receivedPacket.processId);
		/* merge: .(goto)(0, 14, 20) */
		reached[6][14] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 9: // STATE 15 - ./assignment4.pml:316 - [(1)] (36:0:2 - 1)
		IfNotBlocked
		reached[6][15] = 1;
		if (!(1))
			continue;
		/* merge: ck[receivedPacket.processId].member[receivedPacket.msg.id] = controlPacket[receivedPacket.msg.id].msg.members(36, 16, 36) */
		reached[6][16] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.ck[ Index(((P6 *)this)->receivedPacket.processId, 4) ].member[ Index(((int)((P6 *)this)->receivedPacket.msg.id), 4) ]);
		now.ck[ Index(((P6 *)this)->receivedPacket.processId, 4) ].member[ Index(((P6 *)this)->receivedPacket.msg.id, 4) ] = ((int)now.controlPacket[ Index(((int)((P6 *)this)->receivedPacket.msg.id), 4) ].msg.members);
#ifdef VAR_RANGES
		logval("ck[onPacketReceive:receivedPacket.processId].member[onPacketReceive:receivedPacket.msg.id]", ((int)now.ck[ Index(((P6 *)this)->receivedPacket.processId, 4) ].member[ Index(((int)((P6 *)this)->receivedPacket.msg.id), 4) ]));
#endif
		;
		/* merge: printf('$$$Updating ck of %d when received from %d---sender',receivedPacket.processId,receivedPacket.msg.id)(36, 17, 36) */
		reached[6][17] = 1;
		Printf("$$$Updating ck of %d when received from %d---sender", ((P6 *)this)->receivedPacket.processId, ((int)((P6 *)this)->receivedPacket.msg.id));
		/* merge: .(goto)(36, 21, 36) */
		reached[6][21] = 1;
		;
		/* merge: m = 0(36, 22, 36) */
		reached[6][22] = 1;
		(trpt+1)->bup.ovals[1] = ((P6 *)this)->m;
		((P6 *)this)->m = 0;
#ifdef VAR_RANGES
		logval("onPacketReceive:m", ((P6 *)this)->m);
#endif
		;
		/* merge: .(goto)(0, 37, 36) */
		reached[6][37] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 10: // STATE 19 - ./assignment4.pml:318 - [(1)] (36:0:1 - 1)
		IfNotBlocked
		reached[6][19] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(36, 21, 36) */
		reached[6][21] = 1;
		;
		/* merge: m = 0(36, 22, 36) */
		reached[6][22] = 1;
		(trpt+1)->bup.oval = ((P6 *)this)->m;
		((P6 *)this)->m = 0;
#ifdef VAR_RANGES
		logval("onPacketReceive:m", ((P6 *)this)->m);
#endif
		;
		/* merge: .(goto)(0, 37, 36) */
		reached[6][37] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 11: // STATE 22 - ./assignment4.pml:321 - [m = 0] (0:36:1 - 3)
		IfNotBlocked
		reached[6][22] = 1;
		(trpt+1)->bup.oval = ((P6 *)this)->m;
		((P6 *)this)->m = 0;
#ifdef VAR_RANGES
		logval("onPacketReceive:m", ((P6 *)this)->m);
#endif
		;
		/* merge: .(goto)(0, 37, 36) */
		reached[6][37] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 12: // STATE 23 - ./assignment4.pml:321 - [((m<=3))] (30:0:1 - 1)
		IfNotBlocked
		reached[6][23] = 1;
		if (!((((P6 *)this)->m<=3)))
			continue;
		/* merge: n = 0(0, 24, 30) */
		reached[6][24] = 1;
		(trpt+1)->bup.oval = ((P6 *)this)->n;
		((P6 *)this)->n = 0;
#ifdef VAR_RANGES
		logval("onPacketReceive:n", ((P6 *)this)->n);
#endif
		;
		/* merge: .(goto)(0, 31, 30) */
		reached[6][31] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 13: // STATE 25 - ./assignment4.pml:322 - [((n<=3))] (30:0:1 - 1)
		IfNotBlocked
		reached[6][25] = 1;
		if (!((((P6 *)this)->n<=3)))
			continue;
		/* merge: printf('|%d',ck[m].member[n])(30, 26, 30) */
		reached[6][26] = 1;
		Printf("|%d", ((int)now.ck[ Index(((P6 *)this)->m, 4) ].member[ Index(((P6 *)this)->n, 4) ]));
		/* merge: n = (n+1)(30, 27, 30) */
		reached[6][27] = 1;
		(trpt+1)->bup.oval = ((P6 *)this)->n;
		((P6 *)this)->n = (((P6 *)this)->n+1);
#ifdef VAR_RANGES
		logval("onPacketReceive:n", ((P6 *)this)->n);
#endif
		;
		/* merge: .(goto)(0, 31, 30) */
		reached[6][31] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 14: // STATE 33 - ./assignment4.pml:321 - [m = (m+1)] (0:36:1 - 3)
		IfNotBlocked
		reached[6][33] = 1;
		(trpt+1)->bup.oval = ((P6 *)this)->m;
		((P6 *)this)->m = (((P6 *)this)->m+1);
#ifdef VAR_RANGES
		logval("onPacketReceive:m", ((P6 *)this)->m);
#endif
		;
		/* merge: .(goto)(0, 37, 36) */
		reached[6][37] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 15: // STATE 39 - ./assignment4.pml:328 - [commonKnowledgeState[receivedPacket.msg.id] = receivedPacket.msg.state] (0:62:2 - 3)
		IfNotBlocked
		reached[6][39] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.commonKnowledgeState[ Index(((int)((P6 *)this)->receivedPacket.msg.id), 4) ]);
		now.commonKnowledgeState[ Index(((P6 *)this)->receivedPacket.msg.id, 4) ] = ((int)((P6 *)this)->receivedPacket.msg.state);
#ifdef VAR_RANGES
		logval("commonKnowledgeState[onPacketReceive:receivedPacket.msg.id]", ((int)now.commonKnowledgeState[ Index(((int)((P6 *)this)->receivedPacket.msg.id), 4) ]));
#endif
		;
		/* merge: printf('~~~~~In On Receive--before for')(62, 40, 62) */
		reached[6][40] = 1;
		Printf("~~~~~In On Receive--before for");
		/* merge: m = 0(62, 41, 62) */
		reached[6][41] = 1;
		(trpt+1)->bup.ovals[1] = ((P6 *)this)->m;
		((P6 *)this)->m = 0;
#ifdef VAR_RANGES
		logval("onPacketReceive:m", ((P6 *)this)->m);
#endif
		;
		/* merge: .(goto)(0, 63, 62) */
		reached[6][63] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 16: // STATE 42 - ./assignment4.pml:333 - [((m<=3))] (56:0:1 - 1)
		IfNotBlocked
		reached[6][42] = 1;
		if (!((((P6 *)this)->m<=3)))
			continue;
		/* merge: n = 0(0, 43, 56) */
		reached[6][43] = 1;
		(trpt+1)->bup.oval = ((P6 *)this)->n;
		((P6 *)this)->n = 0;
#ifdef VAR_RANGES
		logval("onPacketReceive:n", ((P6 *)this)->n);
#endif
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[6][57] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 17: // STATE 44 - ./assignment4.pml:334 - [((n<=3))] (0:0:0 - 1)
		IfNotBlocked
		reached[6][44] = 1;
		if (!((((P6 *)this)->n<=3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 45 - ./assignment4.pml:336 - [((ck[m].member[n]==4))] (56:0:2 - 1)
		IfNotBlocked
		reached[6][45] = 1;
		if (!((((int)now.ck[ Index(((P6 *)this)->m, 4) ].member[ Index(((P6 *)this)->n, 4) ])==4)))
			continue;
		/* merge: counter = (counter+1)(56, 46, 56) */
		reached[6][46] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.counter;
		now.counter = (now.counter+1);
#ifdef VAR_RANGES
		logval("counter", now.counter);
#endif
		;
		/* merge: printf('\\nin onreceive::::Insidee for \\nCount: %d\\n',counter)(56, 47, 56) */
		reached[6][47] = 1;
		Printf("\nin onreceive::::Insidee for \nCount: %d\n", now.counter);
		/* merge: .(goto)(56, 52, 56) */
		reached[6][52] = 1;
		;
		/* merge: n = (n+1)(56, 53, 56) */
		reached[6][53] = 1;
		(trpt+1)->bup.ovals[1] = ((P6 *)this)->n;
		((P6 *)this)->n = (((P6 *)this)->n+1);
#ifdef VAR_RANGES
		logval("onPacketReceive:n", ((P6 *)this)->n);
#endif
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[6][57] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 19: // STATE 49 - ./assignment4.pml:337 - [printf('In else\\ns')] (0:0:0 - 1)
		IfNotBlocked
		reached[6][49] = 1;
		Printf("In else\ns");
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 50 - ./assignment4.pml:337 - [(1)] (56:0:1 - 1)
		IfNotBlocked
		reached[6][50] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(56, 52, 56) */
		reached[6][52] = 1;
		;
		/* merge: n = (n+1)(56, 53, 56) */
		reached[6][53] = 1;
		(trpt+1)->bup.oval = ((P6 *)this)->n;
		((P6 *)this)->n = (((P6 *)this)->n+1);
#ifdef VAR_RANGES
		logval("onPacketReceive:n", ((P6 *)this)->n);
#endif
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[6][57] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 21: // STATE 53 - ./assignment4.pml:334 - [n = (n+1)] (0:56:1 - 3)
		IfNotBlocked
		reached[6][53] = 1;
		(trpt+1)->bup.oval = ((P6 *)this)->n;
		((P6 *)this)->n = (((P6 *)this)->n+1);
#ifdef VAR_RANGES
		logval("onPacketReceive:n", ((P6 *)this)->n);
#endif
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[6][57] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 22: // STATE 59 - ./assignment4.pml:333 - [m = (m+1)] (0:62:1 - 3)
		IfNotBlocked
		reached[6][59] = 1;
		(trpt+1)->bup.oval = ((P6 *)this)->m;
		((P6 *)this)->m = (((P6 *)this)->m+1);
#ifdef VAR_RANGES
		logval("onPacketReceive:m", ((P6 *)this)->m);
#endif
		;
		/* merge: .(goto)(0, 63, 62) */
		reached[6][63] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 23: // STATE 65 - ./assignment4.pml:342 - [printf('Count is ::: %d',counter)] (0:72:0 - 3)
		IfNotBlocked
		reached[6][65] = 1;
		Printf("Count is ::: %d", now.counter);
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 66 - ./assignment4.pml:346 - [((counter==16))] (77:0:3 - 1)
		IfNotBlocked
		reached[6][66] = 1;
		if (!((now.counter==16)))
			continue;
		/* merge: tioa_tdma_state = 1(77, 67, 77) */
		reached[6][67] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.tioa_tdma_state);
		now.tioa_tdma_state = 1;
#ifdef VAR_RANGES
		logval("tioa_tdma_state", ((int)now.tioa_tdma_state));
#endif
		;
		/* merge: printf('\\n~~~~~~Going to TDMA, Count = %d\\n',counter)(77, 68, 77) */
		reached[6][68] = 1;
		Printf("\n~~~~~~Going to TDMA, Count = %d\n", now.counter);
		/* merge: .(goto)(77, 73, 77) */
		reached[6][73] = 1;
		;
		/* merge: commonKnowledgeState[receivedPacket.msg.id] = tioa_tdma_state(77, 74, 77) */
		reached[6][74] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.commonKnowledgeState[ Index(((int)((P6 *)this)->receivedPacket.msg.id), 4) ]);
		now.commonKnowledgeState[ Index(((P6 *)this)->receivedPacket.msg.id, 4) ] = ((int)now.tioa_tdma_state);
#ifdef VAR_RANGES
		logval("commonKnowledgeState[onPacketReceive:receivedPacket.msg.id]", ((int)now.commonKnowledgeState[ Index(((int)((P6 *)this)->receivedPacket.msg.id), 4) ]));
#endif
		;
		/* merge: counter = 0(77, 75, 77) */
		reached[6][75] = 1;
		(trpt+1)->bup.ovals[2] = now.counter;
		now.counter = 0;
#ifdef VAR_RANGES
		logval("counter", now.counter);
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 25: // STATE 70 - ./assignment4.pml:350 - [tioa_tdma_state = 0] (0:77:3 - 1)
		IfNotBlocked
		reached[6][70] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.tioa_tdma_state);
		now.tioa_tdma_state = 0;
#ifdef VAR_RANGES
		logval("tioa_tdma_state", ((int)now.tioa_tdma_state));
#endif
		;
		/* merge: printf('\\n~~~~~~Going to Aloha, Count = %d\\n',counter)(77, 71, 77) */
		reached[6][71] = 1;
		Printf("\n~~~~~~Going to Aloha, Count = %d\n", now.counter);
		/* merge: .(goto)(77, 73, 77) */
		reached[6][73] = 1;
		;
		/* merge: commonKnowledgeState[receivedPacket.msg.id] = tioa_tdma_state(77, 74, 77) */
		reached[6][74] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.commonKnowledgeState[ Index(((int)((P6 *)this)->receivedPacket.msg.id), 4) ]);
		now.commonKnowledgeState[ Index(((P6 *)this)->receivedPacket.msg.id, 4) ] = ((int)now.tioa_tdma_state);
#ifdef VAR_RANGES
		logval("commonKnowledgeState[onPacketReceive:receivedPacket.msg.id]", ((int)now.commonKnowledgeState[ Index(((int)((P6 *)this)->receivedPacket.msg.id), 4) ]));
#endif
		;
		/* merge: counter = 0(77, 75, 77) */
		reached[6][75] = 1;
		(trpt+1)->bup.ovals[2] = now.counter;
		now.counter = 0;
#ifdef VAR_RANGES
		logval("counter", now.counter);
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 26: // STATE 74 - ./assignment4.pml:353 - [commonKnowledgeState[receivedPacket.msg.id] = tioa_tdma_state] (0:77:2 - 3)
		IfNotBlocked
		reached[6][74] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.commonKnowledgeState[ Index(((int)((P6 *)this)->receivedPacket.msg.id), 4) ]);
		now.commonKnowledgeState[ Index(((P6 *)this)->receivedPacket.msg.id, 4) ] = ((int)now.tioa_tdma_state);
#ifdef VAR_RANGES
		logval("commonKnowledgeState[onPacketReceive:receivedPacket.msg.id]", ((int)now.commonKnowledgeState[ Index(((int)((P6 *)this)->receivedPacket.msg.id), 4) ]));
#endif
		;
		/* merge: counter = 0(77, 75, 77) */
		reached[6][75] = 1;
		(trpt+1)->bup.ovals[1] = now.counter;
		now.counter = 0;
#ifdef VAR_RANGES
		logval("counter", now.counter);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 27: // STATE 77 - ./assignment4.pml:356 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[6][77] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC receive */
	case 28: // STATE 1 - ./assignment4.pml:256 - [P0P1?receivedPacket.processId,receivedPacket.msg.id,receivedPacket.msg.state,receivedPacket.msg.members,receivedPacket.msg.time] (0:0:5 - 1)
		reached[5][1] = 1;
		if (boq != now.P0P1) continue;
		if (q_len(now.P0P1) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P5 *)this)->receivedPacket.processId;
		(trpt+1)->bup.ovals[1] = ((int)((P5 *)this)->receivedPacket.msg.id);
		(trpt+1)->bup.ovals[2] = ((int)((P5 *)this)->receivedPacket.msg.state);
		(trpt+1)->bup.ovals[3] = ((int)((P5 *)this)->receivedPacket.msg.members);
		(trpt+1)->bup.ovals[4] = ((int)((P5 *)this)->receivedPacket.msg.time);
		;
		((P5 *)this)->receivedPacket.processId = qrecv(now.P0P1, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.processId", ((P5 *)this)->receivedPacket.processId);
#endif
		;
		((P5 *)this)->receivedPacket.msg.id = qrecv(now.P0P1, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.id", ((int)((P5 *)this)->receivedPacket.msg.id));
#endif
		;
		((P5 *)this)->receivedPacket.msg.state = qrecv(now.P0P1, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.state", ((int)((P5 *)this)->receivedPacket.msg.state));
#endif
		;
		((P5 *)this)->receivedPacket.msg.members = qrecv(now.P0P1, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.members", ((int)((P5 *)this)->receivedPacket.msg.members));
#endif
		;
		((P5 *)this)->receivedPacket.msg.time = qrecv(now.P0P1, XX-1, 4, 1);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.time", ((int)((P5 *)this)->receivedPacket.msg.time));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.P0P1);
		sprintf(simtmp, "%d", ((P5 *)this)->receivedPacket.processId); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.state)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.members)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.time)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.P0P1))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 29: // STATE 2 - ./assignment4.pml:257 - [(run onPacketReceive(receivedPacket.processId,receivedPacket.msg.id,receivedPacket.msg.state,receivedPacket.msg.members,receivedPacket.msg.time))] (0:0:0 - 1)
		IfNotBlocked
		reached[5][2] = 1;
		if (!(addproc(II, 1, 6, ((P5 *)this)->receivedPacket.processId, ((int)((P5 *)this)->receivedPacket.msg.id), ((int)((P5 *)this)->receivedPacket.msg.state), ((int)((P5 *)this)->receivedPacket.msg.members), ((int)((P5 *)this)->receivedPacket.msg.time))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 3 - ./assignment4.pml:259 - [P0P2?receivedPacket.processId,receivedPacket.msg.id,receivedPacket.msg.state,receivedPacket.msg.members,receivedPacket.msg.time] (0:0:5 - 1)
		reached[5][3] = 1;
		if (boq != now.P0P2) continue;
		if (q_len(now.P0P2) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P5 *)this)->receivedPacket.processId;
		(trpt+1)->bup.ovals[1] = ((int)((P5 *)this)->receivedPacket.msg.id);
		(trpt+1)->bup.ovals[2] = ((int)((P5 *)this)->receivedPacket.msg.state);
		(trpt+1)->bup.ovals[3] = ((int)((P5 *)this)->receivedPacket.msg.members);
		(trpt+1)->bup.ovals[4] = ((int)((P5 *)this)->receivedPacket.msg.time);
		;
		((P5 *)this)->receivedPacket.processId = qrecv(now.P0P2, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.processId", ((P5 *)this)->receivedPacket.processId);
#endif
		;
		((P5 *)this)->receivedPacket.msg.id = qrecv(now.P0P2, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.id", ((int)((P5 *)this)->receivedPacket.msg.id));
#endif
		;
		((P5 *)this)->receivedPacket.msg.state = qrecv(now.P0P2, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.state", ((int)((P5 *)this)->receivedPacket.msg.state));
#endif
		;
		((P5 *)this)->receivedPacket.msg.members = qrecv(now.P0P2, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.members", ((int)((P5 *)this)->receivedPacket.msg.members));
#endif
		;
		((P5 *)this)->receivedPacket.msg.time = qrecv(now.P0P2, XX-1, 4, 1);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.time", ((int)((P5 *)this)->receivedPacket.msg.time));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.P0P2);
		sprintf(simtmp, "%d", ((P5 *)this)->receivedPacket.processId); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.state)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.members)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.time)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.P0P2))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 31: // STATE 4 - ./assignment4.pml:260 - [(run onPacketReceive(receivedPacket.processId,receivedPacket.msg.id,receivedPacket.msg.state,receivedPacket.msg.members,receivedPacket.msg.time))] (0:0:0 - 1)
		IfNotBlocked
		reached[5][4] = 1;
		if (!(addproc(II, 1, 6, ((P5 *)this)->receivedPacket.processId, ((int)((P5 *)this)->receivedPacket.msg.id), ((int)((P5 *)this)->receivedPacket.msg.state), ((int)((P5 *)this)->receivedPacket.msg.members), ((int)((P5 *)this)->receivedPacket.msg.time))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 5 - ./assignment4.pml:262 - [P0P3?receivedPacket.processId,receivedPacket.msg.id,receivedPacket.msg.state,receivedPacket.msg.members,receivedPacket.msg.time] (0:0:5 - 1)
		reached[5][5] = 1;
		if (boq != now.P0P3) continue;
		if (q_len(now.P0P3) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P5 *)this)->receivedPacket.processId;
		(trpt+1)->bup.ovals[1] = ((int)((P5 *)this)->receivedPacket.msg.id);
		(trpt+1)->bup.ovals[2] = ((int)((P5 *)this)->receivedPacket.msg.state);
		(trpt+1)->bup.ovals[3] = ((int)((P5 *)this)->receivedPacket.msg.members);
		(trpt+1)->bup.ovals[4] = ((int)((P5 *)this)->receivedPacket.msg.time);
		;
		((P5 *)this)->receivedPacket.processId = qrecv(now.P0P3, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.processId", ((P5 *)this)->receivedPacket.processId);
#endif
		;
		((P5 *)this)->receivedPacket.msg.id = qrecv(now.P0P3, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.id", ((int)((P5 *)this)->receivedPacket.msg.id));
#endif
		;
		((P5 *)this)->receivedPacket.msg.state = qrecv(now.P0P3, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.state", ((int)((P5 *)this)->receivedPacket.msg.state));
#endif
		;
		((P5 *)this)->receivedPacket.msg.members = qrecv(now.P0P3, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.members", ((int)((P5 *)this)->receivedPacket.msg.members));
#endif
		;
		((P5 *)this)->receivedPacket.msg.time = qrecv(now.P0P3, XX-1, 4, 1);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.time", ((int)((P5 *)this)->receivedPacket.msg.time));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.P0P3);
		sprintf(simtmp, "%d", ((P5 *)this)->receivedPacket.processId); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.state)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.members)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.time)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.P0P3))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 33: // STATE 6 - ./assignment4.pml:263 - [(run onPacketReceive(receivedPacket.processId,receivedPacket.msg.id,receivedPacket.msg.state,receivedPacket.msg.members,receivedPacket.msg.time))] (0:0:0 - 1)
		IfNotBlocked
		reached[5][6] = 1;
		if (!(addproc(II, 1, 6, ((P5 *)this)->receivedPacket.processId, ((int)((P5 *)this)->receivedPacket.msg.id), ((int)((P5 *)this)->receivedPacket.msg.state), ((int)((P5 *)this)->receivedPacket.msg.members), ((int)((P5 *)this)->receivedPacket.msg.time))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 7 - ./assignment4.pml:265 - [P1P0?receivedPacket.processId,receivedPacket.msg.id,receivedPacket.msg.state,receivedPacket.msg.members,receivedPacket.msg.time] (0:0:5 - 1)
		reached[5][7] = 1;
		if (boq != now.P1P0) continue;
		if (q_len(now.P1P0) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P5 *)this)->receivedPacket.processId;
		(trpt+1)->bup.ovals[1] = ((int)((P5 *)this)->receivedPacket.msg.id);
		(trpt+1)->bup.ovals[2] = ((int)((P5 *)this)->receivedPacket.msg.state);
		(trpt+1)->bup.ovals[3] = ((int)((P5 *)this)->receivedPacket.msg.members);
		(trpt+1)->bup.ovals[4] = ((int)((P5 *)this)->receivedPacket.msg.time);
		;
		((P5 *)this)->receivedPacket.processId = qrecv(now.P1P0, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.processId", ((P5 *)this)->receivedPacket.processId);
#endif
		;
		((P5 *)this)->receivedPacket.msg.id = qrecv(now.P1P0, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.id", ((int)((P5 *)this)->receivedPacket.msg.id));
#endif
		;
		((P5 *)this)->receivedPacket.msg.state = qrecv(now.P1P0, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.state", ((int)((P5 *)this)->receivedPacket.msg.state));
#endif
		;
		((P5 *)this)->receivedPacket.msg.members = qrecv(now.P1P0, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.members", ((int)((P5 *)this)->receivedPacket.msg.members));
#endif
		;
		((P5 *)this)->receivedPacket.msg.time = qrecv(now.P1P0, XX-1, 4, 1);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.time", ((int)((P5 *)this)->receivedPacket.msg.time));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.P1P0);
		sprintf(simtmp, "%d", ((P5 *)this)->receivedPacket.processId); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.state)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.members)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.time)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.P1P0))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 35: // STATE 8 - ./assignment4.pml:266 - [(run onPacketReceive(receivedPacket.processId,receivedPacket.msg.id,receivedPacket.msg.state,receivedPacket.msg.members,receivedPacket.msg.time))] (0:0:0 - 1)
		IfNotBlocked
		reached[5][8] = 1;
		if (!(addproc(II, 1, 6, ((P5 *)this)->receivedPacket.processId, ((int)((P5 *)this)->receivedPacket.msg.id), ((int)((P5 *)this)->receivedPacket.msg.state), ((int)((P5 *)this)->receivedPacket.msg.members), ((int)((P5 *)this)->receivedPacket.msg.time))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 9 - ./assignment4.pml:268 - [P1P2?receivedPacket.processId,receivedPacket.msg.id,receivedPacket.msg.state,receivedPacket.msg.members,receivedPacket.msg.time] (0:0:5 - 1)
		reached[5][9] = 1;
		if (boq != now.P1P2) continue;
		if (q_len(now.P1P2) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P5 *)this)->receivedPacket.processId;
		(trpt+1)->bup.ovals[1] = ((int)((P5 *)this)->receivedPacket.msg.id);
		(trpt+1)->bup.ovals[2] = ((int)((P5 *)this)->receivedPacket.msg.state);
		(trpt+1)->bup.ovals[3] = ((int)((P5 *)this)->receivedPacket.msg.members);
		(trpt+1)->bup.ovals[4] = ((int)((P5 *)this)->receivedPacket.msg.time);
		;
		((P5 *)this)->receivedPacket.processId = qrecv(now.P1P2, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.processId", ((P5 *)this)->receivedPacket.processId);
#endif
		;
		((P5 *)this)->receivedPacket.msg.id = qrecv(now.P1P2, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.id", ((int)((P5 *)this)->receivedPacket.msg.id));
#endif
		;
		((P5 *)this)->receivedPacket.msg.state = qrecv(now.P1P2, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.state", ((int)((P5 *)this)->receivedPacket.msg.state));
#endif
		;
		((P5 *)this)->receivedPacket.msg.members = qrecv(now.P1P2, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.members", ((int)((P5 *)this)->receivedPacket.msg.members));
#endif
		;
		((P5 *)this)->receivedPacket.msg.time = qrecv(now.P1P2, XX-1, 4, 1);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.time", ((int)((P5 *)this)->receivedPacket.msg.time));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.P1P2);
		sprintf(simtmp, "%d", ((P5 *)this)->receivedPacket.processId); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.state)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.members)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.time)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.P1P2))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 37: // STATE 10 - ./assignment4.pml:269 - [(run onPacketReceive(receivedPacket.processId,receivedPacket.msg.id,receivedPacket.msg.state,receivedPacket.msg.members,receivedPacket.msg.time))] (0:0:0 - 1)
		IfNotBlocked
		reached[5][10] = 1;
		if (!(addproc(II, 1, 6, ((P5 *)this)->receivedPacket.processId, ((int)((P5 *)this)->receivedPacket.msg.id), ((int)((P5 *)this)->receivedPacket.msg.state), ((int)((P5 *)this)->receivedPacket.msg.members), ((int)((P5 *)this)->receivedPacket.msg.time))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 11 - ./assignment4.pml:271 - [P1P3?receivedPacket.processId,receivedPacket.msg.id,receivedPacket.msg.state,receivedPacket.msg.members,receivedPacket.msg.time] (0:0:5 - 1)
		reached[5][11] = 1;
		if (boq != now.P1P3) continue;
		if (q_len(now.P1P3) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P5 *)this)->receivedPacket.processId;
		(trpt+1)->bup.ovals[1] = ((int)((P5 *)this)->receivedPacket.msg.id);
		(trpt+1)->bup.ovals[2] = ((int)((P5 *)this)->receivedPacket.msg.state);
		(trpt+1)->bup.ovals[3] = ((int)((P5 *)this)->receivedPacket.msg.members);
		(trpt+1)->bup.ovals[4] = ((int)((P5 *)this)->receivedPacket.msg.time);
		;
		((P5 *)this)->receivedPacket.processId = qrecv(now.P1P3, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.processId", ((P5 *)this)->receivedPacket.processId);
#endif
		;
		((P5 *)this)->receivedPacket.msg.id = qrecv(now.P1P3, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.id", ((int)((P5 *)this)->receivedPacket.msg.id));
#endif
		;
		((P5 *)this)->receivedPacket.msg.state = qrecv(now.P1P3, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.state", ((int)((P5 *)this)->receivedPacket.msg.state));
#endif
		;
		((P5 *)this)->receivedPacket.msg.members = qrecv(now.P1P3, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.members", ((int)((P5 *)this)->receivedPacket.msg.members));
#endif
		;
		((P5 *)this)->receivedPacket.msg.time = qrecv(now.P1P3, XX-1, 4, 1);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.time", ((int)((P5 *)this)->receivedPacket.msg.time));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.P1P3);
		sprintf(simtmp, "%d", ((P5 *)this)->receivedPacket.processId); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.state)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.members)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.time)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.P1P3))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 39: // STATE 12 - ./assignment4.pml:272 - [(run onPacketReceive(receivedPacket.processId,receivedPacket.msg.id,receivedPacket.msg.state,receivedPacket.msg.members,receivedPacket.msg.time))] (0:0:0 - 1)
		IfNotBlocked
		reached[5][12] = 1;
		if (!(addproc(II, 1, 6, ((P5 *)this)->receivedPacket.processId, ((int)((P5 *)this)->receivedPacket.msg.id), ((int)((P5 *)this)->receivedPacket.msg.state), ((int)((P5 *)this)->receivedPacket.msg.members), ((int)((P5 *)this)->receivedPacket.msg.time))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 13 - ./assignment4.pml:274 - [P2P0?receivedPacket.processId,receivedPacket.msg.id,receivedPacket.msg.state,receivedPacket.msg.members,receivedPacket.msg.time] (0:0:5 - 1)
		reached[5][13] = 1;
		if (boq != now.P2P0) continue;
		if (q_len(now.P2P0) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P5 *)this)->receivedPacket.processId;
		(trpt+1)->bup.ovals[1] = ((int)((P5 *)this)->receivedPacket.msg.id);
		(trpt+1)->bup.ovals[2] = ((int)((P5 *)this)->receivedPacket.msg.state);
		(trpt+1)->bup.ovals[3] = ((int)((P5 *)this)->receivedPacket.msg.members);
		(trpt+1)->bup.ovals[4] = ((int)((P5 *)this)->receivedPacket.msg.time);
		;
		((P5 *)this)->receivedPacket.processId = qrecv(now.P2P0, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.processId", ((P5 *)this)->receivedPacket.processId);
#endif
		;
		((P5 *)this)->receivedPacket.msg.id = qrecv(now.P2P0, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.id", ((int)((P5 *)this)->receivedPacket.msg.id));
#endif
		;
		((P5 *)this)->receivedPacket.msg.state = qrecv(now.P2P0, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.state", ((int)((P5 *)this)->receivedPacket.msg.state));
#endif
		;
		((P5 *)this)->receivedPacket.msg.members = qrecv(now.P2P0, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.members", ((int)((P5 *)this)->receivedPacket.msg.members));
#endif
		;
		((P5 *)this)->receivedPacket.msg.time = qrecv(now.P2P0, XX-1, 4, 1);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.time", ((int)((P5 *)this)->receivedPacket.msg.time));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.P2P0);
		sprintf(simtmp, "%d", ((P5 *)this)->receivedPacket.processId); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.state)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.members)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.time)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.P2P0))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 41: // STATE 14 - ./assignment4.pml:275 - [(run onPacketReceive(receivedPacket.processId,receivedPacket.msg.id,receivedPacket.msg.state,receivedPacket.msg.members,receivedPacket.msg.time))] (0:0:0 - 1)
		IfNotBlocked
		reached[5][14] = 1;
		if (!(addproc(II, 1, 6, ((P5 *)this)->receivedPacket.processId, ((int)((P5 *)this)->receivedPacket.msg.id), ((int)((P5 *)this)->receivedPacket.msg.state), ((int)((P5 *)this)->receivedPacket.msg.members), ((int)((P5 *)this)->receivedPacket.msg.time))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 15 - ./assignment4.pml:277 - [P2P1?receivedPacket.processId,receivedPacket.msg.id,receivedPacket.msg.state,receivedPacket.msg.members,receivedPacket.msg.time] (0:0:5 - 1)
		reached[5][15] = 1;
		if (boq != now.P2P1) continue;
		if (q_len(now.P2P1) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P5 *)this)->receivedPacket.processId;
		(trpt+1)->bup.ovals[1] = ((int)((P5 *)this)->receivedPacket.msg.id);
		(trpt+1)->bup.ovals[2] = ((int)((P5 *)this)->receivedPacket.msg.state);
		(trpt+1)->bup.ovals[3] = ((int)((P5 *)this)->receivedPacket.msg.members);
		(trpt+1)->bup.ovals[4] = ((int)((P5 *)this)->receivedPacket.msg.time);
		;
		((P5 *)this)->receivedPacket.processId = qrecv(now.P2P1, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.processId", ((P5 *)this)->receivedPacket.processId);
#endif
		;
		((P5 *)this)->receivedPacket.msg.id = qrecv(now.P2P1, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.id", ((int)((P5 *)this)->receivedPacket.msg.id));
#endif
		;
		((P5 *)this)->receivedPacket.msg.state = qrecv(now.P2P1, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.state", ((int)((P5 *)this)->receivedPacket.msg.state));
#endif
		;
		((P5 *)this)->receivedPacket.msg.members = qrecv(now.P2P1, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.members", ((int)((P5 *)this)->receivedPacket.msg.members));
#endif
		;
		((P5 *)this)->receivedPacket.msg.time = qrecv(now.P2P1, XX-1, 4, 1);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.time", ((int)((P5 *)this)->receivedPacket.msg.time));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.P2P1);
		sprintf(simtmp, "%d", ((P5 *)this)->receivedPacket.processId); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.state)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.members)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.time)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.P2P1))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 43: // STATE 16 - ./assignment4.pml:278 - [(run onPacketReceive(receivedPacket.processId,receivedPacket.msg.id,receivedPacket.msg.state,receivedPacket.msg.members,receivedPacket.msg.time))] (0:0:0 - 1)
		IfNotBlocked
		reached[5][16] = 1;
		if (!(addproc(II, 1, 6, ((P5 *)this)->receivedPacket.processId, ((int)((P5 *)this)->receivedPacket.msg.id), ((int)((P5 *)this)->receivedPacket.msg.state), ((int)((P5 *)this)->receivedPacket.msg.members), ((int)((P5 *)this)->receivedPacket.msg.time))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 17 - ./assignment4.pml:280 - [P2P3?receivedPacket.processId,receivedPacket.msg.id,receivedPacket.msg.state,receivedPacket.msg.members,receivedPacket.msg.time] (0:0:5 - 1)
		reached[5][17] = 1;
		if (boq != now.P2P3) continue;
		if (q_len(now.P2P3) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P5 *)this)->receivedPacket.processId;
		(trpt+1)->bup.ovals[1] = ((int)((P5 *)this)->receivedPacket.msg.id);
		(trpt+1)->bup.ovals[2] = ((int)((P5 *)this)->receivedPacket.msg.state);
		(trpt+1)->bup.ovals[3] = ((int)((P5 *)this)->receivedPacket.msg.members);
		(trpt+1)->bup.ovals[4] = ((int)((P5 *)this)->receivedPacket.msg.time);
		;
		((P5 *)this)->receivedPacket.processId = qrecv(now.P2P3, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.processId", ((P5 *)this)->receivedPacket.processId);
#endif
		;
		((P5 *)this)->receivedPacket.msg.id = qrecv(now.P2P3, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.id", ((int)((P5 *)this)->receivedPacket.msg.id));
#endif
		;
		((P5 *)this)->receivedPacket.msg.state = qrecv(now.P2P3, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.state", ((int)((P5 *)this)->receivedPacket.msg.state));
#endif
		;
		((P5 *)this)->receivedPacket.msg.members = qrecv(now.P2P3, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.members", ((int)((P5 *)this)->receivedPacket.msg.members));
#endif
		;
		((P5 *)this)->receivedPacket.msg.time = qrecv(now.P2P3, XX-1, 4, 1);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.time", ((int)((P5 *)this)->receivedPacket.msg.time));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.P2P3);
		sprintf(simtmp, "%d", ((P5 *)this)->receivedPacket.processId); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.state)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.members)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.time)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.P2P3))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 45: // STATE 18 - ./assignment4.pml:281 - [(run onPacketReceive(receivedPacket.processId,receivedPacket.msg.id,receivedPacket.msg.state,receivedPacket.msg.members,receivedPacket.msg.time))] (0:0:0 - 1)
		IfNotBlocked
		reached[5][18] = 1;
		if (!(addproc(II, 1, 6, ((P5 *)this)->receivedPacket.processId, ((int)((P5 *)this)->receivedPacket.msg.id), ((int)((P5 *)this)->receivedPacket.msg.state), ((int)((P5 *)this)->receivedPacket.msg.members), ((int)((P5 *)this)->receivedPacket.msg.time))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 19 - ./assignment4.pml:283 - [P3P0?receivedPacket.processId,receivedPacket.msg.id,receivedPacket.msg.state,receivedPacket.msg.members,receivedPacket.msg.time] (0:0:5 - 1)
		reached[5][19] = 1;
		if (boq != now.P3P0) continue;
		if (q_len(now.P3P0) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P5 *)this)->receivedPacket.processId;
		(trpt+1)->bup.ovals[1] = ((int)((P5 *)this)->receivedPacket.msg.id);
		(trpt+1)->bup.ovals[2] = ((int)((P5 *)this)->receivedPacket.msg.state);
		(trpt+1)->bup.ovals[3] = ((int)((P5 *)this)->receivedPacket.msg.members);
		(trpt+1)->bup.ovals[4] = ((int)((P5 *)this)->receivedPacket.msg.time);
		;
		((P5 *)this)->receivedPacket.processId = qrecv(now.P3P0, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.processId", ((P5 *)this)->receivedPacket.processId);
#endif
		;
		((P5 *)this)->receivedPacket.msg.id = qrecv(now.P3P0, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.id", ((int)((P5 *)this)->receivedPacket.msg.id));
#endif
		;
		((P5 *)this)->receivedPacket.msg.state = qrecv(now.P3P0, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.state", ((int)((P5 *)this)->receivedPacket.msg.state));
#endif
		;
		((P5 *)this)->receivedPacket.msg.members = qrecv(now.P3P0, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.members", ((int)((P5 *)this)->receivedPacket.msg.members));
#endif
		;
		((P5 *)this)->receivedPacket.msg.time = qrecv(now.P3P0, XX-1, 4, 1);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.time", ((int)((P5 *)this)->receivedPacket.msg.time));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.P3P0);
		sprintf(simtmp, "%d", ((P5 *)this)->receivedPacket.processId); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.state)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.members)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.time)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.P3P0))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 47: // STATE 20 - ./assignment4.pml:284 - [(run onPacketReceive(receivedPacket.processId,receivedPacket.msg.id,receivedPacket.msg.state,receivedPacket.msg.members,receivedPacket.msg.time))] (0:0:0 - 1)
		IfNotBlocked
		reached[5][20] = 1;
		if (!(addproc(II, 1, 6, ((P5 *)this)->receivedPacket.processId, ((int)((P5 *)this)->receivedPacket.msg.id), ((int)((P5 *)this)->receivedPacket.msg.state), ((int)((P5 *)this)->receivedPacket.msg.members), ((int)((P5 *)this)->receivedPacket.msg.time))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 21 - ./assignment4.pml:286 - [P3P1?receivedPacket.processId,receivedPacket.msg.id,receivedPacket.msg.state,receivedPacket.msg.members,receivedPacket.msg.time] (0:0:5 - 1)
		reached[5][21] = 1;
		if (boq != now.P3P1) continue;
		if (q_len(now.P3P1) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P5 *)this)->receivedPacket.processId;
		(trpt+1)->bup.ovals[1] = ((int)((P5 *)this)->receivedPacket.msg.id);
		(trpt+1)->bup.ovals[2] = ((int)((P5 *)this)->receivedPacket.msg.state);
		(trpt+1)->bup.ovals[3] = ((int)((P5 *)this)->receivedPacket.msg.members);
		(trpt+1)->bup.ovals[4] = ((int)((P5 *)this)->receivedPacket.msg.time);
		;
		((P5 *)this)->receivedPacket.processId = qrecv(now.P3P1, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.processId", ((P5 *)this)->receivedPacket.processId);
#endif
		;
		((P5 *)this)->receivedPacket.msg.id = qrecv(now.P3P1, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.id", ((int)((P5 *)this)->receivedPacket.msg.id));
#endif
		;
		((P5 *)this)->receivedPacket.msg.state = qrecv(now.P3P1, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.state", ((int)((P5 *)this)->receivedPacket.msg.state));
#endif
		;
		((P5 *)this)->receivedPacket.msg.members = qrecv(now.P3P1, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.members", ((int)((P5 *)this)->receivedPacket.msg.members));
#endif
		;
		((P5 *)this)->receivedPacket.msg.time = qrecv(now.P3P1, XX-1, 4, 1);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.time", ((int)((P5 *)this)->receivedPacket.msg.time));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.P3P1);
		sprintf(simtmp, "%d", ((P5 *)this)->receivedPacket.processId); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.state)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.members)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.time)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.P3P1))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 49: // STATE 22 - ./assignment4.pml:287 - [(run onPacketReceive(receivedPacket.processId,receivedPacket.msg.id,receivedPacket.msg.state,receivedPacket.msg.members,receivedPacket.msg.time))] (0:0:0 - 1)
		IfNotBlocked
		reached[5][22] = 1;
		if (!(addproc(II, 1, 6, ((P5 *)this)->receivedPacket.processId, ((int)((P5 *)this)->receivedPacket.msg.id), ((int)((P5 *)this)->receivedPacket.msg.state), ((int)((P5 *)this)->receivedPacket.msg.members), ((int)((P5 *)this)->receivedPacket.msg.time))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 23 - ./assignment4.pml:289 - [P3P2?receivedPacket.processId,receivedPacket.msg.id,receivedPacket.msg.state,receivedPacket.msg.members,receivedPacket.msg.time] (0:0:5 - 1)
		reached[5][23] = 1;
		if (boq != now.P3P2) continue;
		if (q_len(now.P3P2) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P5 *)this)->receivedPacket.processId;
		(trpt+1)->bup.ovals[1] = ((int)((P5 *)this)->receivedPacket.msg.id);
		(trpt+1)->bup.ovals[2] = ((int)((P5 *)this)->receivedPacket.msg.state);
		(trpt+1)->bup.ovals[3] = ((int)((P5 *)this)->receivedPacket.msg.members);
		(trpt+1)->bup.ovals[4] = ((int)((P5 *)this)->receivedPacket.msg.time);
		;
		((P5 *)this)->receivedPacket.processId = qrecv(now.P3P2, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.processId", ((P5 *)this)->receivedPacket.processId);
#endif
		;
		((P5 *)this)->receivedPacket.msg.id = qrecv(now.P3P2, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.id", ((int)((P5 *)this)->receivedPacket.msg.id));
#endif
		;
		((P5 *)this)->receivedPacket.msg.state = qrecv(now.P3P2, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.state", ((int)((P5 *)this)->receivedPacket.msg.state));
#endif
		;
		((P5 *)this)->receivedPacket.msg.members = qrecv(now.P3P2, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.members", ((int)((P5 *)this)->receivedPacket.msg.members));
#endif
		;
		((P5 *)this)->receivedPacket.msg.time = qrecv(now.P3P2, XX-1, 4, 1);
#ifdef VAR_RANGES
		logval("receive:receivedPacket.msg.time", ((int)((P5 *)this)->receivedPacket.msg.time));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.P3P2);
		sprintf(simtmp, "%d", ((P5 *)this)->receivedPacket.processId); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.state)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.members)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P5 *)this)->receivedPacket.msg.time)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.P3P2))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 51: // STATE 24 - ./assignment4.pml:290 - [(run onPacketReceive(receivedPacket.processId,receivedPacket.msg.id,receivedPacket.msg.state,receivedPacket.msg.members,receivedPacket.msg.time))] (0:0:0 - 1)
		IfNotBlocked
		reached[5][24] = 1;
		if (!(addproc(II, 1, 6, ((P5 *)this)->receivedPacket.processId, ((int)((P5 *)this)->receivedPacket.msg.id), ((int)((P5 *)this)->receivedPacket.msg.state), ((int)((P5 *)this)->receivedPacket.msg.members), ((int)((P5 *)this)->receivedPacket.msg.time))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 30 - ./assignment4.pml:293 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[5][30] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC failureDetector */
	case 53: // STATE 1 - ./assignment4.pml:227 - [m = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[4][1] = 1;
		(trpt+1)->bup.oval = ((P4 *)this)->m;
		((P4 *)this)->m = 0;
#ifdef VAR_RANGES
		logval("failureDetector:m", ((P4 *)this)->m);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 2 - ./assignment4.pml:227 - [((m<=3))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][2] = 1;
		if (!((((P4 *)this)->m<=3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 3 - ./assignment4.pml:229 - [((controlPacket[m].msg.members>=m))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][3] = 1;
		if (!((((int)now.controlPacket[ Index(((P4 *)this)->m, 4) ].msg.members)>=((P4 *)this)->m)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 4 - ./assignment4.pml:231 - [((state==commonKnowledgeState[m]))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][4] = 1;
		if (!((((int)((P4 *)this)->state)==((int)now.commonKnowledgeState[ Index(((P4 *)this)->m, 4) ]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 5 - ./assignment4.pml:232 - [missingMessages[m] = (missingMessages[m]+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][5] = 1;
		(trpt+1)->bup.oval = now.missingMessages[ Index(((P4 *)this)->m, 4) ];
		now.missingMessages[ Index(((P4 *)this)->m, 4) ] = (now.missingMessages[ Index(((P4 *)this)->m, 4) ]+1);
#ifdef VAR_RANGES
		logval("missingMessages[failureDetector:m]", now.missingMessages[ Index(((P4 *)this)->m, 4) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 8 - ./assignment4.pml:236 - [((missingMessages[m]>4))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][8] = 1;
		if (!((now.missingMessages[ Index(((P4 *)this)->m, 4) ]>4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 9 - ./assignment4.pml:238 - [controlPacket[m].msg.members = (controlPacket[m].msg.members&~((1<<m)))] (0:0:1 - 1)
		IfNotBlocked
		reached[4][9] = 1;
		(trpt+1)->bup.oval = ((int)now.controlPacket[ Index(((P4 *)this)->m, 4) ].msg.members);
		now.controlPacket[ Index(((P4 *)this)->m, 4) ].msg.members = (((int)now.controlPacket[ Index(((P4 *)this)->m, 4) ].msg.members)& ~((1<<((P4 *)this)->m)));
#ifdef VAR_RANGES
		logval("controlPacket[failureDetector:m].msg.members", ((int)now.controlPacket[ Index(((P4 *)this)->m, 4) ].msg.members));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 10 - ./assignment4.pml:239 - [missingMessages[m] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[4][10] = 1;
		(trpt+1)->bup.oval = now.missingMessages[ Index(((P4 *)this)->m, 4) ];
		now.missingMessages[ Index(((P4 *)this)->m, 4) ] = 0;
#ifdef VAR_RANGES
		logval("missingMessages[failureDetector:m]", now.missingMessages[ Index(((P4 *)this)->m, 4) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 11 - ./assignment4.pml:240 - [commonKnowledgeState[m] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[4][11] = 1;
		(trpt+1)->bup.oval = ((int)now.commonKnowledgeState[ Index(((P4 *)this)->m, 4) ]);
		now.commonKnowledgeState[ Index(((P4 *)this)->m, 4) ] = 0;
#ifdef VAR_RANGES
		logval("commonKnowledgeState[failureDetector:m]", ((int)now.commonKnowledgeState[ Index(((P4 *)this)->m, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 16 - ./assignment4.pml:227 - [m = (m+1)] (0:19:1 - 3)
		IfNotBlocked
		reached[4][16] = 1;
		(trpt+1)->bup.oval = ((P4 *)this)->m;
		((P4 *)this)->m = (((P4 *)this)->m+1);
#ifdef VAR_RANGES
		logval("failureDetector:m", ((P4 *)this)->m);
#endif
		;
		/* merge: .(goto)(0, 20, 19) */
		reached[4][20] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 63: // STATE 22 - ./assignment4.pml:244 - [-end-] (0:0:0 - 3)
		IfNotBlocked
		reached[4][22] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC esbTimeSlot */
	case 64: // STATE 1 - ./assignment4.pml:190 - [((tranmission_state==1))] (22:0:2 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		if (!((((int)now.tranmission_state)==1)))
			continue;
		/* merge: controlPacket[processID].msg.time = currentSlot(22, 2, 22) */
		reached[3][2] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.controlPacket[ Index(((int)((P3 *)this)->processID), 4) ].msg.time);
		now.controlPacket[ Index(((P3 *)this)->processID, 4) ].msg.time = ((int)now.currentSlot);
#ifdef VAR_RANGES
		logval("controlPacket[esbTimeSlot:processID].msg.time", ((int)now.controlPacket[ Index(((int)((P3 *)this)->processID), 4) ].msg.time));
#endif
		;
		/* merge: controlPacket[processID].msg.state = tioa_tdma_state(22, 3, 22) */
		reached[3][3] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.controlPacket[ Index(((int)((P3 *)this)->processID), 4) ].msg.state);
		now.controlPacket[ Index(((P3 *)this)->processID, 4) ].msg.state = ((int)now.tioa_tdma_state);
#ifdef VAR_RANGES
		logval("controlPacket[esbTimeSlot:processID].msg.state", ((int)now.controlPacket[ Index(((int)((P3 *)this)->processID), 4) ].msg.state));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 65: // STATE 4 - ./assignment4.pml:194 - [((tioa_tdma_state==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][4] = 1;
		if (!((((int)now.tioa_tdma_state)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 5 - ./assignment4.pml:196 - [((tranmission_state==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][5] = 1;
		if (!((((int)now.tranmission_state)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 6 - ./assignment4.pml:197 - [(run send(processID))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][6] = 1;
		if (!(addproc(II, 1, 2, ((int)((P3 *)this)->processID), 0, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 68: // STATE 7 - ./assignment4.pml:199 - [((controlPacket[processID].msg.members==4))] (28:0:3 - 1)
		IfNotBlocked
		reached[3][7] = 1;
		if (!((((int)now.controlPacket[ Index(((int)((P3 *)this)->processID), 4) ].msg.members)==4)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: processID */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P3 *)this)->processID;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)this)->processID = 0;
		/* merge: tioa_tdma_state = 1(28, 8, 28) */
		reached[3][8] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.tioa_tdma_state);
		now.tioa_tdma_state = 1;
#ifdef VAR_RANGES
		logval("tioa_tdma_state", ((int)now.tioa_tdma_state));
#endif
		;
		/* merge: .(goto)(28, 12, 28) */
		reached[3][12] = 1;
		;
		/* merge: .(goto)(28, 14, 28) */
		reached[3][14] = 1;
		;
		/* merge: .(goto)(28, 23, 28) */
		reached[3][23] = 1;
		;
		/* merge: .(goto)(28, 25, 28) */
		reached[3][25] = 1;
		;
		/* merge: currentSlot = (currentSlot+1)(28, 26, 28) */
		reached[3][26] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.currentSlot);
		now.currentSlot = (((int)now.currentSlot)+1);
#ifdef VAR_RANGES
		logval("currentSlot", ((int)now.currentSlot));
#endif
		;
		_m = 3; goto P999; /* 6 */
	case 69: // STATE 10 - ./assignment4.pml:202 - [(run failureDetector(tioa_tdma_state))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][10] = 1;
		if (!(addproc(II, 1, 4, ((int)now.tioa_tdma_state), 0, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 15 - ./assignment4.pml:206 - [((tioa_tdma_state==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][15] = 1;
		if (!((((int)now.tioa_tdma_state)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 16 - ./assignment4.pml:208 - [(((currentSlot%4)==processID))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][16] = 1;
		if (!(((((int)now.currentSlot)%4)==((int)((P3 *)this)->processID))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 17 - ./assignment4.pml:209 - [(run send(processID))] (0:0:1 - 1)
		IfNotBlocked
		reached[3][17] = 1;
		if (!(addproc(II, 1, 2, ((int)((P3 *)this)->processID), 0, 0, 0, 0)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: processID */  (trpt+1)->bup.oval = ((P3 *)this)->processID;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)this)->processID = 0;
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 19 - ./assignment4.pml:210 - [(run failureDetector(tioa_tdma_state))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][19] = 1;
		if (!(addproc(II, 1, 4, ((int)now.tioa_tdma_state), 0, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 74: // STATE 25 - ./assignment4.pml:214 - [.(goto)] (0:28:1 - 8)
		IfNotBlocked
		reached[3][25] = 1;
		;
		/* merge: currentSlot = (currentSlot+1)(28, 26, 28) */
		reached[3][26] = 1;
		(trpt+1)->bup.oval = ((int)now.currentSlot);
		now.currentSlot = (((int)now.currentSlot)+1);
#ifdef VAR_RANGES
		logval("currentSlot", ((int)now.currentSlot));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 75: // STATE 28 - ./assignment4.pml:216 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][28] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC send */
	case 76: // STATE 1 - ./assignment4.pml:97 - [sendPacket.msg.id = senderID] (0:0:1 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)this)->sendPacket.msg.id);
		((P2 *)this)->sendPacket.msg.id = ((int)((P2 *)this)->senderID);
#ifdef VAR_RANGES
		logval("send:sendPacket.msg.id", ((int)((P2 *)this)->sendPacket.msg.id));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 2 - ./assignment4.pml:98 - [sendPacket.msg.state = tioa_tdma_state] (0:0:1 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)this)->sendPacket.msg.state);
		((P2 *)this)->sendPacket.msg.state = ((int)now.tioa_tdma_state);
#ifdef VAR_RANGES
		logval("send:sendPacket.msg.state", ((int)((P2 *)this)->sendPacket.msg.state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 3 - ./assignment4.pml:99 - [sendPacket.msg.members = senderID] (0:0:1 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)this)->sendPacket.msg.members);
		((P2 *)this)->sendPacket.msg.members = ((int)((P2 *)this)->senderID);
#ifdef VAR_RANGES
		logval("send:sendPacket.msg.members", ((int)((P2 *)this)->sendPacket.msg.members));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 4 - ./assignment4.pml:105 - [(((senderID==0)&&((currentSlot%4)==senderID)))] (7:0:2 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		if (!(((((int)((P2 *)this)->senderID)==0)&&((((int)now.currentSlot)%4)==((int)((P2 *)this)->senderID)))))
			continue;
		/* merge: sendPacket.msg.time = currentSlot(7, 5, 7) */
		reached[2][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P2 *)this)->sendPacket.msg.time);
		((P2 *)this)->sendPacket.msg.time = ((int)now.currentSlot);
#ifdef VAR_RANGES
		logval("send:sendPacket.msg.time", ((int)((P2 *)this)->sendPacket.msg.time));
#endif
		;
		/* merge: sendPacket.processId = 1(7, 6, 7) */
		reached[2][6] = 1;
		(trpt+1)->bup.ovals[1] = ((P2 *)this)->sendPacket.processId;
		((P2 *)this)->sendPacket.processId = 1;
#ifdef VAR_RANGES
		logval("send:sendPacket.processId", ((P2 *)this)->sendPacket.processId);
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 80: // STATE 7 - ./assignment4.pml:110 - [P0P1!sendPacket.processId,sendPacket.msg.id,sendPacket.msg.state,sendPacket.msg.members,sendPacket.msg.time] (0:0:0 - 1)
		IfNotBlocked
		reached[2][7] = 1;
		if (q_len(now.P0P1))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.P0P1);
		sprintf(simtmp, "%d", ((P2 *)this)->sendPacket.processId); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.state)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.members)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.time)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.P0P1, 0, ((P2 *)this)->sendPacket.processId, ((int)((P2 *)this)->sendPacket.msg.id), ((int)((P2 *)this)->sendPacket.msg.state), ((int)((P2 *)this)->sendPacket.msg.members), ((int)((P2 *)this)->sendPacket.msg.time), 5);
		{ boq = now.P0P1; };
		_m = 2; goto P999; /* 0 */
	case 81: // STATE 8 - ./assignment4.pml:113 - [sendPacket.processId = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[2][8] = 1;
		(trpt+1)->bup.oval = ((P2 *)this)->sendPacket.processId;
		((P2 *)this)->sendPacket.processId = 2;
#ifdef VAR_RANGES
		logval("send:sendPacket.processId", ((P2 *)this)->sendPacket.processId);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 9 - ./assignment4.pml:114 - [P0P2!sendPacket.processId,sendPacket.msg.id,sendPacket.msg.state,sendPacket.msg.members,sendPacket.msg.time] (0:0:0 - 1)
		IfNotBlocked
		reached[2][9] = 1;
		if (q_len(now.P0P2))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.P0P2);
		sprintf(simtmp, "%d", ((P2 *)this)->sendPacket.processId); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.state)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.members)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.time)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.P0P2, 0, ((P2 *)this)->sendPacket.processId, ((int)((P2 *)this)->sendPacket.msg.id), ((int)((P2 *)this)->sendPacket.msg.state), ((int)((P2 *)this)->sendPacket.msg.members), ((int)((P2 *)this)->sendPacket.msg.time), 5);
		{ boq = now.P0P2; };
		_m = 2; goto P999; /* 0 */
	case 83: // STATE 10 - ./assignment4.pml:115 - [printf('Sending packet = %d',senderID)] (0:12:1 - 1)
		IfNotBlocked
		reached[2][10] = 1;
		Printf("Sending packet = %d", ((int)((P2 *)this)->senderID));
		/* merge: sendPacket.processId = 3(12, 11, 12) */
		reached[2][11] = 1;
		(trpt+1)->bup.oval = ((P2 *)this)->sendPacket.processId;
		((P2 *)this)->sendPacket.processId = 3;
#ifdef VAR_RANGES
		logval("send:sendPacket.processId", ((P2 *)this)->sendPacket.processId);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 84: // STATE 12 - ./assignment4.pml:119 - [P0P3!sendPacket.processId,sendPacket.msg.id,sendPacket.msg.state,sendPacket.msg.members,sendPacket.msg.time] (0:0:0 - 1)
		IfNotBlocked
		reached[2][12] = 1;
		if (q_len(now.P0P3))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.P0P3);
		sprintf(simtmp, "%d", ((P2 *)this)->sendPacket.processId); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.state)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.members)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.time)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.P0P3, 0, ((P2 *)this)->sendPacket.processId, ((int)((P2 *)this)->sendPacket.msg.id), ((int)((P2 *)this)->sendPacket.msg.state), ((int)((P2 *)this)->sendPacket.msg.members), ((int)((P2 *)this)->sendPacket.msg.time), 5);
		{ boq = now.P0P3; };
		_m = 2; goto P999; /* 0 */
	case 85: // STATE 13 - ./assignment4.pml:120 - [printf('Sending packet = %d',senderID)] (0:47:0 - 1)
		IfNotBlocked
		reached[2][13] = 1;
		Printf("Sending packet = %d", ((int)((P2 *)this)->senderID));
		/* merge: .(goto)(47, 45, 47) */
		reached[2][45] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 86: // STATE 45 - ./assignment4.pml:177 - [.(goto)] (0:47:0 - 4)
		IfNotBlocked
		reached[2][45] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 87: // STATE 14 - ./assignment4.pml:123 - [(((senderID==1)&&((currentSlot%4)==senderID)))] (17:0:2 - 1)
		IfNotBlocked
		reached[2][14] = 1;
		if (!(((((int)((P2 *)this)->senderID)==1)&&((((int)now.currentSlot)%4)==((int)((P2 *)this)->senderID)))))
			continue;
		/* merge: sendPacket.msg.time = currentSlot(17, 15, 17) */
		reached[2][15] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P2 *)this)->sendPacket.msg.time);
		((P2 *)this)->sendPacket.msg.time = ((int)now.currentSlot);
#ifdef VAR_RANGES
		logval("send:sendPacket.msg.time", ((int)((P2 *)this)->sendPacket.msg.time));
#endif
		;
		/* merge: sendPacket.processId = 0(17, 16, 17) */
		reached[2][16] = 1;
		(trpt+1)->bup.ovals[1] = ((P2 *)this)->sendPacket.processId;
		((P2 *)this)->sendPacket.processId = 0;
#ifdef VAR_RANGES
		logval("send:sendPacket.processId", ((P2 *)this)->sendPacket.processId);
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 88: // STATE 17 - ./assignment4.pml:128 - [P1P0!sendPacket.processId,sendPacket.msg.id,sendPacket.msg.state,sendPacket.msg.members,sendPacket.msg.time] (0:0:0 - 1)
		IfNotBlocked
		reached[2][17] = 1;
		if (q_len(now.P1P0))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.P1P0);
		sprintf(simtmp, "%d", ((P2 *)this)->sendPacket.processId); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.state)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.members)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.time)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.P1P0, 0, ((P2 *)this)->sendPacket.processId, ((int)((P2 *)this)->sendPacket.msg.id), ((int)((P2 *)this)->sendPacket.msg.state), ((int)((P2 *)this)->sendPacket.msg.members), ((int)((P2 *)this)->sendPacket.msg.time), 5);
		{ boq = now.P1P0; };
		_m = 2; goto P999; /* 0 */
	case 89: // STATE 18 - ./assignment4.pml:131 - [sendPacket.processId = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[2][18] = 1;
		(trpt+1)->bup.oval = ((P2 *)this)->sendPacket.processId;
		((P2 *)this)->sendPacket.processId = 2;
#ifdef VAR_RANGES
		logval("send:sendPacket.processId", ((P2 *)this)->sendPacket.processId);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 19 - ./assignment4.pml:132 - [P1P2!sendPacket.processId,sendPacket.msg.id,sendPacket.msg.state,sendPacket.msg.members,sendPacket.msg.time] (0:0:0 - 1)
		IfNotBlocked
		reached[2][19] = 1;
		if (q_len(now.P1P2))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.P1P2);
		sprintf(simtmp, "%d", ((P2 *)this)->sendPacket.processId); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.state)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.members)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.time)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.P1P2, 0, ((P2 *)this)->sendPacket.processId, ((int)((P2 *)this)->sendPacket.msg.id), ((int)((P2 *)this)->sendPacket.msg.state), ((int)((P2 *)this)->sendPacket.msg.members), ((int)((P2 *)this)->sendPacket.msg.time), 5);
		{ boq = now.P1P2; };
		_m = 2; goto P999; /* 0 */
	case 91: // STATE 20 - ./assignment4.pml:133 - [printf('Sending packet = %d',senderID)] (0:22:1 - 1)
		IfNotBlocked
		reached[2][20] = 1;
		Printf("Sending packet = %d", ((int)((P2 *)this)->senderID));
		/* merge: sendPacket.processId = 3(22, 21, 22) */
		reached[2][21] = 1;
		(trpt+1)->bup.oval = ((P2 *)this)->sendPacket.processId;
		((P2 *)this)->sendPacket.processId = 3;
#ifdef VAR_RANGES
		logval("send:sendPacket.processId", ((P2 *)this)->sendPacket.processId);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 92: // STATE 22 - ./assignment4.pml:137 - [P1P3!sendPacket.processId,sendPacket.msg.id,sendPacket.msg.state,sendPacket.msg.members,sendPacket.msg.time] (0:0:0 - 1)
		IfNotBlocked
		reached[2][22] = 1;
		if (q_len(now.P1P3))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.P1P3);
		sprintf(simtmp, "%d", ((P2 *)this)->sendPacket.processId); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.state)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.members)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.time)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.P1P3, 0, ((P2 *)this)->sendPacket.processId, ((int)((P2 *)this)->sendPacket.msg.id), ((int)((P2 *)this)->sendPacket.msg.state), ((int)((P2 *)this)->sendPacket.msg.members), ((int)((P2 *)this)->sendPacket.msg.time), 5);
		{ boq = now.P1P3; };
		_m = 2; goto P999; /* 0 */
	case 93: // STATE 23 - ./assignment4.pml:138 - [printf('Sending packet = %d',senderID)] (0:47:0 - 1)
		IfNotBlocked
		reached[2][23] = 1;
		Printf("Sending packet = %d", ((int)((P2 *)this)->senderID));
		/* merge: .(goto)(47, 45, 47) */
		reached[2][45] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 94: // STATE 24 - ./assignment4.pml:141 - [(((senderID==2)&&((currentSlot%4)==2)))] (27:0:2 - 1)
		IfNotBlocked
		reached[2][24] = 1;
		if (!(((((int)((P2 *)this)->senderID)==2)&&((((int)now.currentSlot)%4)==2))))
			continue;
		/* merge: sendPacket.msg.time = currentSlot(27, 25, 27) */
		reached[2][25] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P2 *)this)->sendPacket.msg.time);
		((P2 *)this)->sendPacket.msg.time = ((int)now.currentSlot);
#ifdef VAR_RANGES
		logval("send:sendPacket.msg.time", ((int)((P2 *)this)->sendPacket.msg.time));
#endif
		;
		/* merge: sendPacket.processId = 0(27, 26, 27) */
		reached[2][26] = 1;
		(trpt+1)->bup.ovals[1] = ((P2 *)this)->sendPacket.processId;
		((P2 *)this)->sendPacket.processId = 0;
#ifdef VAR_RANGES
		logval("send:sendPacket.processId", ((P2 *)this)->sendPacket.processId);
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 95: // STATE 27 - ./assignment4.pml:146 - [P2P0!sendPacket.processId,sendPacket.msg.id,sendPacket.msg.state,sendPacket.msg.members,sendPacket.msg.time] (0:0:0 - 1)
		IfNotBlocked
		reached[2][27] = 1;
		if (q_len(now.P2P0))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.P2P0);
		sprintf(simtmp, "%d", ((P2 *)this)->sendPacket.processId); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.state)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.members)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.time)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.P2P0, 0, ((P2 *)this)->sendPacket.processId, ((int)((P2 *)this)->sendPacket.msg.id), ((int)((P2 *)this)->sendPacket.msg.state), ((int)((P2 *)this)->sendPacket.msg.members), ((int)((P2 *)this)->sendPacket.msg.time), 5);
		{ boq = now.P2P0; };
		_m = 2; goto P999; /* 0 */
	case 96: // STATE 28 - ./assignment4.pml:149 - [sendPacket.processId = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][28] = 1;
		(trpt+1)->bup.oval = ((P2 *)this)->sendPacket.processId;
		((P2 *)this)->sendPacket.processId = 1;
#ifdef VAR_RANGES
		logval("send:sendPacket.processId", ((P2 *)this)->sendPacket.processId);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 97: // STATE 29 - ./assignment4.pml:150 - [P2P1!sendPacket.processId,sendPacket.msg.id,sendPacket.msg.state,sendPacket.msg.members,sendPacket.msg.time] (0:0:0 - 1)
		IfNotBlocked
		reached[2][29] = 1;
		if (q_len(now.P2P1))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.P2P1);
		sprintf(simtmp, "%d", ((P2 *)this)->sendPacket.processId); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.state)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.members)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.time)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.P2P1, 0, ((P2 *)this)->sendPacket.processId, ((int)((P2 *)this)->sendPacket.msg.id), ((int)((P2 *)this)->sendPacket.msg.state), ((int)((P2 *)this)->sendPacket.msg.members), ((int)((P2 *)this)->sendPacket.msg.time), 5);
		{ boq = now.P2P1; };
		_m = 2; goto P999; /* 0 */
	case 98: // STATE 30 - ./assignment4.pml:151 - [printf('Sending packet = %d',senderID)] (0:32:1 - 1)
		IfNotBlocked
		reached[2][30] = 1;
		Printf("Sending packet = %d", ((int)((P2 *)this)->senderID));
		/* merge: sendPacket.processId = 3(32, 31, 32) */
		reached[2][31] = 1;
		(trpt+1)->bup.oval = ((P2 *)this)->sendPacket.processId;
		((P2 *)this)->sendPacket.processId = 3;
#ifdef VAR_RANGES
		logval("send:sendPacket.processId", ((P2 *)this)->sendPacket.processId);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 99: // STATE 32 - ./assignment4.pml:155 - [P2P3!sendPacket.processId,sendPacket.msg.id,sendPacket.msg.state,sendPacket.msg.members,sendPacket.msg.time] (0:0:0 - 1)
		IfNotBlocked
		reached[2][32] = 1;
		if (q_len(now.P2P3))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.P2P3);
		sprintf(simtmp, "%d", ((P2 *)this)->sendPacket.processId); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.state)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.members)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.time)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.P2P3, 0, ((P2 *)this)->sendPacket.processId, ((int)((P2 *)this)->sendPacket.msg.id), ((int)((P2 *)this)->sendPacket.msg.state), ((int)((P2 *)this)->sendPacket.msg.members), ((int)((P2 *)this)->sendPacket.msg.time), 5);
		{ boq = now.P2P3; };
		_m = 2; goto P999; /* 0 */
	case 100: // STATE 33 - ./assignment4.pml:156 - [printf('Sending packet = %d',senderID)] (0:47:0 - 1)
		IfNotBlocked
		reached[2][33] = 1;
		Printf("Sending packet = %d", ((int)((P2 *)this)->senderID));
		/* merge: .(goto)(47, 45, 47) */
		reached[2][45] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 101: // STATE 34 - ./assignment4.pml:159 - [(((senderID==3)&&((currentSlot%4)==3)))] (37:0:2 - 1)
		IfNotBlocked
		reached[2][34] = 1;
		if (!(((((int)((P2 *)this)->senderID)==3)&&((((int)now.currentSlot)%4)==3))))
			continue;
		/* merge: sendPacket.msg.time = currentSlot(37, 35, 37) */
		reached[2][35] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P2 *)this)->sendPacket.msg.time);
		((P2 *)this)->sendPacket.msg.time = ((int)now.currentSlot);
#ifdef VAR_RANGES
		logval("send:sendPacket.msg.time", ((int)((P2 *)this)->sendPacket.msg.time));
#endif
		;
		/* merge: sendPacket.processId = 0(37, 36, 37) */
		reached[2][36] = 1;
		(trpt+1)->bup.ovals[1] = ((P2 *)this)->sendPacket.processId;
		((P2 *)this)->sendPacket.processId = 0;
#ifdef VAR_RANGES
		logval("send:sendPacket.processId", ((P2 *)this)->sendPacket.processId);
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 102: // STATE 37 - ./assignment4.pml:164 - [P3P0!sendPacket.processId,sendPacket.msg.id,sendPacket.msg.state,sendPacket.msg.members,sendPacket.msg.time] (0:0:0 - 1)
		IfNotBlocked
		reached[2][37] = 1;
		if (q_len(now.P3P0))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.P3P0);
		sprintf(simtmp, "%d", ((P2 *)this)->sendPacket.processId); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.state)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.members)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.time)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.P3P0, 0, ((P2 *)this)->sendPacket.processId, ((int)((P2 *)this)->sendPacket.msg.id), ((int)((P2 *)this)->sendPacket.msg.state), ((int)((P2 *)this)->sendPacket.msg.members), ((int)((P2 *)this)->sendPacket.msg.time), 5);
		{ boq = now.P3P0; };
		_m = 2; goto P999; /* 0 */
	case 103: // STATE 38 - ./assignment4.pml:167 - [sendPacket.processId = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][38] = 1;
		(trpt+1)->bup.oval = ((P2 *)this)->sendPacket.processId;
		((P2 *)this)->sendPacket.processId = 1;
#ifdef VAR_RANGES
		logval("send:sendPacket.processId", ((P2 *)this)->sendPacket.processId);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 104: // STATE 39 - ./assignment4.pml:168 - [P3P1!sendPacket.processId,sendPacket.msg.id,sendPacket.msg.state,sendPacket.msg.members,sendPacket.msg.time] (0:0:0 - 1)
		IfNotBlocked
		reached[2][39] = 1;
		if (q_len(now.P3P1))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.P3P1);
		sprintf(simtmp, "%d", ((P2 *)this)->sendPacket.processId); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.state)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.members)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.time)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.P3P1, 0, ((P2 *)this)->sendPacket.processId, ((int)((P2 *)this)->sendPacket.msg.id), ((int)((P2 *)this)->sendPacket.msg.state), ((int)((P2 *)this)->sendPacket.msg.members), ((int)((P2 *)this)->sendPacket.msg.time), 5);
		{ boq = now.P3P1; };
		_m = 2; goto P999; /* 0 */
	case 105: // STATE 40 - ./assignment4.pml:169 - [printf('Sending packet = %d',senderID)] (0:42:1 - 1)
		IfNotBlocked
		reached[2][40] = 1;
		Printf("Sending packet = %d", ((int)((P2 *)this)->senderID));
		/* merge: sendPacket.processId = 2(42, 41, 42) */
		reached[2][41] = 1;
		(trpt+1)->bup.oval = ((P2 *)this)->sendPacket.processId;
		((P2 *)this)->sendPacket.processId = 2;
#ifdef VAR_RANGES
		logval("send:sendPacket.processId", ((P2 *)this)->sendPacket.processId);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 106: // STATE 42 - ./assignment4.pml:173 - [P3P2!sendPacket.processId,sendPacket.msg.id,sendPacket.msg.state,sendPacket.msg.members,sendPacket.msg.time] (0:0:0 - 1)
		IfNotBlocked
		reached[2][42] = 1;
		if (q_len(now.P3P2))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.P3P2);
		sprintf(simtmp, "%d", ((P2 *)this)->sendPacket.processId); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.state)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.members)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->sendPacket.msg.time)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.P3P2, 0, ((P2 *)this)->sendPacket.processId, ((int)((P2 *)this)->sendPacket.msg.id), ((int)((P2 *)this)->sendPacket.msg.state), ((int)((P2 *)this)->sendPacket.msg.members), ((int)((P2 *)this)->sendPacket.msg.time), 5);
		{ boq = now.P3P2; };
		_m = 2; goto P999; /* 0 */
	case 107: // STATE 43 - ./assignment4.pml:174 - [printf('Sending packet = %d',senderID)] (0:47:0 - 1)
		IfNotBlocked
		reached[2][43] = 1;
		Printf("Sending packet = %d", ((int)((P2 *)this)->senderID));
		/* merge: .(goto)(47, 45, 47) */
		reached[2][45] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 108: // STATE 47 - ./assignment4.pml:178 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][47] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC startTimer */
	case 109: // STATE 1 - ./assignment4.pml:78 - [((timer_tick<7))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!((((int)now.timer_tick)<7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 110: // STATE 2 - ./assignment4.pml:80 - [p = 0] (0:9:2 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->_17_4_p;
		((P1 *)this)->_17_4_p = 0;
#ifdef VAR_RANGES
		logval("startTimer:p", ((P1 *)this)->_17_4_p);
#endif
		;
		/* merge: p = 0(9, 3, 9) */
		reached[1][3] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->_17_4_p;
		((P1 *)this)->_17_4_p = 0;
#ifdef VAR_RANGES
		logval("startTimer:p", ((P1 *)this)->_17_4_p);
#endif
		;
		/* merge: .(goto)(0, 10, 9) */
		reached[1][10] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 111: // STATE 4 - ./assignment4.pml:80 - [((p<=3))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!((((P1 *)this)->_17_4_p<=3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 112: // STATE 5 - ./assignment4.pml:82 - [(run esbTimeSlot(p))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		if (!(addproc(II, 1, 3, ((P1 *)this)->_17_4_p, 0, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 113: // STATE 6 - ./assignment4.pml:80 - [p = (p+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->_17_4_p;
		((P1 *)this)->_17_4_p = (((P1 *)this)->_17_4_p+1);
#ifdef VAR_RANGES
		logval("startTimer:p", ((P1 *)this)->_17_4_p);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 114: // STATE 12 - ./assignment4.pml:84 - [timer_tick = (timer_tick+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		(trpt+1)->bup.oval = ((int)now.timer_tick);
		now.timer_tick = (((int)now.timer_tick)+1);
#ifdef VAR_RANGES
		logval("timer_tick", ((int)now.timer_tick));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 115: // STATE 19 - ./assignment4.pml:88 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][19] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 116: // STATE 1 - ./assignment4.pml:51 - [tioa_tdma_state = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = ((int)now.tioa_tdma_state);
		now.tioa_tdma_state = 0;
#ifdef VAR_RANGES
		logval("tioa_tdma_state", ((int)now.tioa_tdma_state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 117: // STATE 2 - ./assignment4.pml:52 - [tranmission_state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = ((int)now.tranmission_state);
		now.tranmission_state = 1;
#ifdef VAR_RANGES
		logval("tranmission_state", ((int)now.tranmission_state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 118: // STATE 3 - ./assignment4.pml:54 - [m = 0] (0:13:3 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->m;
		((P0 *)this)->m = 0;
#ifdef VAR_RANGES
		logval(":init::m", ((P0 *)this)->m);
#endif
		;
		/* merge: n = 0(13, 4, 13) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)this)->n;
		((P0 *)this)->n = 0;
#ifdef VAR_RANGES
		logval(":init::n", ((P0 *)this)->n);
#endif
		;
		/* merge: n = 0(13, 5, 13) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)this)->n;
		((P0 *)this)->n = 0;
#ifdef VAR_RANGES
		logval(":init::n", ((P0 *)this)->n);
#endif
		;
		/* merge: .(goto)(0, 14, 13) */
		reached[0][14] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 119: // STATE 6 - ./assignment4.pml:56 - [((n<=3))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		if (!((((P0 *)this)->n<=3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 120: // STATE 7 - ./assignment4.pml:57 - [controlPacket[n].msg.id = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.oval = ((int)now.controlPacket[ Index(((P0 *)this)->n, 4) ].msg.id);
		now.controlPacket[ Index(((P0 *)this)->n, 4) ].msg.id = 1;
#ifdef VAR_RANGES
		logval("controlPacket[:init::n].msg.id", ((int)now.controlPacket[ Index(((P0 *)this)->n, 4) ].msg.id));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 121: // STATE 8 - ./assignment4.pml:58 - [controlPacket[n].msg.state = tioa_tdma_state] (0:0:1 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		(trpt+1)->bup.oval = ((int)now.controlPacket[ Index(((P0 *)this)->n, 4) ].msg.state);
		now.controlPacket[ Index(((P0 *)this)->n, 4) ].msg.state = ((int)now.tioa_tdma_state);
#ifdef VAR_RANGES
		logval("controlPacket[:init::n].msg.state", ((int)now.controlPacket[ Index(((P0 *)this)->n, 4) ].msg.state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 122: // STATE 9 - ./assignment4.pml:59 - [controlPacket[n].msg.members = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		(trpt+1)->bup.oval = ((int)now.controlPacket[ Index(((P0 *)this)->n, 4) ].msg.members);
		now.controlPacket[ Index(((P0 *)this)->n, 4) ].msg.members = 1;
#ifdef VAR_RANGES
		logval("controlPacket[:init::n].msg.members", ((int)now.controlPacket[ Index(((P0 *)this)->n, 4) ].msg.members));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 123: // STATE 10 - ./assignment4.pml:56 - [n = (n+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->n;
		((P0 *)this)->n = (((P0 *)this)->n+1);
#ifdef VAR_RANGES
		logval(":init::n", ((P0 *)this)->n);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 124: // STATE 16 - ./assignment4.pml:61 - [m = 0] (0:30:1 - 3)
		IfNotBlocked
		reached[0][16] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->m;
		((P0 *)this)->m = 0;
#ifdef VAR_RANGES
		logval(":init::m", ((P0 *)this)->m);
#endif
		;
		/* merge: .(goto)(0, 31, 30) */
		reached[0][31] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 125: // STATE 17 - ./assignment4.pml:61 - [((m<=3))] (24:0:1 - 1)
		IfNotBlocked
		reached[0][17] = 1;
		if (!((((P0 *)this)->m<=3)))
			continue;
		/* merge: n = 0(0, 18, 24) */
		reached[0][18] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->n;
		((P0 *)this)->n = 0;
#ifdef VAR_RANGES
		logval(":init::n", ((P0 *)this)->n);
#endif
		;
		/* merge: .(goto)(0, 25, 24) */
		reached[0][25] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 126: // STATE 19 - ./assignment4.pml:62 - [((n<=3))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		if (!((((P0 *)this)->n<=3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 127: // STATE 20 - ./assignment4.pml:64 - [ck[m].member[n] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][20] = 1;
		(trpt+1)->bup.oval = ((int)now.ck[ Index(((P0 *)this)->m, 4) ].member[ Index(((P0 *)this)->n, 4) ]);
		now.ck[ Index(((P0 *)this)->m, 4) ].member[ Index(((P0 *)this)->n, 4) ] = 1;
#ifdef VAR_RANGES
		logval("ck[:init::m].member[:init::n]", ((int)now.ck[ Index(((P0 *)this)->m, 4) ].member[ Index(((P0 *)this)->n, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 128: // STATE 21 - ./assignment4.pml:62 - [n = (n+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][21] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->n;
		((P0 *)this)->n = (((P0 *)this)->n+1);
#ifdef VAR_RANGES
		logval(":init::n", ((P0 *)this)->n);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 129: // STATE 27 - ./assignment4.pml:61 - [m = (m+1)] (0:30:1 - 3)
		IfNotBlocked
		reached[0][27] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->m;
		((P0 *)this)->m = (((P0 *)this)->m+1);
#ifdef VAR_RANGES
		logval(":init::m", ((P0 *)this)->m);
#endif
		;
		/* merge: .(goto)(0, 31, 30) */
		reached[0][31] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 130: // STATE 33 - ./assignment4.pml:69 - [(run startTimer())] (0:0:0 - 1)
		IfNotBlocked
		reached[0][33] = 1;
		if (!(addproc(II, 1, 1, 0, 0, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 131: // STATE 35 - ./assignment4.pml:71 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][35] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

