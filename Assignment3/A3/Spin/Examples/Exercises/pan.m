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
	case 3: // STATE 1 - ./saf.ltl:4 - [(!((tioa_tdma_state==1)))] (0:0:0 - 1)
		
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
	case 4: // STATE 8 - ./saf.ltl:9 - [(!((tioa_tdma_state==1)))] (0:0:0 - 1)
		
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
	case 5: // STATE 13 - ./saf.ltl:11 - [-end-] (0:0:0 - 1)
		
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

		 /* PROC onReceive */
	case 6: // STATE 1 - ./tdma.pml:209 - [printf('****Receiving PACKET %d',receivedPacket.processId)] (0:0:0 - 1)
		IfNotBlocked
		reached[6][1] = 1;
		Printf("****Receiving PACKET %d", ((P6 *)this)->receivedPacket.processId);
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 2 - ./tdma.pml:211 - [((controlPacket[receivedPacket.processId].msg.members<3))] (13:0:1 - 1)
		IfNotBlocked
		reached[6][2] = 1;
		if (!((((int)now.controlPacket[ Index(((P6 *)this)->receivedPacket.processId, 3) ].msg.members)<3)))
			continue;
		/* merge: controlPacket[receivedPacket.processId].msg.members = (controlPacket[receivedPacket.processId].msg.members+1)(0, 3, 13) */
		reached[6][3] = 1;
		(trpt+1)->bup.oval = ((int)now.controlPacket[ Index(((P6 *)this)->receivedPacket.processId, 3) ].msg.members);
		now.controlPacket[ Index(((P6 *)this)->receivedPacket.processId, 3) ].msg.members = (((int)now.controlPacket[ Index(((P6 *)this)->receivedPacket.processId, 3) ].msg.members)+1);
#ifdef VAR_RANGES
		logval("controlPacket[onReceive:receivedPacket.processId].msg.members", ((int)now.controlPacket[ Index(((P6 *)this)->receivedPacket.processId, 3) ].msg.members));
#endif
		;
		/* merge: .(goto)(0, 7, 13) */
		reached[6][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 8: // STATE 8 - ./tdma.pml:215 - [(1)] (20:0:1 - 1)
		IfNotBlocked
		reached[6][8] = 1;
		if (!(1))
			continue;
		/* merge: ck[receivedPacket.processId].member[receivedPacket.processId] = controlPacket[receivedPacket.processId].msg.members(20, 9, 20) */
		reached[6][9] = 1;
		(trpt+1)->bup.oval = ((int)now.ck[ Index(((P6 *)this)->receivedPacket.processId, 3) ].member[ Index(((P6 *)this)->receivedPacket.processId, 3) ]);
		now.ck[ Index(((P6 *)this)->receivedPacket.processId, 3) ].member[ Index(((P6 *)this)->receivedPacket.processId, 3) ] = ((int)now.controlPacket[ Index(((P6 *)this)->receivedPacket.processId, 3) ].msg.members);
#ifdef VAR_RANGES
		logval("ck[onReceive:receivedPacket.processId].member[onReceive:receivedPacket.processId]", ((int)now.ck[ Index(((P6 *)this)->receivedPacket.processId, 3) ].member[ Index(((P6 *)this)->receivedPacket.processId, 3) ]));
#endif
		;
		/* merge: printf('$$$$Updating ck of %d when received from %d---own',receivedPacket.processId,receivedPacket.processId)(20, 10, 20) */
		reached[6][10] = 1;
		Printf("$$$$Updating ck of %d when received from %d---own", ((P6 *)this)->receivedPacket.processId, ((P6 *)this)->receivedPacket.processId);
		/* merge: .(goto)(0, 14, 20) */
		reached[6][14] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 9: // STATE 15 - ./tdma.pml:220 - [(1)] (36:0:2 - 1)
		IfNotBlocked
		reached[6][15] = 1;
		if (!(1))
			continue;
		/* merge: ck[receivedPacket.processId].member[receivedPacket.msg.id] = controlPacket[receivedPacket.msg.id].msg.members(36, 16, 36) */
		reached[6][16] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.ck[ Index(((P6 *)this)->receivedPacket.processId, 3) ].member[ Index(((int)((P6 *)this)->receivedPacket.msg.id), 3) ]);
		now.ck[ Index(((P6 *)this)->receivedPacket.processId, 3) ].member[ Index(((P6 *)this)->receivedPacket.msg.id, 3) ] = ((int)now.controlPacket[ Index(((int)((P6 *)this)->receivedPacket.msg.id), 3) ].msg.members);
#ifdef VAR_RANGES
		logval("ck[onReceive:receivedPacket.processId].member[onReceive:receivedPacket.msg.id]", ((int)now.ck[ Index(((P6 *)this)->receivedPacket.processId, 3) ].member[ Index(((int)((P6 *)this)->receivedPacket.msg.id), 3) ]));
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
		logval("onReceive:m", ((P6 *)this)->m);
#endif
		;
		/* merge: .(goto)(0, 37, 36) */
		reached[6][37] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 10: // STATE 19 - ./tdma.pml:222 - [(1)] (36:0:1 - 1)
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
		logval("onReceive:m", ((P6 *)this)->m);
#endif
		;
		/* merge: .(goto)(0, 37, 36) */
		reached[6][37] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 11: // STATE 22 - ./tdma.pml:225 - [m = 0] (0:36:1 - 3)
		IfNotBlocked
		reached[6][22] = 1;
		(trpt+1)->bup.oval = ((P6 *)this)->m;
		((P6 *)this)->m = 0;
#ifdef VAR_RANGES
		logval("onReceive:m", ((P6 *)this)->m);
#endif
		;
		/* merge: .(goto)(0, 37, 36) */
		reached[6][37] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 12: // STATE 23 - ./tdma.pml:225 - [((m<=2))] (30:0:1 - 1)
		IfNotBlocked
		reached[6][23] = 1;
		if (!((((P6 *)this)->m<=2)))
			continue;
		/* merge: n = 0(0, 24, 30) */
		reached[6][24] = 1;
		(trpt+1)->bup.oval = ((P6 *)this)->n;
		((P6 *)this)->n = 0;
#ifdef VAR_RANGES
		logval("onReceive:n", ((P6 *)this)->n);
#endif
		;
		/* merge: .(goto)(0, 31, 30) */
		reached[6][31] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 13: // STATE 25 - ./tdma.pml:226 - [((n<=2))] (30:0:1 - 1)
		IfNotBlocked
		reached[6][25] = 1;
		if (!((((P6 *)this)->n<=2)))
			continue;
		/* merge: printf('|%d',ck[m].member[n])(30, 26, 30) */
		reached[6][26] = 1;
		Printf("|%d", ((int)now.ck[ Index(((P6 *)this)->m, 3) ].member[ Index(((P6 *)this)->n, 3) ]));
		/* merge: n = (n+1)(30, 27, 30) */
		reached[6][27] = 1;
		(trpt+1)->bup.oval = ((P6 *)this)->n;
		((P6 *)this)->n = (((P6 *)this)->n+1);
#ifdef VAR_RANGES
		logval("onReceive:n", ((P6 *)this)->n);
#endif
		;
		/* merge: .(goto)(0, 31, 30) */
		reached[6][31] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 14: // STATE 33 - ./tdma.pml:225 - [m = (m+1)] (0:36:1 - 3)
		IfNotBlocked
		reached[6][33] = 1;
		(trpt+1)->bup.oval = ((P6 *)this)->m;
		((P6 *)this)->m = (((P6 *)this)->m+1);
#ifdef VAR_RANGES
		logval("onReceive:m", ((P6 *)this)->m);
#endif
		;
		/* merge: .(goto)(0, 37, 36) */
		reached[6][37] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 15: // STATE 39 - ./tdma.pml:231 - [commonKnowledgeState[receivedPacket.msg.id] = receivedPacket.msg.state] (0:62:2 - 3)
		IfNotBlocked
		reached[6][39] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.commonKnowledgeState[ Index(((int)((P6 *)this)->receivedPacket.msg.id), 3) ]);
		now.commonKnowledgeState[ Index(((P6 *)this)->receivedPacket.msg.id, 3) ] = ((int)((P6 *)this)->receivedPacket.msg.state);
#ifdef VAR_RANGES
		logval("commonKnowledgeState[onReceive:receivedPacket.msg.id]", ((int)now.commonKnowledgeState[ Index(((int)((P6 *)this)->receivedPacket.msg.id), 3) ]));
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
		logval("onReceive:m", ((P6 *)this)->m);
#endif
		;
		/* merge: .(goto)(0, 63, 62) */
		reached[6][63] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 16: // STATE 42 - ./tdma.pml:235 - [((m<=2))] (56:0:1 - 1)
		IfNotBlocked
		reached[6][42] = 1;
		if (!((((P6 *)this)->m<=2)))
			continue;
		/* merge: n = 0(0, 43, 56) */
		reached[6][43] = 1;
		(trpt+1)->bup.oval = ((P6 *)this)->n;
		((P6 *)this)->n = 0;
#ifdef VAR_RANGES
		logval("onReceive:n", ((P6 *)this)->n);
#endif
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[6][57] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 17: // STATE 44 - ./tdma.pml:236 - [((n<=2))] (0:0:0 - 1)
		IfNotBlocked
		reached[6][44] = 1;
		if (!((((P6 *)this)->n<=2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 45 - ./tdma.pml:238 - [((ck[m].member[n]==3))] (56:0:2 - 1)
		IfNotBlocked
		reached[6][45] = 1;
		if (!((((int)now.ck[ Index(((P6 *)this)->m, 3) ].member[ Index(((P6 *)this)->n, 3) ])==3)))
			continue;
		/* merge: count = (count+1)(56, 46, 56) */
		reached[6][46] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.count;
		now.count = (now.count+1);
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		/* merge: printf('\\nin onreceive::::Insidee for \\nCount: %d\\n',count)(56, 47, 56) */
		reached[6][47] = 1;
		Printf("\nin onreceive::::Insidee for \nCount: %d\n", now.count);
		/* merge: .(goto)(56, 52, 56) */
		reached[6][52] = 1;
		;
		/* merge: n = (n+1)(56, 53, 56) */
		reached[6][53] = 1;
		(trpt+1)->bup.ovals[1] = ((P6 *)this)->n;
		((P6 *)this)->n = (((P6 *)this)->n+1);
#ifdef VAR_RANGES
		logval("onReceive:n", ((P6 *)this)->n);
#endif
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[6][57] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 19: // STATE 49 - ./tdma.pml:239 - [printf('In else\\ns')] (0:0:0 - 1)
		IfNotBlocked
		reached[6][49] = 1;
		Printf("In else\ns");
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 50 - ./tdma.pml:239 - [(1)] (56:0:1 - 1)
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
		logval("onReceive:n", ((P6 *)this)->n);
#endif
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[6][57] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 21: // STATE 53 - ./tdma.pml:236 - [n = (n+1)] (0:56:1 - 3)
		IfNotBlocked
		reached[6][53] = 1;
		(trpt+1)->bup.oval = ((P6 *)this)->n;
		((P6 *)this)->n = (((P6 *)this)->n+1);
#ifdef VAR_RANGES
		logval("onReceive:n", ((P6 *)this)->n);
#endif
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[6][57] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 22: // STATE 59 - ./tdma.pml:235 - [m = (m+1)] (0:62:1 - 3)
		IfNotBlocked
		reached[6][59] = 1;
		(trpt+1)->bup.oval = ((P6 *)this)->m;
		((P6 *)this)->m = (((P6 *)this)->m+1);
#ifdef VAR_RANGES
		logval("onReceive:m", ((P6 *)this)->m);
#endif
		;
		/* merge: .(goto)(0, 63, 62) */
		reached[6][63] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 23: // STATE 65 - ./tdma.pml:244 - [printf('Count is ::: %d',count)] (0:72:0 - 3)
		IfNotBlocked
		reached[6][65] = 1;
		Printf("Count is ::: %d", now.count);
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 66 - ./tdma.pml:246 - [((count==9))] (77:0:3 - 1)
		IfNotBlocked
		reached[6][66] = 1;
		if (!((now.count==9)))
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
		/* merge: printf('\\n~~~~~~Going to TDMA, Count = %d\\n',count)(77, 68, 77) */
		reached[6][68] = 1;
		Printf("\n~~~~~~Going to TDMA, Count = %d\n", now.count);
		/* merge: .(goto)(77, 73, 77) */
		reached[6][73] = 1;
		;
		/* merge: commonKnowledgeState[receivedPacket.msg.id] = tioa_tdma_state(77, 74, 77) */
		reached[6][74] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.commonKnowledgeState[ Index(((int)((P6 *)this)->receivedPacket.msg.id), 3) ]);
		now.commonKnowledgeState[ Index(((P6 *)this)->receivedPacket.msg.id, 3) ] = ((int)now.tioa_tdma_state);
#ifdef VAR_RANGES
		logval("commonKnowledgeState[onReceive:receivedPacket.msg.id]", ((int)now.commonKnowledgeState[ Index(((int)((P6 *)this)->receivedPacket.msg.id), 3) ]));
#endif
		;
		/* merge: count = 0(77, 75, 77) */
		reached[6][75] = 1;
		(trpt+1)->bup.ovals[2] = now.count;
		now.count = 0;
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 25: // STATE 70 - ./tdma.pml:250 - [tioa_tdma_state = 0] (0:77:3 - 1)
		IfNotBlocked
		reached[6][70] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.tioa_tdma_state);
		now.tioa_tdma_state = 0;
#ifdef VAR_RANGES
		logval("tioa_tdma_state", ((int)now.tioa_tdma_state));
#endif
		;
		/* merge: printf('\\n~~~~~~Going to Aloha, Count = %d\\n',count)(77, 71, 77) */
		reached[6][71] = 1;
		Printf("\n~~~~~~Going to Aloha, Count = %d\n", now.count);
		/* merge: .(goto)(77, 73, 77) */
		reached[6][73] = 1;
		;
		/* merge: commonKnowledgeState[receivedPacket.msg.id] = tioa_tdma_state(77, 74, 77) */
		reached[6][74] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.commonKnowledgeState[ Index(((int)((P6 *)this)->receivedPacket.msg.id), 3) ]);
		now.commonKnowledgeState[ Index(((P6 *)this)->receivedPacket.msg.id, 3) ] = ((int)now.tioa_tdma_state);
#ifdef VAR_RANGES
		logval("commonKnowledgeState[onReceive:receivedPacket.msg.id]", ((int)now.commonKnowledgeState[ Index(((int)((P6 *)this)->receivedPacket.msg.id), 3) ]));
#endif
		;
		/* merge: count = 0(77, 75, 77) */
		reached[6][75] = 1;
		(trpt+1)->bup.ovals[2] = now.count;
		now.count = 0;
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 26: // STATE 74 - ./tdma.pml:253 - [commonKnowledgeState[receivedPacket.msg.id] = tioa_tdma_state] (0:77:2 - 3)
		IfNotBlocked
		reached[6][74] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.commonKnowledgeState[ Index(((int)((P6 *)this)->receivedPacket.msg.id), 3) ]);
		now.commonKnowledgeState[ Index(((P6 *)this)->receivedPacket.msg.id, 3) ] = ((int)now.tioa_tdma_state);
#ifdef VAR_RANGES
		logval("commonKnowledgeState[onReceive:receivedPacket.msg.id]", ((int)now.commonKnowledgeState[ Index(((int)((P6 *)this)->receivedPacket.msg.id), 3) ]));
#endif
		;
		/* merge: count = 0(77, 75, 77) */
		reached[6][75] = 1;
		(trpt+1)->bup.ovals[1] = now.count;
		now.count = 0;
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 27: // STATE 77 - ./tdma.pml:256 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[6][77] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC receive */
	case 28: // STATE 1 - ./tdma.pml:194 - [P0P1?receivedPacket.processId,receivedPacket.msg.id,receivedPacket.msg.state,receivedPacket.msg.members,receivedPacket.msg.time] (0:0:5 - 1)
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
	case 29: // STATE 2 - ./tdma.pml:194 - [(run onReceive(receivedPacket.processId,receivedPacket.msg.id,receivedPacket.msg.state,receivedPacket.msg.members,receivedPacket.msg.time))] (0:0:0 - 1)
		IfNotBlocked
		reached[5][2] = 1;
		if (!(addproc(II, 1, 6, ((P5 *)this)->receivedPacket.processId, ((int)((P5 *)this)->receivedPacket.msg.id), ((int)((P5 *)this)->receivedPacket.msg.state), ((int)((P5 *)this)->receivedPacket.msg.members), ((int)((P5 *)this)->receivedPacket.msg.time))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 3 - ./tdma.pml:195 - [P0P2?receivedPacket.processId,receivedPacket.msg.id,receivedPacket.msg.state,receivedPacket.msg.members,receivedPacket.msg.time] (0:0:5 - 1)
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
	case 31: // STATE 4 - ./tdma.pml:195 - [(run onReceive(receivedPacket.processId,receivedPacket.msg.id,receivedPacket.msg.state,receivedPacket.msg.members,receivedPacket.msg.time))] (0:0:0 - 1)
		IfNotBlocked
		reached[5][4] = 1;
		if (!(addproc(II, 1, 6, ((P5 *)this)->receivedPacket.processId, ((int)((P5 *)this)->receivedPacket.msg.id), ((int)((P5 *)this)->receivedPacket.msg.state), ((int)((P5 *)this)->receivedPacket.msg.members), ((int)((P5 *)this)->receivedPacket.msg.time))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 5 - ./tdma.pml:196 - [P1P0?receivedPacket.processId,receivedPacket.msg.id,receivedPacket.msg.state,receivedPacket.msg.members,receivedPacket.msg.time] (0:0:5 - 1)
		reached[5][5] = 1;
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
	case 33: // STATE 6 - ./tdma.pml:196 - [(run onReceive(receivedPacket.processId,receivedPacket.msg.id,receivedPacket.msg.state,receivedPacket.msg.members,receivedPacket.msg.time))] (0:0:0 - 1)
		IfNotBlocked
		reached[5][6] = 1;
		if (!(addproc(II, 1, 6, ((P5 *)this)->receivedPacket.processId, ((int)((P5 *)this)->receivedPacket.msg.id), ((int)((P5 *)this)->receivedPacket.msg.state), ((int)((P5 *)this)->receivedPacket.msg.members), ((int)((P5 *)this)->receivedPacket.msg.time))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 7 - ./tdma.pml:197 - [P1P2?receivedPacket.processId,receivedPacket.msg.id,receivedPacket.msg.state,receivedPacket.msg.members,receivedPacket.msg.time] (0:0:5 - 1)
		reached[5][7] = 1;
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
	case 35: // STATE 8 - ./tdma.pml:197 - [(run onReceive(receivedPacket.processId,receivedPacket.msg.id,receivedPacket.msg.state,receivedPacket.msg.members,receivedPacket.msg.time))] (0:0:0 - 1)
		IfNotBlocked
		reached[5][8] = 1;
		if (!(addproc(II, 1, 6, ((P5 *)this)->receivedPacket.processId, ((int)((P5 *)this)->receivedPacket.msg.id), ((int)((P5 *)this)->receivedPacket.msg.state), ((int)((P5 *)this)->receivedPacket.msg.members), ((int)((P5 *)this)->receivedPacket.msg.time))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 9 - ./tdma.pml:198 - [P2P0?receivedPacket.processId,receivedPacket.msg.id,receivedPacket.msg.state,receivedPacket.msg.members,receivedPacket.msg.time] (0:0:5 - 1)
		reached[5][9] = 1;
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
	case 37: // STATE 10 - ./tdma.pml:198 - [(run onReceive(receivedPacket.processId,receivedPacket.msg.id,receivedPacket.msg.state,receivedPacket.msg.members,receivedPacket.msg.time))] (0:0:0 - 1)
		IfNotBlocked
		reached[5][10] = 1;
		if (!(addproc(II, 1, 6, ((P5 *)this)->receivedPacket.processId, ((int)((P5 *)this)->receivedPacket.msg.id), ((int)((P5 *)this)->receivedPacket.msg.state), ((int)((P5 *)this)->receivedPacket.msg.members), ((int)((P5 *)this)->receivedPacket.msg.time))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 11 - ./tdma.pml:199 - [P2P1?receivedPacket.processId,receivedPacket.msg.id,receivedPacket.msg.state,receivedPacket.msg.members,receivedPacket.msg.time] (0:0:5 - 1)
		reached[5][11] = 1;
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
	case 39: // STATE 12 - ./tdma.pml:199 - [(run onReceive(receivedPacket.processId,receivedPacket.msg.id,receivedPacket.msg.state,receivedPacket.msg.members,receivedPacket.msg.time))] (0:0:0 - 1)
		IfNotBlocked
		reached[5][12] = 1;
		if (!(addproc(II, 1, 6, ((P5 *)this)->receivedPacket.processId, ((int)((P5 *)this)->receivedPacket.msg.id), ((int)((P5 *)this)->receivedPacket.msg.state), ((int)((P5 *)this)->receivedPacket.msg.members), ((int)((P5 *)this)->receivedPacket.msg.time))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 18 - ./tdma.pml:202 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[5][18] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC failureDetector */
	case 41: // STATE 1 - ./tdma.pml:170 - [m = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[4][1] = 1;
		(trpt+1)->bup.oval = ((P4 *)this)->m;
		((P4 *)this)->m = 0;
#ifdef VAR_RANGES
		logval("failureDetector:m", ((P4 *)this)->m);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 2 - ./tdma.pml:170 - [((m<=2))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][2] = 1;
		if (!((((P4 *)this)->m<=2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 3 - ./tdma.pml:172 - [((controlPacket[m].msg.members==m))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][3] = 1;
		if (!((((int)now.controlPacket[ Index(((P4 *)this)->m, 3) ].msg.members)==((P4 *)this)->m)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 4 - ./tdma.pml:174 - [((state==commonKnowledgeState[m]))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][4] = 1;
		if (!((((int)((P4 *)this)->state)==((int)now.commonKnowledgeState[ Index(((P4 *)this)->m, 3) ]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 5 - ./tdma.pml:175 - [missingMessages[m] = (missingMessages[m]+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][5] = 1;
		(trpt+1)->bup.oval = now.missingMessages[ Index(((P4 *)this)->m, 3) ];
		now.missingMessages[ Index(((P4 *)this)->m, 3) ] = (now.missingMessages[ Index(((P4 *)this)->m, 3) ]+1);
#ifdef VAR_RANGES
		logval("missingMessages[failureDetector:m]", now.missingMessages[ Index(((P4 *)this)->m, 3) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 8 - ./tdma.pml:179 - [((missingMessages[m]>4))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][8] = 1;
		if (!((now.missingMessages[ Index(((P4 *)this)->m, 3) ]>4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 9 - ./tdma.pml:181 - [controlPacket[m].msg.members = (controlPacket[m].msg.members&~((1<<m)))] (0:0:1 - 1)
		IfNotBlocked
		reached[4][9] = 1;
		(trpt+1)->bup.oval = ((int)now.controlPacket[ Index(((P4 *)this)->m, 3) ].msg.members);
		now.controlPacket[ Index(((P4 *)this)->m, 3) ].msg.members = (((int)now.controlPacket[ Index(((P4 *)this)->m, 3) ].msg.members)& ~((1<<((P4 *)this)->m)));
#ifdef VAR_RANGES
		logval("controlPacket[failureDetector:m].msg.members", ((int)now.controlPacket[ Index(((P4 *)this)->m, 3) ].msg.members));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 10 - ./tdma.pml:182 - [missingMessages[m] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[4][10] = 1;
		(trpt+1)->bup.oval = now.missingMessages[ Index(((P4 *)this)->m, 3) ];
		now.missingMessages[ Index(((P4 *)this)->m, 3) ] = 0;
#ifdef VAR_RANGES
		logval("missingMessages[failureDetector:m]", now.missingMessages[ Index(((P4 *)this)->m, 3) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 11 - ./tdma.pml:183 - [commonKnowledgeState[m] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[4][11] = 1;
		(trpt+1)->bup.oval = ((int)now.commonKnowledgeState[ Index(((P4 *)this)->m, 3) ]);
		now.commonKnowledgeState[ Index(((P4 *)this)->m, 3) ] = 0;
#ifdef VAR_RANGES
		logval("commonKnowledgeState[failureDetector:m]", ((int)now.commonKnowledgeState[ Index(((P4 *)this)->m, 3) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 16 - ./tdma.pml:170 - [m = (m+1)] (0:19:1 - 3)
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
	case 51: // STATE 22 - ./tdma.pml:187 - [-end-] (0:0:0 - 3)
		IfNotBlocked
		reached[4][22] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC esbTimeSlot */
	case 52: // STATE 1 - ./tdma.pml:137 - [((transmission_state==1))] (22:0:2 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		if (!((((int)now.transmission_state)==1)))
			continue;
		/* merge: controlPacket[processID].msg.time = currentSlot(22, 2, 22) */
		reached[3][2] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.controlPacket[ Index(((int)((P3 *)this)->processID), 3) ].msg.time);
		now.controlPacket[ Index(((P3 *)this)->processID, 3) ].msg.time = ((int)now.currentSlot);
#ifdef VAR_RANGES
		logval("controlPacket[esbTimeSlot:processID].msg.time", ((int)now.controlPacket[ Index(((int)((P3 *)this)->processID), 3) ].msg.time));
#endif
		;
		/* merge: controlPacket[processID].msg.state = tioa_tdma_state(22, 3, 22) */
		reached[3][3] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.controlPacket[ Index(((int)((P3 *)this)->processID), 3) ].msg.state);
		now.controlPacket[ Index(((P3 *)this)->processID, 3) ].msg.state = ((int)now.tioa_tdma_state);
#ifdef VAR_RANGES
		logval("controlPacket[esbTimeSlot:processID].msg.state", ((int)now.controlPacket[ Index(((int)((P3 *)this)->processID), 3) ].msg.state));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 53: // STATE 4 - ./tdma.pml:141 - [((tioa_tdma_state==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][4] = 1;
		if (!((((int)now.tioa_tdma_state)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 6 - ./tdma.pml:144 - [(run send(processID))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][6] = 1;
		if (!(addproc(II, 1, 2, ((int)((P3 *)this)->processID), 0, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 7 - ./tdma.pml:146 - [((controlPacket[processID].msg.members==2))] (30:0:3 - 1)
		IfNotBlocked
		reached[3][7] = 1;
		if (!((((int)now.controlPacket[ Index(((int)((P3 *)this)->processID), 3) ].msg.members)==2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: processID */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P3 *)this)->processID;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)this)->processID = 0;
		/* merge: tioa_tdma_state = 1(30, 8, 30) */
		reached[3][8] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.tioa_tdma_state);
		now.tioa_tdma_state = 1;
#ifdef VAR_RANGES
		logval("tioa_tdma_state", ((int)now.tioa_tdma_state));
#endif
		;
		/* merge: .(goto)(30, 12, 30) */
		reached[3][12] = 1;
		;
		/* merge: .(goto)(30, 14, 30) */
		reached[3][14] = 1;
		;
		/* merge: .(goto)(30, 23, 30) */
		reached[3][23] = 1;
		;
		/* merge: .(goto)(30, 27, 30) */
		reached[3][27] = 1;
		;
		/* merge: currentSlot = (currentSlot+1)(30, 28, 30) */
		reached[3][28] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.currentSlot);
		now.currentSlot = (((int)now.currentSlot)+1);
#ifdef VAR_RANGES
		logval("currentSlot", ((int)now.currentSlot));
#endif
		;
		_m = 3; goto P999; /* 6 */
	case 56: // STATE 10 - ./tdma.pml:149 - [(run failureDetector(tioa_tdma_state))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][10] = 1;
		if (!(addproc(II, 1, 4, ((int)now.tioa_tdma_state), 0, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 15 - ./tdma.pml:153 - [((tioa_tdma_state==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][15] = 1;
		if (!((((int)now.tioa_tdma_state)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 16 - ./tdma.pml:155 - [(((currentSlot%3)==processID))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][16] = 1;
		if (!(((((int)now.currentSlot)%3)==((int)((P3 *)this)->processID))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 17 - ./tdma.pml:156 - [(run send(processID))] (0:0:1 - 1)
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
	case 60: // STATE 19 - ./tdma.pml:157 - [(run failureDetector(tioa_tdma_state))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][19] = 1;
		if (!(addproc(II, 1, 4, ((int)now.tioa_tdma_state), 0, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 27 - ./tdma.pml:162 - [.(goto)] (0:30:1 - 9)
		IfNotBlocked
		reached[3][27] = 1;
		;
		/* merge: currentSlot = (currentSlot+1)(30, 28, 30) */
		reached[3][28] = 1;
		(trpt+1)->bup.oval = ((int)now.currentSlot);
		now.currentSlot = (((int)now.currentSlot)+1);
#ifdef VAR_RANGES
		logval("currentSlot", ((int)now.currentSlot));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 62: // STATE 25 - ./tdma.pml:160 - [(1)] (30:0:1 - 1)
		IfNotBlocked
		reached[3][25] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(30, 27, 30) */
		reached[3][27] = 1;
		;
		/* merge: currentSlot = (currentSlot+1)(30, 28, 30) */
		reached[3][28] = 1;
		(trpt+1)->bup.oval = ((int)now.currentSlot);
		now.currentSlot = (((int)now.currentSlot)+1);
#ifdef VAR_RANGES
		logval("currentSlot", ((int)now.currentSlot));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 63: // STATE 30 - ./tdma.pml:164 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][30] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC send */
	case 64: // STATE 1 - ./tdma.pml:85 - [sendPacket.msg.id = prid] (0:3:2 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P2 *)this)->sendPacket.msg.id);
		((P2 *)this)->sendPacket.msg.id = ((int)((P2 *)this)->prid);
#ifdef VAR_RANGES
		logval("send:sendPacket.msg.id", ((int)((P2 *)this)->sendPacket.msg.id));
#endif
		;
		/* merge: sendPacket.msg.members = prid(3, 2, 3) */
		reached[2][2] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)this)->sendPacket.msg.members);
		((P2 *)this)->sendPacket.msg.members = ((int)((P2 *)this)->prid);
#ifdef VAR_RANGES
		logval("send:sendPacket.msg.members", ((int)((P2 *)this)->sendPacket.msg.members));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 65: // STATE 3 - ./tdma.pml:87 - [sendPacket.msg.state = tioa_tdma_state] (0:0:1 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)this)->sendPacket.msg.state);
		((P2 *)this)->sendPacket.msg.state = ((int)now.tioa_tdma_state);
#ifdef VAR_RANGES
		logval("send:sendPacket.msg.state", ((int)((P2 *)this)->sendPacket.msg.state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 4 - ./tdma.pml:91 - [(((prid==0)&&((currentSlot%3)==prid)))] (7:0:2 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		if (!(((((int)((P2 *)this)->prid)==0)&&((((int)now.currentSlot)%3)==((int)((P2 *)this)->prid)))))
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
	case 67: // STATE 7 - ./tdma.pml:96 - [P0P1!sendPacket.processId,sendPacket.msg.id,sendPacket.msg.state,sendPacket.msg.members,sendPacket.msg.time] (0:0:0 - 1)
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
	case 68: // STATE 8 - ./tdma.pml:97 - [sendPacket.processId = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[2][8] = 1;
		(trpt+1)->bup.oval = ((P2 *)this)->sendPacket.processId;
		((P2 *)this)->sendPacket.processId = 2;
#ifdef VAR_RANGES
		logval("send:sendPacket.processId", ((P2 *)this)->sendPacket.processId);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 9 - ./tdma.pml:100 - [P0P2!sendPacket.processId,sendPacket.msg.id,sendPacket.msg.state,sendPacket.msg.members,sendPacket.msg.time] (0:0:0 - 1)
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
	case 70: // STATE 10 - ./tdma.pml:101 - [printf('Sending packet = %d',prid)] (0:28:0 - 1)
		IfNotBlocked
		reached[2][10] = 1;
		Printf("Sending packet = %d", ((int)((P2 *)this)->prid));
		/* merge: .(goto)(28, 26, 28) */
		reached[2][26] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 71: // STATE 26 - ./tdma.pml:129 - [.(goto)] (0:28:0 - 3)
		IfNotBlocked
		reached[2][26] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 11 - ./tdma.pml:104 - [(((prid==1)&&((currentSlot%3)==prid)))] (14:0:2 - 1)
		IfNotBlocked
		reached[2][11] = 1;
		if (!(((((int)((P2 *)this)->prid)==1)&&((((int)now.currentSlot)%3)==((int)((P2 *)this)->prid)))))
			continue;
		/* merge: sendPacket.msg.time = currentSlot(14, 12, 14) */
		reached[2][12] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P2 *)this)->sendPacket.msg.time);
		((P2 *)this)->sendPacket.msg.time = ((int)now.currentSlot);
#ifdef VAR_RANGES
		logval("send:sendPacket.msg.time", ((int)((P2 *)this)->sendPacket.msg.time));
#endif
		;
		/* merge: sendPacket.processId = 0(14, 13, 14) */
		reached[2][13] = 1;
		(trpt+1)->bup.ovals[1] = ((P2 *)this)->sendPacket.processId;
		((P2 *)this)->sendPacket.processId = 0;
#ifdef VAR_RANGES
		logval("send:sendPacket.processId", ((P2 *)this)->sendPacket.processId);
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 73: // STATE 14 - ./tdma.pml:109 - [P1P0!sendPacket.processId,sendPacket.msg.id,sendPacket.msg.state,sendPacket.msg.members,sendPacket.msg.time] (0:0:0 - 1)
		IfNotBlocked
		reached[2][14] = 1;
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
	case 74: // STATE 15 - ./tdma.pml:110 - [sendPacket.processId = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[2][15] = 1;
		(trpt+1)->bup.oval = ((P2 *)this)->sendPacket.processId;
		((P2 *)this)->sendPacket.processId = 2;
#ifdef VAR_RANGES
		logval("send:sendPacket.processId", ((P2 *)this)->sendPacket.processId);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 16 - ./tdma.pml:113 - [P1P2!sendPacket.processId,sendPacket.msg.id,sendPacket.msg.state,sendPacket.msg.members,sendPacket.msg.time] (0:0:0 - 1)
		IfNotBlocked
		reached[2][16] = 1;
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
	case 76: // STATE 17 - ./tdma.pml:114 - [printf('Sending packet = %d',prid)] (0:28:0 - 1)
		IfNotBlocked
		reached[2][17] = 1;
		Printf("Sending packet = %d", ((int)((P2 *)this)->prid));
		/* merge: .(goto)(28, 26, 28) */
		reached[2][26] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 77: // STATE 18 - ./tdma.pml:117 - [(((prid==2)&&((currentSlot%3)==2)))] (21:0:2 - 1)
		IfNotBlocked
		reached[2][18] = 1;
		if (!(((((int)((P2 *)this)->prid)==2)&&((((int)now.currentSlot)%3)==2))))
			continue;
		/* merge: sendPacket.msg.time = currentSlot(21, 19, 21) */
		reached[2][19] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P2 *)this)->sendPacket.msg.time);
		((P2 *)this)->sendPacket.msg.time = ((int)now.currentSlot);
#ifdef VAR_RANGES
		logval("send:sendPacket.msg.time", ((int)((P2 *)this)->sendPacket.msg.time));
#endif
		;
		/* merge: sendPacket.processId = 0(21, 20, 21) */
		reached[2][20] = 1;
		(trpt+1)->bup.ovals[1] = ((P2 *)this)->sendPacket.processId;
		((P2 *)this)->sendPacket.processId = 0;
#ifdef VAR_RANGES
		logval("send:sendPacket.processId", ((P2 *)this)->sendPacket.processId);
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 78: // STATE 21 - ./tdma.pml:122 - [P2P0!sendPacket.processId,sendPacket.msg.id,sendPacket.msg.state,sendPacket.msg.members,sendPacket.msg.time] (0:0:0 - 1)
		IfNotBlocked
		reached[2][21] = 1;
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
	case 79: // STATE 22 - ./tdma.pml:123 - [sendPacket.processId = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][22] = 1;
		(trpt+1)->bup.oval = ((P2 *)this)->sendPacket.processId;
		((P2 *)this)->sendPacket.processId = 1;
#ifdef VAR_RANGES
		logval("send:sendPacket.processId", ((P2 *)this)->sendPacket.processId);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 23 - ./tdma.pml:126 - [P2P1!sendPacket.processId,sendPacket.msg.id,sendPacket.msg.state,sendPacket.msg.members,sendPacket.msg.time] (0:0:0 - 1)
		IfNotBlocked
		reached[2][23] = 1;
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
	case 81: // STATE 24 - ./tdma.pml:127 - [printf('Sending packet = %d',prid)] (0:28:0 - 1)
		IfNotBlocked
		reached[2][24] = 1;
		Printf("Sending packet = %d", ((int)((P2 *)this)->prid));
		/* merge: .(goto)(28, 26, 28) */
		reached[2][26] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 82: // STATE 28 - ./tdma.pml:130 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][28] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC startTimer */
	case 83: // STATE 1 - ./tdma.pml:71 - [((globalclock<7))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!((((int)now.globalclock)<7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 84: // STATE 2 - ./tdma.pml:72 - [(run esbTimeSlot(0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!(addproc(II, 1, 3, 0, 0, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 85: // STATE 3 - ./tdma.pml:73 - [(run esbTimeSlot(1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!(addproc(II, 1, 3, 1, 0, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 86: // STATE 4 - ./tdma.pml:74 - [(run esbTimeSlot(2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!(addproc(II, 1, 3, 2, 0, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 87: // STATE 5 - ./tdma.pml:75 - [globalclock = (globalclock+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		(trpt+1)->bup.oval = ((int)now.globalclock);
		now.globalclock = (((int)now.globalclock)+1);
#ifdef VAR_RANGES
		logval("globalclock", ((int)now.globalclock));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 88: // STATE 12 - ./tdma.pml:79 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 89: // STATE 1 - ./tdma.pml:45 - [myId = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = now.myId;
		now.myId = 1;
#ifdef VAR_RANGES
		logval("myId", now.myId);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 2 - ./tdma.pml:46 - [transmission_state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = ((int)now.transmission_state);
		now.transmission_state = 1;
#ifdef VAR_RANGES
		logval("transmission_state", ((int)now.transmission_state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 91: // STATE 3 - ./tdma.pml:47 - [tioa_tdma_state = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = ((int)now.tioa_tdma_state);
		now.tioa_tdma_state = 0;
#ifdef VAR_RANGES
		logval("tioa_tdma_state", ((int)now.tioa_tdma_state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 92: // STATE 4 - ./tdma.pml:49 - [m = 0] (0:14:3 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->m;
		((P0 *)this)->m = 0;
#ifdef VAR_RANGES
		logval(":init::m", ((P0 *)this)->m);
#endif
		;
		/* merge: n = 0(14, 5, 14) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)this)->n;
		((P0 *)this)->n = 0;
#ifdef VAR_RANGES
		logval(":init::n", ((P0 *)this)->n);
#endif
		;
		/* merge: n = 0(14, 6, 14) */
		reached[0][6] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)this)->n;
		((P0 *)this)->n = 0;
#ifdef VAR_RANGES
		logval(":init::n", ((P0 *)this)->n);
#endif
		;
		/* merge: .(goto)(0, 15, 14) */
		reached[0][15] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 93: // STATE 7 - ./tdma.pml:51 - [((n<=2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		if (!((((P0 *)this)->n<=2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 94: // STATE 8 - ./tdma.pml:52 - [controlPacket[n].msg.id = myId] (0:0:1 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		(trpt+1)->bup.oval = ((int)now.controlPacket[ Index(((P0 *)this)->n, 3) ].msg.id);
		now.controlPacket[ Index(((P0 *)this)->n, 3) ].msg.id = now.myId;
#ifdef VAR_RANGES
		logval("controlPacket[:init::n].msg.id", ((int)now.controlPacket[ Index(((P0 *)this)->n, 3) ].msg.id));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 95: // STATE 9 - ./tdma.pml:53 - [controlPacket[n].msg.state = tioa_tdma_state] (0:0:1 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		(trpt+1)->bup.oval = ((int)now.controlPacket[ Index(((P0 *)this)->n, 3) ].msg.state);
		now.controlPacket[ Index(((P0 *)this)->n, 3) ].msg.state = ((int)now.tioa_tdma_state);
#ifdef VAR_RANGES
		logval("controlPacket[:init::n].msg.state", ((int)now.controlPacket[ Index(((P0 *)this)->n, 3) ].msg.state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 96: // STATE 10 - ./tdma.pml:54 - [controlPacket[n].msg.members = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		(trpt+1)->bup.oval = ((int)now.controlPacket[ Index(((P0 *)this)->n, 3) ].msg.members);
		now.controlPacket[ Index(((P0 *)this)->n, 3) ].msg.members = 1;
#ifdef VAR_RANGES
		logval("controlPacket[:init::n].msg.members", ((int)now.controlPacket[ Index(((P0 *)this)->n, 3) ].msg.members));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 97: // STATE 11 - ./tdma.pml:51 - [n = (n+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->n;
		((P0 *)this)->n = (((P0 *)this)->n+1);
#ifdef VAR_RANGES
		logval(":init::n", ((P0 *)this)->n);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 98: // STATE 17 - ./tdma.pml:56 - [m = 0] (0:31:1 - 3)
		IfNotBlocked
		reached[0][17] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->m;
		((P0 *)this)->m = 0;
#ifdef VAR_RANGES
		logval(":init::m", ((P0 *)this)->m);
#endif
		;
		/* merge: .(goto)(0, 32, 31) */
		reached[0][32] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 99: // STATE 18 - ./tdma.pml:56 - [((m<=2))] (25:0:1 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		if (!((((P0 *)this)->m<=2)))
			continue;
		/* merge: n = 0(0, 19, 25) */
		reached[0][19] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->n;
		((P0 *)this)->n = 0;
#ifdef VAR_RANGES
		logval(":init::n", ((P0 *)this)->n);
#endif
		;
		/* merge: .(goto)(0, 26, 25) */
		reached[0][26] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 100: // STATE 20 - ./tdma.pml:57 - [((n<=2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][20] = 1;
		if (!((((P0 *)this)->n<=2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 101: // STATE 21 - ./tdma.pml:58 - [ck[m].member[n] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][21] = 1;
		(trpt+1)->bup.oval = ((int)now.ck[ Index(((P0 *)this)->m, 3) ].member[ Index(((P0 *)this)->n, 3) ]);
		now.ck[ Index(((P0 *)this)->m, 3) ].member[ Index(((P0 *)this)->n, 3) ] = 1;
#ifdef VAR_RANGES
		logval("ck[:init::m].member[:init::n]", ((int)now.ck[ Index(((P0 *)this)->m, 3) ].member[ Index(((P0 *)this)->n, 3) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 22 - ./tdma.pml:57 - [n = (n+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][22] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->n;
		((P0 *)this)->n = (((P0 *)this)->n+1);
#ifdef VAR_RANGES
		logval(":init::n", ((P0 *)this)->n);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 103: // STATE 28 - ./tdma.pml:56 - [m = (m+1)] (0:31:1 - 3)
		IfNotBlocked
		reached[0][28] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->m;
		((P0 *)this)->m = (((P0 *)this)->m+1);
#ifdef VAR_RANGES
		logval(":init::m", ((P0 *)this)->m);
#endif
		;
		/* merge: .(goto)(0, 32, 31) */
		reached[0][32] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 104: // STATE 34 - ./tdma.pml:62 - [(run startTimer())] (0:0:0 - 1)
		IfNotBlocked
		reached[0][34] = 1;
		if (!(addproc(II, 1, 1, 0, 0, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 105: // STATE 36 - ./tdma.pml:64 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][36] = 1;
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

