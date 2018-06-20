	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM never_0 */
;
		;
		;
		;
		
	case 5: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC onPacketReceive */
;
		;
		
	case 7: // STATE 3
		;
		now.controlPacket[ Index(((P6 *)this)->receivedPacket.processId, 4) ].msg.members = trpt->bup.oval;
		;
		goto R999;

	case 8: // STATE 9
		;
		now.ck[ Index(((P6 *)this)->receivedPacket.processId, 4) ].member[ Index(((P6 *)this)->receivedPacket.processId, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 9: // STATE 22
		;
		((P6 *)this)->m = trpt->bup.ovals[1];
		now.ck[ Index(((P6 *)this)->receivedPacket.processId, 4) ].member[ Index(((P6 *)this)->receivedPacket.msg.id, 4) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 10: // STATE 22
		;
		((P6 *)this)->m = trpt->bup.oval;
		;
		goto R999;

	case 11: // STATE 22
		;
		((P6 *)this)->m = trpt->bup.oval;
		;
		goto R999;

	case 12: // STATE 24
		;
		((P6 *)this)->n = trpt->bup.oval;
		;
		goto R999;

	case 13: // STATE 27
		;
		((P6 *)this)->n = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 33
		;
		((P6 *)this)->m = trpt->bup.oval;
		;
		goto R999;

	case 15: // STATE 41
		;
		((P6 *)this)->m = trpt->bup.ovals[1];
		now.commonKnowledgeState[ Index(((P6 *)this)->receivedPacket.msg.id, 4) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 16: // STATE 43
		;
		((P6 *)this)->n = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 18: // STATE 53
		;
		((P6 *)this)->n = trpt->bup.ovals[1];
		now.counter = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 20: // STATE 53
		;
		((P6 *)this)->n = trpt->bup.oval;
		;
		goto R999;

	case 21: // STATE 53
		;
		((P6 *)this)->n = trpt->bup.oval;
		;
		goto R999;

	case 22: // STATE 59
		;
		((P6 *)this)->m = trpt->bup.oval;
		;
		goto R999;
;
		
	case 23: // STATE 65
		goto R999;

	case 24: // STATE 75
		;
		now.counter = trpt->bup.ovals[2];
		now.commonKnowledgeState[ Index(((P6 *)this)->receivedPacket.msg.id, 4) ] = trpt->bup.ovals[1];
		now.tioa_tdma_state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 25: // STATE 75
		;
		now.counter = trpt->bup.ovals[2];
		now.commonKnowledgeState[ Index(((P6 *)this)->receivedPacket.msg.id, 4) ] = trpt->bup.ovals[1];
		now.tioa_tdma_state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 26: // STATE 75
		;
		now.counter = trpt->bup.ovals[1];
		now.commonKnowledgeState[ Index(((P6 *)this)->receivedPacket.msg.id, 4) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 27: // STATE 77
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC receive */

	case 28: // STATE 1
		;
		XX = 1;
		unrecv(now.P0P1, XX-1, 0, ((P5 *)this)->receivedPacket.processId, 1);
		unrecv(now.P0P1, XX-1, 1, ((int)((P5 *)this)->receivedPacket.msg.id), 0);
		unrecv(now.P0P1, XX-1, 2, ((int)((P5 *)this)->receivedPacket.msg.state), 0);
		unrecv(now.P0P1, XX-1, 3, ((int)((P5 *)this)->receivedPacket.msg.members), 0);
		unrecv(now.P0P1, XX-1, 4, ((int)((P5 *)this)->receivedPacket.msg.time), 0);
		((P5 *)this)->receivedPacket.processId = trpt->bup.ovals[0];
		((P5 *)this)->receivedPacket.msg.id = trpt->bup.ovals[1];
		((P5 *)this)->receivedPacket.msg.state = trpt->bup.ovals[2];
		((P5 *)this)->receivedPacket.msg.members = trpt->bup.ovals[3];
		((P5 *)this)->receivedPacket.msg.time = trpt->bup.ovals[4];
		;
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 29: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 30: // STATE 3
		;
		XX = 1;
		unrecv(now.P0P2, XX-1, 0, ((P5 *)this)->receivedPacket.processId, 1);
		unrecv(now.P0P2, XX-1, 1, ((int)((P5 *)this)->receivedPacket.msg.id), 0);
		unrecv(now.P0P2, XX-1, 2, ((int)((P5 *)this)->receivedPacket.msg.state), 0);
		unrecv(now.P0P2, XX-1, 3, ((int)((P5 *)this)->receivedPacket.msg.members), 0);
		unrecv(now.P0P2, XX-1, 4, ((int)((P5 *)this)->receivedPacket.msg.time), 0);
		((P5 *)this)->receivedPacket.processId = trpt->bup.ovals[0];
		((P5 *)this)->receivedPacket.msg.id = trpt->bup.ovals[1];
		((P5 *)this)->receivedPacket.msg.state = trpt->bup.ovals[2];
		((P5 *)this)->receivedPacket.msg.members = trpt->bup.ovals[3];
		((P5 *)this)->receivedPacket.msg.time = trpt->bup.ovals[4];
		;
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 31: // STATE 4
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 32: // STATE 5
		;
		XX = 1;
		unrecv(now.P0P3, XX-1, 0, ((P5 *)this)->receivedPacket.processId, 1);
		unrecv(now.P0P3, XX-1, 1, ((int)((P5 *)this)->receivedPacket.msg.id), 0);
		unrecv(now.P0P3, XX-1, 2, ((int)((P5 *)this)->receivedPacket.msg.state), 0);
		unrecv(now.P0P3, XX-1, 3, ((int)((P5 *)this)->receivedPacket.msg.members), 0);
		unrecv(now.P0P3, XX-1, 4, ((int)((P5 *)this)->receivedPacket.msg.time), 0);
		((P5 *)this)->receivedPacket.processId = trpt->bup.ovals[0];
		((P5 *)this)->receivedPacket.msg.id = trpt->bup.ovals[1];
		((P5 *)this)->receivedPacket.msg.state = trpt->bup.ovals[2];
		((P5 *)this)->receivedPacket.msg.members = trpt->bup.ovals[3];
		((P5 *)this)->receivedPacket.msg.time = trpt->bup.ovals[4];
		;
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 33: // STATE 6
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 34: // STATE 7
		;
		XX = 1;
		unrecv(now.P1P0, XX-1, 0, ((P5 *)this)->receivedPacket.processId, 1);
		unrecv(now.P1P0, XX-1, 1, ((int)((P5 *)this)->receivedPacket.msg.id), 0);
		unrecv(now.P1P0, XX-1, 2, ((int)((P5 *)this)->receivedPacket.msg.state), 0);
		unrecv(now.P1P0, XX-1, 3, ((int)((P5 *)this)->receivedPacket.msg.members), 0);
		unrecv(now.P1P0, XX-1, 4, ((int)((P5 *)this)->receivedPacket.msg.time), 0);
		((P5 *)this)->receivedPacket.processId = trpt->bup.ovals[0];
		((P5 *)this)->receivedPacket.msg.id = trpt->bup.ovals[1];
		((P5 *)this)->receivedPacket.msg.state = trpt->bup.ovals[2];
		((P5 *)this)->receivedPacket.msg.members = trpt->bup.ovals[3];
		((P5 *)this)->receivedPacket.msg.time = trpt->bup.ovals[4];
		;
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 35: // STATE 8
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 36: // STATE 9
		;
		XX = 1;
		unrecv(now.P1P2, XX-1, 0, ((P5 *)this)->receivedPacket.processId, 1);
		unrecv(now.P1P2, XX-1, 1, ((int)((P5 *)this)->receivedPacket.msg.id), 0);
		unrecv(now.P1P2, XX-1, 2, ((int)((P5 *)this)->receivedPacket.msg.state), 0);
		unrecv(now.P1P2, XX-1, 3, ((int)((P5 *)this)->receivedPacket.msg.members), 0);
		unrecv(now.P1P2, XX-1, 4, ((int)((P5 *)this)->receivedPacket.msg.time), 0);
		((P5 *)this)->receivedPacket.processId = trpt->bup.ovals[0];
		((P5 *)this)->receivedPacket.msg.id = trpt->bup.ovals[1];
		((P5 *)this)->receivedPacket.msg.state = trpt->bup.ovals[2];
		((P5 *)this)->receivedPacket.msg.members = trpt->bup.ovals[3];
		((P5 *)this)->receivedPacket.msg.time = trpt->bup.ovals[4];
		;
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 37: // STATE 10
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 38: // STATE 11
		;
		XX = 1;
		unrecv(now.P1P3, XX-1, 0, ((P5 *)this)->receivedPacket.processId, 1);
		unrecv(now.P1P3, XX-1, 1, ((int)((P5 *)this)->receivedPacket.msg.id), 0);
		unrecv(now.P1P3, XX-1, 2, ((int)((P5 *)this)->receivedPacket.msg.state), 0);
		unrecv(now.P1P3, XX-1, 3, ((int)((P5 *)this)->receivedPacket.msg.members), 0);
		unrecv(now.P1P3, XX-1, 4, ((int)((P5 *)this)->receivedPacket.msg.time), 0);
		((P5 *)this)->receivedPacket.processId = trpt->bup.ovals[0];
		((P5 *)this)->receivedPacket.msg.id = trpt->bup.ovals[1];
		((P5 *)this)->receivedPacket.msg.state = trpt->bup.ovals[2];
		((P5 *)this)->receivedPacket.msg.members = trpt->bup.ovals[3];
		((P5 *)this)->receivedPacket.msg.time = trpt->bup.ovals[4];
		;
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 39: // STATE 12
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 40: // STATE 13
		;
		XX = 1;
		unrecv(now.P2P0, XX-1, 0, ((P5 *)this)->receivedPacket.processId, 1);
		unrecv(now.P2P0, XX-1, 1, ((int)((P5 *)this)->receivedPacket.msg.id), 0);
		unrecv(now.P2P0, XX-1, 2, ((int)((P5 *)this)->receivedPacket.msg.state), 0);
		unrecv(now.P2P0, XX-1, 3, ((int)((P5 *)this)->receivedPacket.msg.members), 0);
		unrecv(now.P2P0, XX-1, 4, ((int)((P5 *)this)->receivedPacket.msg.time), 0);
		((P5 *)this)->receivedPacket.processId = trpt->bup.ovals[0];
		((P5 *)this)->receivedPacket.msg.id = trpt->bup.ovals[1];
		((P5 *)this)->receivedPacket.msg.state = trpt->bup.ovals[2];
		((P5 *)this)->receivedPacket.msg.members = trpt->bup.ovals[3];
		((P5 *)this)->receivedPacket.msg.time = trpt->bup.ovals[4];
		;
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 41: // STATE 14
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 42: // STATE 15
		;
		XX = 1;
		unrecv(now.P2P1, XX-1, 0, ((P5 *)this)->receivedPacket.processId, 1);
		unrecv(now.P2P1, XX-1, 1, ((int)((P5 *)this)->receivedPacket.msg.id), 0);
		unrecv(now.P2P1, XX-1, 2, ((int)((P5 *)this)->receivedPacket.msg.state), 0);
		unrecv(now.P2P1, XX-1, 3, ((int)((P5 *)this)->receivedPacket.msg.members), 0);
		unrecv(now.P2P1, XX-1, 4, ((int)((P5 *)this)->receivedPacket.msg.time), 0);
		((P5 *)this)->receivedPacket.processId = trpt->bup.ovals[0];
		((P5 *)this)->receivedPacket.msg.id = trpt->bup.ovals[1];
		((P5 *)this)->receivedPacket.msg.state = trpt->bup.ovals[2];
		((P5 *)this)->receivedPacket.msg.members = trpt->bup.ovals[3];
		((P5 *)this)->receivedPacket.msg.time = trpt->bup.ovals[4];
		;
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 43: // STATE 16
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 44: // STATE 17
		;
		XX = 1;
		unrecv(now.P2P3, XX-1, 0, ((P5 *)this)->receivedPacket.processId, 1);
		unrecv(now.P2P3, XX-1, 1, ((int)((P5 *)this)->receivedPacket.msg.id), 0);
		unrecv(now.P2P3, XX-1, 2, ((int)((P5 *)this)->receivedPacket.msg.state), 0);
		unrecv(now.P2P3, XX-1, 3, ((int)((P5 *)this)->receivedPacket.msg.members), 0);
		unrecv(now.P2P3, XX-1, 4, ((int)((P5 *)this)->receivedPacket.msg.time), 0);
		((P5 *)this)->receivedPacket.processId = trpt->bup.ovals[0];
		((P5 *)this)->receivedPacket.msg.id = trpt->bup.ovals[1];
		((P5 *)this)->receivedPacket.msg.state = trpt->bup.ovals[2];
		((P5 *)this)->receivedPacket.msg.members = trpt->bup.ovals[3];
		((P5 *)this)->receivedPacket.msg.time = trpt->bup.ovals[4];
		;
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 45: // STATE 18
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 46: // STATE 19
		;
		XX = 1;
		unrecv(now.P3P0, XX-1, 0, ((P5 *)this)->receivedPacket.processId, 1);
		unrecv(now.P3P0, XX-1, 1, ((int)((P5 *)this)->receivedPacket.msg.id), 0);
		unrecv(now.P3P0, XX-1, 2, ((int)((P5 *)this)->receivedPacket.msg.state), 0);
		unrecv(now.P3P0, XX-1, 3, ((int)((P5 *)this)->receivedPacket.msg.members), 0);
		unrecv(now.P3P0, XX-1, 4, ((int)((P5 *)this)->receivedPacket.msg.time), 0);
		((P5 *)this)->receivedPacket.processId = trpt->bup.ovals[0];
		((P5 *)this)->receivedPacket.msg.id = trpt->bup.ovals[1];
		((P5 *)this)->receivedPacket.msg.state = trpt->bup.ovals[2];
		((P5 *)this)->receivedPacket.msg.members = trpt->bup.ovals[3];
		((P5 *)this)->receivedPacket.msg.time = trpt->bup.ovals[4];
		;
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 47: // STATE 20
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 48: // STATE 21
		;
		XX = 1;
		unrecv(now.P3P1, XX-1, 0, ((P5 *)this)->receivedPacket.processId, 1);
		unrecv(now.P3P1, XX-1, 1, ((int)((P5 *)this)->receivedPacket.msg.id), 0);
		unrecv(now.P3P1, XX-1, 2, ((int)((P5 *)this)->receivedPacket.msg.state), 0);
		unrecv(now.P3P1, XX-1, 3, ((int)((P5 *)this)->receivedPacket.msg.members), 0);
		unrecv(now.P3P1, XX-1, 4, ((int)((P5 *)this)->receivedPacket.msg.time), 0);
		((P5 *)this)->receivedPacket.processId = trpt->bup.ovals[0];
		((P5 *)this)->receivedPacket.msg.id = trpt->bup.ovals[1];
		((P5 *)this)->receivedPacket.msg.state = trpt->bup.ovals[2];
		((P5 *)this)->receivedPacket.msg.members = trpt->bup.ovals[3];
		((P5 *)this)->receivedPacket.msg.time = trpt->bup.ovals[4];
		;
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 49: // STATE 22
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 50: // STATE 23
		;
		XX = 1;
		unrecv(now.P3P2, XX-1, 0, ((P5 *)this)->receivedPacket.processId, 1);
		unrecv(now.P3P2, XX-1, 1, ((int)((P5 *)this)->receivedPacket.msg.id), 0);
		unrecv(now.P3P2, XX-1, 2, ((int)((P5 *)this)->receivedPacket.msg.state), 0);
		unrecv(now.P3P2, XX-1, 3, ((int)((P5 *)this)->receivedPacket.msg.members), 0);
		unrecv(now.P3P2, XX-1, 4, ((int)((P5 *)this)->receivedPacket.msg.time), 0);
		((P5 *)this)->receivedPacket.processId = trpt->bup.ovals[0];
		((P5 *)this)->receivedPacket.msg.id = trpt->bup.ovals[1];
		((P5 *)this)->receivedPacket.msg.state = trpt->bup.ovals[2];
		((P5 *)this)->receivedPacket.msg.members = trpt->bup.ovals[3];
		((P5 *)this)->receivedPacket.msg.time = trpt->bup.ovals[4];
		;
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 51: // STATE 24
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 52: // STATE 30
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC failureDetector */

	case 53: // STATE 1
		;
		((P4 *)this)->m = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 57: // STATE 5
		;
		now.missingMessages[ Index(((P4 *)this)->m, 4) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 59: // STATE 9
		;
		now.controlPacket[ Index(((P4 *)this)->m, 4) ].msg.members = trpt->bup.oval;
		;
		goto R999;

	case 60: // STATE 10
		;
		now.missingMessages[ Index(((P4 *)this)->m, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 61: // STATE 11
		;
		now.commonKnowledgeState[ Index(((P4 *)this)->m, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 62: // STATE 16
		;
		((P4 *)this)->m = trpt->bup.oval;
		;
		goto R999;

	case 63: // STATE 22
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC esbTimeSlot */

	case 64: // STATE 3
		;
		now.controlPacket[ Index(((P3 *)this)->processID, 4) ].msg.state = trpt->bup.ovals[1];
		now.controlPacket[ Index(((P3 *)this)->processID, 4) ].msg.time = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 67: // STATE 6
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 68: // STATE 26
		;
		now.currentSlot = trpt->bup.ovals[2];
		now.tioa_tdma_state = trpt->bup.ovals[1];
	/* 0 */	((P3 *)this)->processID = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 69: // STATE 10
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;
;
		;
		;
		;
		
	case 72: // STATE 17
		;
	/* 0 */	((P3 *)this)->processID = trpt->bup.oval;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 73: // STATE 19
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 74: // STATE 26
		;
		now.currentSlot = trpt->bup.oval;
		;
		goto R999;

	case 75: // STATE 28
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC send */

	case 76: // STATE 1
		;
		((P2 *)this)->sendPacket.msg.id = trpt->bup.oval;
		;
		goto R999;

	case 77: // STATE 2
		;
		((P2 *)this)->sendPacket.msg.state = trpt->bup.oval;
		;
		goto R999;

	case 78: // STATE 3
		;
		((P2 *)this)->sendPacket.msg.members = trpt->bup.oval;
		;
		goto R999;

	case 79: // STATE 6
		;
		((P2 *)this)->sendPacket.processId = trpt->bup.ovals[1];
		((P2 *)this)->sendPacket.msg.time = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 80: // STATE 7
		;
		_m = unsend(now.P0P1);
		;
		goto R999;

	case 81: // STATE 8
		;
		((P2 *)this)->sendPacket.processId = trpt->bup.oval;
		;
		goto R999;

	case 82: // STATE 9
		;
		_m = unsend(now.P0P2);
		;
		goto R999;

	case 83: // STATE 11
		;
		((P2 *)this)->sendPacket.processId = trpt->bup.oval;
		;
		goto R999;

	case 84: // STATE 12
		;
		_m = unsend(now.P0P3);
		;
		goto R999;
;
		
	case 85: // STATE 13
		goto R999;
;
		
	case 86: // STATE 45
		goto R999;

	case 87: // STATE 16
		;
		((P2 *)this)->sendPacket.processId = trpt->bup.ovals[1];
		((P2 *)this)->sendPacket.msg.time = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 88: // STATE 17
		;
		_m = unsend(now.P1P0);
		;
		goto R999;

	case 89: // STATE 18
		;
		((P2 *)this)->sendPacket.processId = trpt->bup.oval;
		;
		goto R999;

	case 90: // STATE 19
		;
		_m = unsend(now.P1P2);
		;
		goto R999;

	case 91: // STATE 21
		;
		((P2 *)this)->sendPacket.processId = trpt->bup.oval;
		;
		goto R999;

	case 92: // STATE 22
		;
		_m = unsend(now.P1P3);
		;
		goto R999;
;
		
	case 93: // STATE 23
		goto R999;

	case 94: // STATE 26
		;
		((P2 *)this)->sendPacket.processId = trpt->bup.ovals[1];
		((P2 *)this)->sendPacket.msg.time = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 95: // STATE 27
		;
		_m = unsend(now.P2P0);
		;
		goto R999;

	case 96: // STATE 28
		;
		((P2 *)this)->sendPacket.processId = trpt->bup.oval;
		;
		goto R999;

	case 97: // STATE 29
		;
		_m = unsend(now.P2P1);
		;
		goto R999;

	case 98: // STATE 31
		;
		((P2 *)this)->sendPacket.processId = trpt->bup.oval;
		;
		goto R999;

	case 99: // STATE 32
		;
		_m = unsend(now.P2P3);
		;
		goto R999;
;
		
	case 100: // STATE 33
		goto R999;

	case 101: // STATE 36
		;
		((P2 *)this)->sendPacket.processId = trpt->bup.ovals[1];
		((P2 *)this)->sendPacket.msg.time = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 102: // STATE 37
		;
		_m = unsend(now.P3P0);
		;
		goto R999;

	case 103: // STATE 38
		;
		((P2 *)this)->sendPacket.processId = trpt->bup.oval;
		;
		goto R999;

	case 104: // STATE 39
		;
		_m = unsend(now.P3P1);
		;
		goto R999;

	case 105: // STATE 41
		;
		((P2 *)this)->sendPacket.processId = trpt->bup.oval;
		;
		goto R999;

	case 106: // STATE 42
		;
		_m = unsend(now.P3P2);
		;
		goto R999;
;
		
	case 107: // STATE 43
		goto R999;

	case 108: // STATE 47
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC startTimer */
;
		;
		
	case 110: // STATE 3
		;
		((P1 *)this)->_17_4_p = trpt->bup.ovals[1];
		((P1 *)this)->_17_4_p = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 112: // STATE 5
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 113: // STATE 6
		;
		((P1 *)this)->_17_4_p = trpt->bup.oval;
		;
		goto R999;

	case 114: // STATE 12
		;
		now.timer_tick = trpt->bup.oval;
		;
		goto R999;

	case 115: // STATE 19
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 116: // STATE 1
		;
		now.tioa_tdma_state = trpt->bup.oval;
		;
		goto R999;

	case 117: // STATE 2
		;
		now.tranmission_state = trpt->bup.oval;
		;
		goto R999;

	case 118: // STATE 5
		;
		((P0 *)this)->n = trpt->bup.ovals[2];
		((P0 *)this)->n = trpt->bup.ovals[1];
		((P0 *)this)->m = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 120: // STATE 7
		;
		now.controlPacket[ Index(((P0 *)this)->n, 4) ].msg.id = trpt->bup.oval;
		;
		goto R999;

	case 121: // STATE 8
		;
		now.controlPacket[ Index(((P0 *)this)->n, 4) ].msg.state = trpt->bup.oval;
		;
		goto R999;

	case 122: // STATE 9
		;
		now.controlPacket[ Index(((P0 *)this)->n, 4) ].msg.members = trpt->bup.oval;
		;
		goto R999;

	case 123: // STATE 10
		;
		((P0 *)this)->n = trpt->bup.oval;
		;
		goto R999;

	case 124: // STATE 16
		;
		((P0 *)this)->m = trpt->bup.oval;
		;
		goto R999;

	case 125: // STATE 18
		;
		((P0 *)this)->n = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 127: // STATE 20
		;
		now.ck[ Index(((P0 *)this)->m, 4) ].member[ Index(((P0 *)this)->n, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 128: // STATE 21
		;
		((P0 *)this)->n = trpt->bup.oval;
		;
		goto R999;

	case 129: // STATE 27
		;
		((P0 *)this)->m = trpt->bup.oval;
		;
		goto R999;

	case 130: // STATE 33
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 131: // STATE 35
		;
		p_restor(II);
		;
		;
		goto R999;
	}

