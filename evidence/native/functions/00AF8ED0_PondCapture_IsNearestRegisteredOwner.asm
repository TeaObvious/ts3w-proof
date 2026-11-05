# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 complete owned Listing; PondCapture_IsNearestRegisteredOwner; ranges [[00af8ed0, 00af8f80]]
00af8ed0	55	PUSH EBP
00af8ed1	8bec	MOV EBP,ESP
00af8ed3	83e4f0	AND ESP,0xfffffff0
00af8ed6	83ec44	SUB ESP,0x44
00af8ed9	f30f1005ccb00601	MOVSS XMM0,dword ptr [0x0106b0cc]
00af8ee1	53	PUSH EBX
00af8ee2	8bd9	MOV EBX,ECX
00af8ee4	56	PUSH ESI
00af8ee5	8b33	MOV ESI,dword ptr [EBX]
00af8ee7	3bf3	CMP ESI,EBX
00af8ee9	0fc6c000	SHUFPS XMM0,XMM0,0x0
00af8eed	57	PUSH EDI
00af8eee	c744240c00000000	MOV dword ptr [ESP + 0xc],0x0
00af8ef6	0f29442410	MOVAPS xmmword ptr [ESP + 0x10],XMM0
00af8efb	746f	JZ 0x00af8f6c
00af8efd	85f6	TEST ESI,ESI
00af8eff	7408	JZ 0x00af8f09
00af8f01	8dbef0fdffff	LEA EDI,[ESI + 0xfffffdf0]
00af8f07	eb02	JMP 0x00af8f0b
00af8f09	33ff	XOR EDI,EDI
00af8f0b	8d442440	LEA EAX,[ESP + 0x40]
00af8f0f	50	PUSH EAX
00af8f10	8bcf	MOV ECX,EDI
00af8f12	e829fcffff	CALL 0x00af8b40
00af8f17	8b4d0c	MOV ECX,dword ptr [EBP + 0xc]
00af8f1a	0f2809	MOVAPS XMM1,xmmword ptr [ECX]
00af8f1d	0f2800	MOVAPS XMM0,xmmword ptr [EAX]
00af8f20	0f5cc1	SUBPS XMM0,XMM1
00af8f23	0f59c0	MULPS XMM0,XMM0
00af8f26	0f28c8	MOVAPS XMM1,XMM0
00af8f29	0fc6c102	SHUFPS XMM0,XMM1,0x2
00af8f2d	0f28d1	MOVAPS XMM2,XMM1
00af8f30	0fc6d101	SHUFPS XMM2,XMM1,0x1
00af8f34	0f58c2	ADDPS XMM0,XMM2
00af8f37	0f58c1	ADDPS XMM0,XMM1
00af8f3a	f30f104c2410	MOVSS XMM1,dword ptr [ESP + 0x10]
00af8f40	0fc6c000	SHUFPS XMM0,XMM0,0x0
00af8f44	f30f114c2420	MOVSS dword ptr [ESP + 0x20],XMM1
00af8f4a	f30f104c2420	MOVSS XMM1,dword ptr [ESP + 0x20]
00af8f50	f30f11442430	MOVSS dword ptr [ESP + 0x30],XMM0
00af8f56	0f2f4c2430	COMISS XMM1,dword ptr [ESP + 0x30]
00af8f5b	7609	JBE 0x00af8f66
00af8f5d	897c240c	MOV dword ptr [ESP + 0xc],EDI
00af8f61	0f29442410	MOVAPS xmmword ptr [ESP + 0x10],XMM0
00af8f66	8b36	MOV ESI,dword ptr [ESI]
00af8f68	3bf3	CMP ESI,EBX
00af8f6a	7591	JNZ 0x00af8efd
00af8f6c	8b54240c	MOV EDX,dword ptr [ESP + 0xc]
00af8f70	33c0	XOR EAX,EAX
00af8f72	395508	CMP dword ptr [EBP + 0x8],EDX
00af8f75	5f	POP EDI
00af8f76	5e	POP ESI
00af8f77	0f94c0	SETZ AL
00af8f7a	5b	POP EBX
00af8f7b	8be5	MOV ESP,EBP
00af8f7d	5d	POP EBP
00af8f7e	c20800	RET 0x8
