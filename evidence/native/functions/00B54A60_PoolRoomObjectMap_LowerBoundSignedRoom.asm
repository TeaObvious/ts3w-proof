# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; complete actual saved Ghidra Listing with pristine original bytes; body [[00b54a60, 00b54aae]]
00b54a60	8b4c2408	MOV ECX,dword ptr [ESP + 0x8]
00b54a64	56	PUSH ESI
00b54a65	8b742408	MOV ESI,dword ptr [ESP + 0x8]
00b54a69	2bce	SUB ECX,ESI
00b54a6b	b8abaaaa2a	MOV EAX,0x2aaaaaab
00b54a70	f7e9	IMUL ECX
00b54a72	c1fa02	SAR EDX,0x2
00b54a75	8bca	MOV ECX,EDX
00b54a77	c1e91f	SHR ECX,0x1f
00b54a7a	03ca	ADD ECX,EDX
00b54a7c	85c9	TEST ECX,ECX
00b54a7e	7e2b	JLE 0x00b54aab
00b54a80	8b442410	MOV EAX,dword ptr [ESP + 0x10]
00b54a84	57	PUSH EDI
00b54a85	0fb738	MOVZX EDI,word ptr [EAX]
00b54a88	8bc1	MOV EAX,ECX
00b54a8a	d1f8	SAR EAX,0x1
00b54a8c	8d1440	LEA EDX,[EAX + EAX*0x2]
00b54a8f	66393cd6	CMP word ptr [ESI + EDX*0x8],DI
00b54a93	8d14d6	LEA EDX,[ESI + EDX*0x8]
00b54a96	7d0c	JGE 0x00b54aa4
00b54a98	8d7218	LEA ESI,[EDX + 0x18]
00b54a9b	83caff	OR EDX,0xffffffff
00b54a9e	2bd0	SUB EDX,EAX
00b54aa0	03ca	ADD ECX,EDX
00b54aa2	eb02	JMP 0x00b54aa6
00b54aa4	8bc8	MOV ECX,EAX
00b54aa6	85c9	TEST ECX,ECX
00b54aa8	7fde	JG 0x00b54a88
00b54aaa	5f	POP EDI
00b54aab	8bc6	MOV EAX,ESI
00b54aad	5e	POP ESI
00b54aae	c3	RET
