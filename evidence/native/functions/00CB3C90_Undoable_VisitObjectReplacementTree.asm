# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; complete actual saved Ghidra Listing with pristine original bytes; body [[00cb3c90, 00cb3d4c]]
00cb3c90	56	PUSH ESI
00cb3c91	8b742418	MOV ESI,dword ptr [ESP + 0x18]
00cb3c95	85f6	TEST ESI,ESI
00cb3c97	0f84ae000000	JZ 0x00cb3d4b
00cb3c9d	53	PUSH EBX
00cb3c9e	55	PUSH EBP
00cb3c9f	8b6c241c	MOV EBP,dword ptr [ESP + 0x1c]
00cb3ca3	57	PUSH EDI
00cb3ca4	8b7e1c	MOV EDI,dword ptr [ESI + 0x1c]
00cb3ca7	2b7e18	SUB EDI,dword ptr [ESI + 0x18]
00cb3caa	bb00000000	MOV EBX,0x0
00cb3caf	c1ff02	SAR EDI,0x2
00cb3cb2	7428	JZ 0x00cb3cdc
00cb3cb4	53	PUSH EBX
00cb3cb5	8bce	MOV ECX,ESI
00cb3cb7	e8646d0600	CALL 0x00d1aa20
00cb3cbc	8b4c2418	MOV ECX,dword ptr [ESP + 0x18]
00cb3cc0	8b542414	MOV EDX,dword ptr [ESP + 0x14]
00cb3cc4	50	PUSH EAX
00cb3cc5	8b442420	MOV EAX,dword ptr [ESP + 0x20]
00cb3cc9	55	PUSH EBP
00cb3cca	50	PUSH EAX
00cb3ccb	51	PUSH ECX
00cb3ccc	52	PUSH EDX
00cb3ccd	e8beffffff	CALL 0x00cb3c90
00cb3cd2	83c301	ADD EBX,0x1
00cb3cd5	83c414	ADD ESP,0x14
00cb3cd8	3bdf	CMP EBX,EDI
00cb3cda	72d8	JC 0x00cb3cb4
00cb3cdc	8b4608	MOV EAX,dword ptr [ESI + 0x8]
00cb3cdf	8b5004	MOV EDX,dword ptr [EAX + 0x4]
00cb3ce2	8d4e08	LEA ECX,[ESI + 0x8]
00cb3ce5	680003a907	PUSH 0x7a90300
00cb3cea	ffd2	CALL EDX
00cb3cec	85c0	TEST EAX,EAX
00cb3cee	7419	JZ 0x00cb3d09
00cb3cf0	8b4c241c	MOV ECX,dword ptr [ESP + 0x1c]
00cb3cf4	8b10	MOV EDX,dword ptr [EAX]
00cb3cf6	8b5208	MOV EDX,dword ptr [EDX + 0x8]
00cb3cf9	55	PUSH EBP
00cb3cfa	51	PUSH ECX
00cb3cfb	8b4c2420	MOV ECX,dword ptr [ESP + 0x20]
00cb3cff	51	PUSH ECX
00cb3d00	8b4c2420	MOV ECX,dword ptr [ESP + 0x20]
00cb3d04	51	PUSH ECX
00cb3d05	8bc8	MOV ECX,EAX
00cb3d07	ffd2	CALL EDX
00cb3d09	8b5e2c	MOV EBX,dword ptr [ESI + 0x2c]
00cb3d0c	2b5e28	SUB EBX,dword ptr [ESI + 0x28]
00cb3d0f	bf00000000	MOV EDI,0x0
00cb3d14	c1fb02	SAR EBX,0x2
00cb3d17	742f	JZ 0x00cb3d48
00cb3d19	8da42400000000	LEA ESP,[ESP]
00cb3d20	57	PUSH EDI
00cb3d21	8bce	MOV ECX,ESI
00cb3d23	e8186d0600	CALL 0x00d1aa40
00cb3d28	8b4c2418	MOV ECX,dword ptr [ESP + 0x18]
00cb3d2c	8b542414	MOV EDX,dword ptr [ESP + 0x14]
00cb3d30	50	PUSH EAX
00cb3d31	8b442420	MOV EAX,dword ptr [ESP + 0x20]
00cb3d35	55	PUSH EBP
00cb3d36	50	PUSH EAX
00cb3d37	51	PUSH ECX
00cb3d38	52	PUSH EDX
00cb3d39	e852ffffff	CALL 0x00cb3c90
00cb3d3e	83c701	ADD EDI,0x1
00cb3d41	83c414	ADD ESP,0x14
00cb3d44	3bfb	CMP EDI,EBX
00cb3d46	72d8	JC 0x00cb3d20
00cb3d48	5f	POP EDI
00cb3d49	5d	POP EBP
00cb3d4a	5b	POP EBX
00cb3d4b	5e	POP ESI
00cb3d4c	c3	RET
