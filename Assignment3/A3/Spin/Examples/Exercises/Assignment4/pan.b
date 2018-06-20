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

		 /* PROC onReceive */
;
		;
		
	case 7: // STATE 3
		;
		now.controlPacket[ Index(((P6 *)this)->receivedPacket.processId, 3) ].msg.members = trpt->bup.oval;
		;
		goto R999;

	case 8: // STATE 9
		;
		now.ck[ Index(((P6 *)this)->receivedPacket.processId, 3) ].member[ Index(((P6 *)this)->receivedPacket.processId, 3) ] = trpt->bup.oval;
		;
		goto R999;

	case 9: // STATE 22
		;
		((P6 *)this)->m = trpt->bup.ovals[1];
		now.ck[ Index(((P6 *)this)->receivedPacket.processId, 3) ].member[ Index(((P6 *)this)->receivedPacket.msg.id, 3) ] = trpt->bup.ovals[0];
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
		now.commonKnowledgeState[ Index(((P6 *)this)->receivedPacket.msg.id, 3) ] = trpt->bup.ovals[0];
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
		now.count = trpt->bup.ovals[0];
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
		now.count = trpt->bup.ovals[2];
		now.commonKnowledgeState[ Index(((P6 *)this)->receivedPacket.msg.id, 3) ] = trpt->bup.ovals[1];
		now.tioa_tdma_state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 25: // STATE 75
		;
		now.count = trpt->bup.ovals[2];
		now.commonKnowledgeState[ Index(((P6 *)this)->receivedPacket.msg.id, 3) ] = trpt->bup.ovals[1];
		now.tioa_tdma_state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 26: // STATE 75
		;
		now.count = trpt->bup.ovals[1];
		now.commonKnowledgeState[ Index(((P6 *)this)->receivedPacket.msg.id, 3) ] = trpt->bup.ovals[0];
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

	case 33: // STATE 6
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 34: // STATE 7
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

	case 35: // STATE 8
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 36: // STATE 9
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

	case 37: // STATE 10
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 38: // STATE 11
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

	case 39: // STATE 12
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 40: // STATE 18
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC failureDetector */

	case 41: // STATE 1
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
		
	case 45: // STATE 5
		;
		now.missingMessages[ Index(((P4 *)this)->m, 3) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 47: // STATE 9
		;
		now.controlPacket[ Index(((P4 *)this)->m, 3) ].msg.members = trpt->bup.oval;
		;
		goto R999;

	case 48: // STATE 10
		;
		now.missingMessages[ Index(((P4 *)this)->m, 3) ] = trpt->bup.oval;
		;
		goto R999;

	case 49: // STATE 11
		;
		now.commonKnowledgeState[ Index(((P4 *)this)->m, 3) ] = trpt->bup.oval;
		;
		goto R999;

	case 50: // STATE 16
		;
		((P4 *)this)->m = trpt->bup.oval;
		;
		goto R999;

	case 51: // STATE 22
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC esbTimeSlot */

	case 52: // STATE 3
		;
		now.controlPacket[ Index(((P3 *)this)->processID, 3) ].msg.state = trpt->bup.ovals[1];
		now.controlPacket[ Index(((P3 *)this)->processID, 3) ].msg.time = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 54: // STATE 6
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 55: // STATE 28
		;
		now.currentSlot = trpt->bup.ovals[2];
		now.tioa_tdma_state = trpt->bup.ovals[1];
	/* 0 */	((P3 *)this)->processID = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 56: // STATE 10
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;
;
		;
		;
		;
		
	case 59: // STATE 17
		;
	/* 0 */	((P3 *)this)->processID = trpt->bup.oval;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 60: // STATE 19
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 61: // STATE 28
		;
		now.currentSlot = trpt->bup.oval;
		;
		goto R999;

	case 62: // STATE 28
		;
		now.currentSlot = trpt->bup.oval;
		;
		goto R999;

	case 63: // STATE 30
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC send */

	case 64: // STATE 2
		;
		((P2 *)this)->sendPacket.msg.members = trpt->bup.ovals[1];
		((P2 *)this)->sendPacket.msg.id = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 65: // STATE 3
		;
		((P2 *)this)->sendPacket.msg.state = trpt->bup.oval;
		;
		goto R999;

	case 66: // STATE 6
		;
		((P2 *)this)->sendPacket.processId = trpt->bup.ovals[1];
		((P2 *)this)->sendPacket.msg.time = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 67: // STATE 7
		;
		_m = unsend(now.P0P1);
		;
		goto R999;

	case 68: // STATE 8
		;
		((P2 *)this)->sendPacket.processId = trpt->bup.oval;
		;
		goto R999;

	case 69: // STATE 9
		;
		_m = unsend(now.P0P2);
		;
		goto R999;
;
		
	case 70: // STATE 10
		goto R999;
;
		
	case 71: // STATE 26
		goto R999;

	case 72: // STATE 13
		;
		((P2 *)this)->sendPacket.processId = trpt->bup.ovals[1];
		((P2 *)this)->sendPacket.msg.time = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 73: // STATE 14
		;
		_m = unsend(now.P1P0);
		;
		goto R999;

	case 74: // STATE 15
		;
		((P2 *)this)->sendPacket.processId = trpt->bup.oval;
		;
		goto R999;

	case 75: // STATE 16
		;
		_m = unsend(now.P1P2);
		;
		goto R999;
;
		
	case 76: // STATE 17
		goto R999;

	case 77: // STATE 20
		;
		((P2 *)this)->sendPacket.processId = trpt->bup.ovals[1];
		((P2 *)this)->sendPacket.msg.time = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 78: // STATE 21
		;
		_m = unsend(now.P2P0);
		;
		goto R999;

	case 79: // STATE 22
		;
		((P2 *)this)->sendPacket.processId = trpt->bup.oval;
		;
		goto R999;

	case 80: // STATE 23
		;
		_m = unsend(now.P2P1);
		;
		goto R999;
;
		
	case 81: // STATE 24
		goto R999;

	case 82: // STATE 28
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC startTimer */
;
		;
		
	case 84: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 85: // STATE 3
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 86: // STATE 4
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 87: // STATE 5
		;
		now.globalclock = trpt->bup.oval;
		;
		goto R999;

	case 88: // STATE 12
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 89: // STATE 1
		;
		now.myId = trpt->bup.oval;
		;
		goto R999;

	case 90: // STATE 2
		;
		now.transmission_state = trpt->bup.oval;
		;
		goto R999;

	case 91: // STATE 3
		;
		now.tioa_tdma_state = trpt->bup.oval;
		;
		goto R999;

	case 92: // STATE 6
		;
		((P0 *)this)->n = trpt->bup.ovals[2];
		((P0 *)this)->n = trpt->bup.ovals[1];
		((P0 *)this)->m = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 94: // STATE 8
		;
		now.controlPacket[ Index(((P0 *)this)->n, 3) ].msg.id = trpt->bup.oval;
		;
		goto R999;

	case 95: // STATE 9
		;
		now.controlPacket[ Index(((P0 *)this)->n, 3) ].msg.state = trpt->bup.oval;
		;
		goto R999;

	case 96: // STATE 10
		;
		now.controlPacket[ Index(((P0 *)this)->n, 3) ].msg.members = trpt->bup.oval;
		;
		goto R999;

	case 97: // STATE 11
		;
		((P0 *)this)->n = trpt->bup.oval;
		;
		goto R999;

	case 98: // STATE 17
		;
		((P0 *)this)->m = trpt->bup.oval;
		;
		goto R999;

	case 99: // STATE 19
		;
		((P0 *)this)->n = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 101: // STATE 21
		;
		now.ck[ Index(((P0 *)this)->m, 3) ].member[ Index(((P0 *)this)->n, 3) ] = trpt->bup.oval;
		;
		goto R999;

	case 102: // STATE 22
		;
		((P0 *)this)->n = trpt->bup.oval;
		;
		goto R999;

	case 103: // STATE 28
		;
		((P0 *)this)->m = trpt->bup.oval;
		;
		goto R999;

	case 104: // STATE 34
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 105: // STATE 36
		;
		p_restor(II);
		;
		;
		goto R999;
	}

