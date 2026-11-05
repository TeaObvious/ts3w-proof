# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

0097a030	55	PUSH EBP	flow=FALL_THROUGH override=NONE fallThrough=0097a031 delaySlots=0
0097a031	8bec	MOV EBP,ESP	flow=FALL_THROUGH override=NONE fallThrough=0097a033 delaySlots=0
0097a033	83e4f0	AND ESP,0xfffffff0	flow=FALL_THROUGH override=NONE fallThrough=0097a036 delaySlots=0
0097a036	83ec18	SUB ESP,0x18	flow=FALL_THROUGH override=NONE fallThrough=0097a039 delaySlots=0
0097a039	56	PUSH ESI	flow=FALL_THROUGH override=NONE fallThrough=0097a03a delaySlots=0
0097a03a	8bf1	MOV ESI,ECX	flow=FALL_THROUGH override=NONE fallThrough=0097a03c delaySlots=0
0097a03c	8b8e64060000	MOV ECX,dword ptr [ESI + 0x664]	flow=FALL_THROUGH override=NONE fallThrough=0097a042 delaySlots=0
0097a042	85c9	TEST ECX,ECX	flow=FALL_THROUGH override=NONE fallThrough=0097a044 delaySlots=0
0097a044	57	PUSH EDI	flow=FALL_THROUGH override=NONE fallThrough=0097a045 delaySlots=0
0097a045	742c	JZ 0x0097a073	flow=CONDITIONAL_JUMP override=NONE fallThrough=0097a047 delaySlots=0
0097a047	8d4104	LEA EAX,[ECX + 0x4]	flow=FALL_THROUGH override=NONE fallThrough=0097a04a delaySlots=0
0097a04a	8bd0	MOV EDX,EAX	flow=FALL_THROUGH override=NONE fallThrough=0097a04c delaySlots=0
0097a04c	83cfff	OR EDI,0xffffffff	flow=FALL_THROUGH override=NONE fallThrough=0097a04f delaySlots=0
0097a04f	f00fc13a	XADD.LOCK dword ptr [EDX],EDI	flow=FALL_THROUGH override=NONE fallThrough=0097a053 delaySlots=0
0097a053	4f	DEC EDI	flow=FALL_THROUGH override=NONE fallThrough=0097a054 delaySlots=0
0097a054	7513	JNZ 0x0097a069	flow=CONDITIONAL_JUMP override=NONE fallThrough=0097a056 delaySlots=0
0097a056	ba01000000	MOV EDX,0x1	flow=FALL_THROUGH override=NONE fallThrough=0097a05b delaySlots=0
0097a05b	8710	XCHG dword ptr [EAX],EDX	flow=FALL_THROUGH override=NONE fallThrough=0097a05d delaySlots=0
0097a05d	85c9	TEST ECX,ECX	flow=FALL_THROUGH override=NONE fallThrough=0097a05f delaySlots=0
0097a05f	7408	JZ 0x0097a069	flow=CONDITIONAL_JUMP override=NONE fallThrough=0097a061 delaySlots=0
0097a061	8b01	MOV EAX,dword ptr [ECX]	flow=FALL_THROUGH override=NONE fallThrough=0097a063 delaySlots=0
0097a063	8b10	MOV EDX,dword ptr [EAX]	flow=FALL_THROUGH override=NONE fallThrough=0097a065 delaySlots=0
0097a065	6a01	PUSH 0x1	flow=FALL_THROUGH override=NONE fallThrough=0097a067 delaySlots=0
0097a067	ffd2	CALL EDX	flow=COMPUTED_CALL override=NONE fallThrough=0097a069 delaySlots=0
0097a069	c7866406000000000000	MOV dword ptr [ESI + 0x664],0x0	flow=FALL_THROUGH override=NONE fallThrough=0097a073 delaySlots=0
0097a073	c6866006000000	MOV byte ptr [ESI + 0x660],0x0	flow=FALL_THROUGH override=NONE fallThrough=0097a07a delaySlots=0
0097a07a	e8f1d4fbff	CALL 0x00937570	flow=UNCONDITIONAL_CALL override=NONE fallThrough=0097a07f delaySlots=0
0097a07f	85c0	TEST EAX,EAX	flow=FALL_THROUGH override=NONE fallThrough=0097a081 delaySlots=0
0097a081	746a	JZ 0x0097a0ed	flow=CONDITIONAL_JUMP override=NONE fallThrough=0097a083 delaySlots=0
0097a083	8b4d0c	MOV ECX,dword ptr [EBP + 0xc]	flow=FALL_THROUGH override=NONE fallThrough=0097a086 delaySlots=0
0097a086	8b5508	MOV EDX,dword ptr [EBP + 0x8]	flow=FALL_THROUGH override=NONE fallThrough=0097a089 delaySlots=0
0097a089	51	PUSH ECX	flow=FALL_THROUGH override=NONE fallThrough=0097a08a delaySlots=0
0097a08a	52	PUSH EDX	flow=FALL_THROUGH override=NONE fallThrough=0097a08b delaySlots=0
0097a08b	8bc8	MOV ECX,EAX	flow=FALL_THROUGH override=NONE fallThrough=0097a08d delaySlots=0
0097a08d	e8eedefbff	CALL 0x00937f80	flow=UNCONDITIONAL_CALL override=NONE fallThrough=0097a092 delaySlots=0
0097a092	85c0	TEST EAX,EAX	flow=FALL_THROUGH override=NONE fallThrough=0097a094 delaySlots=0
0097a094	898664060000	MOV dword ptr [ESI + 0x664],EAX	flow=FALL_THROUGH override=NONE fallThrough=0097a09a delaySlots=0
0097a09a	7451	JZ 0x0097a0ed	flow=CONDITIONAL_JUMP override=NONE fallThrough=0097a09c delaySlots=0
0097a09c	83c004	ADD EAX,0x4	flow=FALL_THROUGH override=NONE fallThrough=0097a09f delaySlots=0
0097a09f	b901000000	MOV ECX,0x1	flow=FALL_THROUGH override=NONE fallThrough=0097a0a4 delaySlots=0
0097a0a4	f00fc108	XADD.LOCK dword ptr [EAX],ECX	flow=FALL_THROUGH override=NONE fallThrough=0097a0a8 delaySlots=0
0097a0a8	8b5510	MOV EDX,dword ptr [EBP + 0x10]	flow=FALL_THROUGH override=NONE fallThrough=0097a0ab delaySlots=0
0097a0ab	0f2802	MOVAPS XMM0,xmmword ptr [EDX]	flow=FALL_THROUGH override=NONE fallThrough=0097a0ae delaySlots=0
0097a0ae	8d442410	LEA EAX,[ESP + 0x10]	flow=FALL_THROUGH override=NONE fallThrough=0097a0b2 delaySlots=0
0097a0b2	0f298670060000	MOVAPS xmmword ptr [ESI + 0x670],XMM0	flow=FALL_THROUGH override=NONE fallThrough=0097a0b9 delaySlots=0
0097a0b9	50	PUSH EAX	flow=FALL_THROUGH override=NONE fallThrough=0097a0ba delaySlots=0
0097a0ba	8bce	MOV ECX,ESI	flow=FALL_THROUGH override=NONE fallThrough=0097a0bc delaySlots=0
0097a0bc	c6866006000001	MOV byte ptr [ESI + 0x660],0x1	flow=FALL_THROUGH override=NONE fallThrough=0097a0c3 delaySlots=0
0097a0c3	e8c8f5ffff	CALL 0x00979690	flow=UNCONDITIONAL_CALL override=NONE fallThrough=0097a0c8 delaySlots=0
0097a0c8	84c0	TEST AL,AL	flow=FALL_THROUGH override=NONE fallThrough=0097a0ca delaySlots=0
0097a0ca	741a	JZ 0x0097a0e6	flow=CONDITIONAL_JUMP override=NONE fallThrough=0097a0cc delaySlots=0
0097a0cc	d9e8	FLD1	flow=FALL_THROUGH override=NONE fallThrough=0097a0ce delaySlots=0
0097a0ce	51	PUSH ECX	flow=FALL_THROUGH override=NONE fallThrough=0097a0cf delaySlots=0
0097a0cf	8d4c2414	LEA ECX,[ESP + 0x14]	flow=FALL_THROUGH override=NONE fallThrough=0097a0d3 delaySlots=0
0097a0d3	d91c24	FSTP float ptr [ESP]	flow=FALL_THROUGH override=NONE fallThrough=0097a0d6 delaySlots=0
0097a0d6	51	PUSH ECX	flow=FALL_THROUGH override=NONE fallThrough=0097a0d7 delaySlots=0
0097a0d7	8bce	MOV ECX,ESI	flow=FALL_THROUGH override=NONE fallThrough=0097a0d9 delaySlots=0
0097a0d9	e812ffffff	CALL 0x00979ff0	flow=UNCONDITIONAL_CALL override=NONE fallThrough=0097a0de delaySlots=0
0097a0de	5f	POP EDI	flow=FALL_THROUGH override=NONE fallThrough=0097a0df delaySlots=0
0097a0df	5e	POP ESI	flow=FALL_THROUGH override=NONE fallThrough=0097a0e0 delaySlots=0
0097a0e0	8be5	MOV ESP,EBP	flow=FALL_THROUGH override=NONE fallThrough=0097a0e2 delaySlots=0
0097a0e2	5d	POP EBP	flow=FALL_THROUGH override=NONE fallThrough=0097a0e3 delaySlots=0
0097a0e3	c20c00	RET 0xc	flow=TERMINATOR override=NONE fallThrough=null delaySlots=0
0097a0e6	8bce	MOV ECX,ESI	flow=FALL_THROUGH override=NONE fallThrough=0097a0e8 delaySlots=0
0097a0e8	e8c3fcffff	CALL 0x00979db0	flow=UNCONDITIONAL_CALL override=NONE fallThrough=0097a0ed delaySlots=0
0097a0ed	5f	POP EDI	flow=FALL_THROUGH override=NONE fallThrough=0097a0ee delaySlots=0
0097a0ee	5e	POP ESI	flow=FALL_THROUGH override=NONE fallThrough=0097a0ef delaySlots=0
0097a0ef	8be5	MOV ESP,EBP	flow=FALL_THROUGH override=NONE fallThrough=0097a0f1 delaySlots=0
0097a0f1	5d	POP EBP	flow=FALL_THROUGH override=NONE fallThrough=0097a0f2 delaySlots=0
0097a0f2	c20c00	RET 0xc	flow=TERMINATOR override=NONE fallThrough=null delaySlots=0
