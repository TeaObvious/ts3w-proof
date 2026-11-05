# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

00978b20	57	PUSH EDI	flow=FALL_THROUGH override=NONE fallThrough=00978b21 delaySlots=0
00978b21	8bf9	MOV EDI,ECX	flow=FALL_THROUGH override=NONE fallThrough=00978b23 delaySlots=0
00978b23	e848eafbff	CALL 0x00937570	flow=UNCONDITIONAL_CALL override=NONE fallThrough=00978b28 delaySlots=0
00978b28	85c0	TEST EAX,EAX	flow=FALL_THROUGH override=NONE fallThrough=00978b2a delaySlots=0
00978b2a	7463	JZ 0x00978b8f	flow=CONDITIONAL_JUMP override=NONE fallThrough=00978b2c delaySlots=0
00978b2c	8b4c240c	MOV ECX,dword ptr [ESP + 0xc]	flow=FALL_THROUGH override=NONE fallThrough=00978b30 delaySlots=0
00978b30	8b542408	MOV EDX,dword ptr [ESP + 0x8]	flow=FALL_THROUGH override=NONE fallThrough=00978b34 delaySlots=0
00978b34	56	PUSH ESI	flow=FALL_THROUGH override=NONE fallThrough=00978b35 delaySlots=0
00978b35	51	PUSH ECX	flow=FALL_THROUGH override=NONE fallThrough=00978b36 delaySlots=0
00978b36	52	PUSH EDX	flow=FALL_THROUGH override=NONE fallThrough=00978b37 delaySlots=0
00978b37	8bc8	MOV ECX,EAX	flow=FALL_THROUGH override=NONE fallThrough=00978b39 delaySlots=0
00978b39	e842f4fbff	CALL 0x00937f80	flow=UNCONDITIONAL_CALL override=NONE fallThrough=00978b3e delaySlots=0
00978b3e	8bf0	MOV ESI,EAX	flow=FALL_THROUGH override=NONE fallThrough=00978b40 delaySlots=0
00978b40	85f6	TEST ESI,ESI	flow=FALL_THROUGH override=NONE fallThrough=00978b42 delaySlots=0
00978b42	740c	JZ 0x00978b50	flow=CONDITIONAL_JUMP override=NONE fallThrough=00978b44 delaySlots=0
00978b44	8d4604	LEA EAX,[ESI + 0x4]	flow=FALL_THROUGH override=NONE fallThrough=00978b47 delaySlots=0
00978b47	b901000000	MOV ECX,0x1	flow=FALL_THROUGH override=NONE fallThrough=00978b4c delaySlots=0
00978b4c	f00fc108	XADD.LOCK dword ptr [EAX],ECX	flow=FALL_THROUGH override=NONE fallThrough=00978b50 delaySlots=0
00978b50	8b54241c	MOV EDX,dword ptr [ESP + 0x1c]	flow=FALL_THROUGH override=NONE fallThrough=00978b54 delaySlots=0
00978b54	d9442418	FLD float ptr [ESP + 0x18]	flow=FALL_THROUGH override=NONE fallThrough=00978b58 delaySlots=0
00978b58	8b442414	MOV EAX,dword ptr [ESP + 0x14]	flow=FALL_THROUGH override=NONE fallThrough=00978b5c delaySlots=0
00978b5c	52	PUSH EDX	flow=FALL_THROUGH override=NONE fallThrough=00978b5d delaySlots=0
00978b5d	51	PUSH ECX	flow=FALL_THROUGH override=NONE fallThrough=00978b5e delaySlots=0
00978b5e	d91c24	FSTP float ptr [ESP]	flow=FALL_THROUGH override=NONE fallThrough=00978b61 delaySlots=0
00978b61	50	PUSH EAX	flow=FALL_THROUGH override=NONE fallThrough=00978b62 delaySlots=0
00978b62	56	PUSH ESI	flow=FALL_THROUGH override=NONE fallThrough=00978b63 delaySlots=0
00978b63	8bcf	MOV ECX,EDI	flow=FALL_THROUGH override=NONE fallThrough=00978b65 delaySlots=0
00978b65	e876c6ffff	CALL 0x009751e0	flow=UNCONDITIONAL_CALL override=NONE fallThrough=00978b6a delaySlots=0
00978b6a	85f6	TEST ESI,ESI	flow=FALL_THROUGH override=NONE fallThrough=00978b6c delaySlots=0
00978b6c	7420	JZ 0x00978b8e	flow=CONDITIONAL_JUMP override=NONE fallThrough=00978b6e delaySlots=0
00978b6e	8d4604	LEA EAX,[ESI + 0x4]	flow=FALL_THROUGH override=NONE fallThrough=00978b71 delaySlots=0
00978b71	8bc8	MOV ECX,EAX	flow=FALL_THROUGH override=NONE fallThrough=00978b73 delaySlots=0
00978b73	83caff	OR EDX,0xffffffff	flow=FALL_THROUGH override=NONE fallThrough=00978b76 delaySlots=0
00978b76	f00fc111	XADD.LOCK dword ptr [ECX],EDX	flow=FALL_THROUGH override=NONE fallThrough=00978b7a delaySlots=0
00978b7a	4a	DEC EDX	flow=FALL_THROUGH override=NONE fallThrough=00978b7b delaySlots=0
00978b7b	7511	JNZ 0x00978b8e	flow=CONDITIONAL_JUMP override=NONE fallThrough=00978b7d delaySlots=0
00978b7d	b901000000	MOV ECX,0x1	flow=FALL_THROUGH override=NONE fallThrough=00978b82 delaySlots=0
00978b82	8708	XCHG dword ptr [EAX],ECX	flow=FALL_THROUGH override=NONE fallThrough=00978b84 delaySlots=0
00978b84	8b16	MOV EDX,dword ptr [ESI]	flow=FALL_THROUGH override=NONE fallThrough=00978b86 delaySlots=0
00978b86	8b02	MOV EAX,dword ptr [EDX]	flow=FALL_THROUGH override=NONE fallThrough=00978b88 delaySlots=0
00978b88	6a01	PUSH 0x1	flow=FALL_THROUGH override=NONE fallThrough=00978b8a delaySlots=0
00978b8a	8bce	MOV ECX,ESI	flow=FALL_THROUGH override=NONE fallThrough=00978b8c delaySlots=0
00978b8c	ffd0	CALL EAX	flow=COMPUTED_CALL override=NONE fallThrough=00978b8e delaySlots=0
00978b8e	5e	POP ESI	flow=FALL_THROUGH override=NONE fallThrough=00978b8f delaySlots=0
00978b8f	5f	POP EDI	flow=FALL_THROUGH override=NONE fallThrough=00978b90 delaySlots=0
00978b90	c21400	RET 0x14	flow=TERMINATOR override=NONE fallThrough=null delaySlots=0
