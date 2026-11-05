# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 complete owned Listing; PondRenderer_WriteTransformedBoundsMidpoint; ranges [[00af8b40, 00af8bb4]]
00af8b40	55	PUSH EBP
00af8b41	8bec	MOV EBP,ESP
00af8b43	83e4f0	AND ESP,0xfffffff0
00af8b46	83ec50	SUB ESP,0x50
00af8b49	0f284160	MOVAPS XMM0,xmmword ptr [ECX + 0x60]
00af8b4d	0f284950	MOVAPS XMM1,xmmword ptr [ECX + 0x50]
00af8b51	8d442410	LEA EAX,[ESP + 0x10]
00af8b55	0f58c1	ADDPS XMM0,XMM1
00af8b58	50	PUSH EAX
00af8b59	0f29442404	MOVAPS xmmword ptr [ESP + 0x4],XMM0
00af8b5e	e86d21c0ff	CALL 0x006facd0
00af8b63	f30f1005b4b5f900	MOVSS XMM0,dword ptr [0x00f9b5b4]
00af8b6b	0f2810	MOVAPS XMM2,xmmword ptr [EAX]
00af8b6e	0f285810	MOVAPS XMM3,xmmword ptr [EAX + 0x10]
00af8b72	0fc6c000	SHUFPS XMM0,XMM0,0x0
00af8b76	0f590424	MULPS XMM0,xmmword ptr [ESP]
00af8b7a	0f28c8	MOVAPS XMM1,XMM0
00af8b7d	0fc6c800	SHUFPS XMM1,XMM0,0x0
00af8b81	0f59ca	MULPS XMM1,XMM2
00af8b84	0f285030	MOVAPS XMM2,xmmword ptr [EAX + 0x30]
00af8b88	0f58ca	ADDPS XMM1,XMM2
00af8b8b	0f28d0	MOVAPS XMM2,XMM0
00af8b8e	0fc6d055	SHUFPS XMM2,XMM0,0x55
00af8b92	0f59d3	MULPS XMM2,XMM3
00af8b95	0f58ca	ADDPS XMM1,XMM2
00af8b98	0f28d0	MOVAPS XMM2,XMM0
00af8b9b	0fc6d0aa	SHUFPS XMM2,XMM0,0xaa
00af8b9f	0f284020	MOVAPS XMM0,xmmword ptr [EAX + 0x20]
00af8ba3	8b4508	MOV EAX,dword ptr [EBP + 0x8]
00af8ba6	0f59d0	MULPS XMM2,XMM0
00af8ba9	0f58ca	ADDPS XMM1,XMM2
00af8bac	0f2908	MOVAPS xmmword ptr [EAX],XMM1
00af8baf	8be5	MOV ESP,EBP
00af8bb1	5d	POP EBP
00af8bb2	c20400	RET 0x4
