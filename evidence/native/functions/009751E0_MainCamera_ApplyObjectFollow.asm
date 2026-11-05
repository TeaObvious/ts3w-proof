# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

009751e0	55	PUSH EBP	flow=FALL_THROUGH override=NONE fallThrough=009751e1 delaySlots=0
009751e1	8bec	MOV EBP,ESP	flow=FALL_THROUGH override=NONE fallThrough=009751e3 delaySlots=0
009751e3	83e4f0	AND ESP,0xfffffff0	flow=FALL_THROUGH override=NONE fallThrough=009751e6 delaySlots=0
009751e6	83ec18	SUB ESP,0x18	flow=FALL_THROUGH override=NONE fallThrough=009751e9 delaySlots=0
009751e9	56	PUSH ESI	flow=FALL_THROUGH override=NONE fallThrough=009751ea delaySlots=0
009751ea	57	PUSH EDI	flow=FALL_THROUGH override=NONE fallThrough=009751eb delaySlots=0
009751eb	8bf1	MOV ESI,ECX	flow=FALL_THROUGH override=NONE fallThrough=009751ed delaySlots=0
009751ed	e8beebffff	CALL 0x00973db0	flow=UNCONDITIONAL_CALL override=NONE fallThrough=009751f2 delaySlots=0
009751f2	8b8e1c080000	MOV ECX,dword ptr [ESI + 0x81c]	flow=FALL_THROUGH override=NONE fallThrough=009751f8 delaySlots=0
009751f8	8b4508	MOV EAX,dword ptr [EBP + 0x8]	flow=FALL_THROUGH override=NONE fallThrough=009751fb delaySlots=0
009751fb	3bc1	CMP EAX,ECX	flow=FALL_THROUGH override=NONE fallThrough=009751fd delaySlots=0
009751fd	7438	JZ 0x00975237	flow=CONDITIONAL_JUMP override=NONE fallThrough=009751ff delaySlots=0
009751ff	85c0	TEST EAX,EAX	flow=FALL_THROUGH override=NONE fallThrough=00975201 delaySlots=0
00975201	740c	JZ 0x0097520f	flow=CONDITIONAL_JUMP override=NONE fallThrough=00975203 delaySlots=0
00975203	8d5004	LEA EDX,[EAX + 0x4]	flow=FALL_THROUGH override=NONE fallThrough=00975206 delaySlots=0
00975206	bf01000000	MOV EDI,0x1	flow=FALL_THROUGH override=NONE fallThrough=0097520b delaySlots=0
0097520b	f00fc13a	XADD.LOCK dword ptr [EDX],EDI	flow=FALL_THROUGH override=NONE fallThrough=0097520f delaySlots=0
0097520f	85c9	TEST ECX,ECX	flow=FALL_THROUGH override=NONE fallThrough=00975211 delaySlots=0
00975211	89861c080000	MOV dword ptr [ESI + 0x81c],EAX	flow=FALL_THROUGH override=NONE fallThrough=00975217 delaySlots=0
00975217	741e	JZ 0x00975237	flow=CONDITIONAL_JUMP override=NONE fallThrough=00975219 delaySlots=0
00975219	8d4104	LEA EAX,[ECX + 0x4]	flow=FALL_THROUGH override=NONE fallThrough=0097521c delaySlots=0
0097521c	8bd0	MOV EDX,EAX	flow=FALL_THROUGH override=NONE fallThrough=0097521e delaySlots=0
0097521e	83cfff	OR EDI,0xffffffff	flow=FALL_THROUGH override=NONE fallThrough=00975221 delaySlots=0
00975221	f00fc13a	XADD.LOCK dword ptr [EDX],EDI	flow=FALL_THROUGH override=NONE fallThrough=00975225 delaySlots=0
00975225	4f	DEC EDI	flow=FALL_THROUGH override=NONE fallThrough=00975226 delaySlots=0
00975226	750f	JNZ 0x00975237	flow=CONDITIONAL_JUMP override=NONE fallThrough=00975228 delaySlots=0
00975228	ba01000000	MOV EDX,0x1	flow=FALL_THROUGH override=NONE fallThrough=0097522d delaySlots=0
0097522d	8710	XCHG dword ptr [EAX],EDX	flow=FALL_THROUGH override=NONE fallThrough=0097522f delaySlots=0
0097522f	8b01	MOV EAX,dword ptr [ECX]	flow=FALL_THROUGH override=NONE fallThrough=00975231 delaySlots=0
00975231	8b10	MOV EDX,dword ptr [EAX]	flow=FALL_THROUGH override=NONE fallThrough=00975233 delaySlots=0
00975233	6a01	PUSH 0x1	flow=FALL_THROUGH override=NONE fallThrough=00975235 delaySlots=0
00975235	ffd2	CALL EDX	flow=COMPUTED_CALL override=NONE fallThrough=00975237 delaySlots=0
00975237	8b861c080000	MOV EAX,dword ptr [ESI + 0x81c]	flow=FALL_THROUGH override=NONE fallThrough=0097523d delaySlots=0
0097523d	85c0	TEST EAX,EAX	flow=FALL_THROUGH override=NONE fallThrough=0097523f delaySlots=0
0097523f	746e	JZ 0x009752af	flow=CONDITIONAL_JUMP override=NONE fallThrough=00975241 delaySlots=0
00975241	8b480c	MOV ECX,dword ptr [EAX + 0xc]	flow=FALL_THROUGH override=NONE fallThrough=00975244 delaySlots=0
00975244	8b5008	MOV EDX,dword ptr [EAX + 0x8]	flow=FALL_THROUGH override=NONE fallThrough=00975247 delaySlots=0
00975247	6a01	PUSH 0x1	flow=FALL_THROUGH override=NONE fallThrough=00975249 delaySlots=0
00975249	51	PUSH ECX	flow=FALL_THROUGH override=NONE fallThrough=0097524a delaySlots=0
0097524a	52	PUSH EDX	flow=FALL_THROUGH override=NONE fallThrough=0097524b delaySlots=0
0097524b	8bce	MOV ECX,ESI	flow=FALL_THROUGH override=NONE fallThrough=0097524d delaySlots=0
0097524d	e80ecbffff	CALL 0x00971d60	flow=UNCONDITIONAL_CALL override=NONE fallThrough=00975252 delaySlots=0
00975252	8b450c	MOV EAX,dword ptr [EBP + 0xc]	flow=FALL_THROUGH override=NONE fallThrough=00975255 delaySlots=0
00975255	0f2800	MOVAPS XMM0,xmmword ptr [EAX]	flow=FALL_THROUGH override=NONE fallThrough=00975258 delaySlots=0
00975258	8d4c2410	LEA ECX,[ESP + 0x10]	flow=FALL_THROUGH override=NONE fallThrough=0097525c delaySlots=0
0097525c	51	PUSH ECX	flow=FALL_THROUGH override=NONE fallThrough=0097525d delaySlots=0
0097525d	0f298620080000	MOVAPS xmmword ptr [ESI + 0x820],XMM0	flow=FALL_THROUGH override=NONE fallThrough=00975264 delaySlots=0
00975264	8bce	MOV ECX,ESI	flow=FALL_THROUGH override=NONE fallThrough=00975266 delaySlots=0
00975266	c6861808000001	MOV byte ptr [ESI + 0x818],0x1	flow=FALL_THROUGH override=NONE fallThrough=0097526d delaySlots=0
0097526d	e8bebdffff	CALL 0x00971030	flow=UNCONDITIONAL_CALL override=NONE fallThrough=00975272 delaySlots=0
00975272	84c0	TEST AL,AL	flow=FALL_THROUGH override=NONE fallThrough=00975274 delaySlots=0
00975274	7432	JZ 0x009752a8	flow=CONDITIONAL_JUMP override=NONE fallThrough=00975276 delaySlots=0
00975276	8b5514	MOV EDX,dword ptr [EBP + 0x14]	flow=FALL_THROUGH override=NONE fallThrough=00975279 delaySlots=0
00975279	d94510	FLD float ptr [EBP + 0x10]	flow=FALL_THROUGH override=NONE fallThrough=0097527c delaySlots=0
0097527c	52	PUSH EDX	flow=FALL_THROUGH override=NONE fallThrough=0097527d delaySlots=0
0097527d	6a00	PUSH 0x0	flow=FALL_THROUGH override=NONE fallThrough=0097527f delaySlots=0
0097527f	6a00	PUSH 0x0	flow=FALL_THROUGH override=NONE fallThrough=00975281 delaySlots=0
00975281	6a01	PUSH 0x1	flow=FALL_THROUGH override=NONE fallThrough=00975283 delaySlots=0
00975283	51	PUSH ECX	flow=FALL_THROUGH override=NONE fallThrough=00975284 delaySlots=0
00975284	8d442424	LEA EAX,[ESP + 0x24]	flow=FALL_THROUGH override=NONE fallThrough=00975288 delaySlots=0
00975288	d91c24	FSTP float ptr [ESP]	flow=FALL_THROUGH override=NONE fallThrough=0097528b delaySlots=0
0097528b	50	PUSH EAX	flow=FALL_THROUGH override=NONE fallThrough=0097528c delaySlots=0
0097528c	8bce	MOV ECX,ESI	flow=FALL_THROUGH override=NONE fallThrough=0097528e delaySlots=0
0097528e	e84df4ffff	CALL 0x009746e0	flow=UNCONDITIONAL_CALL override=NONE fallThrough=00975293 delaySlots=0
00975293	8bce	MOV ECX,ESI	flow=FALL_THROUGH override=NONE fallThrough=00975295 delaySlots=0
00975295	e886beffff	CALL 0x00971120	flow=UNCONDITIONAL_CALL override=NONE fallThrough=0097529a delaySlots=0
0097529a	888619080000	MOV byte ptr [ESI + 0x819],AL	flow=FALL_THROUGH override=NONE fallThrough=009752a0 delaySlots=0
009752a0	5f	POP EDI	flow=FALL_THROUGH override=NONE fallThrough=009752a1 delaySlots=0
009752a1	5e	POP ESI	flow=FALL_THROUGH override=NONE fallThrough=009752a2 delaySlots=0
009752a2	8be5	MOV ESP,EBP	flow=FALL_THROUGH override=NONE fallThrough=009752a4 delaySlots=0
009752a4	5d	POP EBP	flow=FALL_THROUGH override=NONE fallThrough=009752a5 delaySlots=0
009752a5	c21000	RET 0x10	flow=TERMINATOR override=NONE fallThrough=null delaySlots=0
009752a8	8bce	MOV ECX,ESI	flow=FALL_THROUGH override=NONE fallThrough=009752aa delaySlots=0
009752aa	e801ebffff	CALL 0x00973db0	flow=UNCONDITIONAL_CALL override=NONE fallThrough=009752af delaySlots=0
009752af	5f	POP EDI	flow=FALL_THROUGH override=NONE fallThrough=009752b0 delaySlots=0
009752b0	5e	POP ESI	flow=FALL_THROUGH override=NONE fallThrough=009752b1 delaySlots=0
009752b1	8be5	MOV ESP,EBP	flow=FALL_THROUGH override=NONE fallThrough=009752b3 delaySlots=0
009752b3	5d	POP EBP	flow=FALL_THROUGH override=NONE fallThrough=009752b4 delaySlots=0
009752b4	c21000	RET 0x10	flow=TERMINATOR override=NONE fallThrough=null delaySlots=0
