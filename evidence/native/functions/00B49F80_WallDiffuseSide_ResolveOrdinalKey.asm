# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; complete actual saved Ghidra Listing with pristine original bytes; body [[00b49f80, 00b49fd3]]
00b49f80	83ec08	SUB ESP,0x8
00b49f83	8b44240c	MOV EAX,dword ptr [ESP + 0xc]
00b49f87	0fb710	MOVZX EDX,word ptr [EAX]
00b49f8a	85d2	TEST EDX,EDX
00b49f8c	8b4178	MOV EAX,dword ptr [ECX + 0x78]
00b49f8f	8954240c	MOV dword ptr [ESP + 0xc],EDX
00b49f93	7509	JNZ 0x00b49f9e
00b49f95	83c040	ADD EAX,0x40
00b49f98	83c408	ADD ESP,0x8
00b49f9b	c20400	RET 0x4
00b49f9e	56	PUSH ESI
00b49f9f	8d4c2410	LEA ECX,[ESP + 0x10]
00b49fa3	51	PUSH ECX
00b49fa4	8d7020	LEA ESI,[EAX + 0x20]
00b49fa7	8d542408	LEA EDX,[ESP + 0x8]
00b49fab	52	PUSH EDX
00b49fac	8bce	MOV ECX,ESI
00b49fae	e87dcce8ff	CALL 0x009d6c30
00b49fb3	8b4e08	MOV ECX,dword ptr [ESI + 0x8]
00b49fb6	8b5604	MOV EDX,dword ptr [ESI + 0x4]
00b49fb9	8b442404	MOV EAX,dword ptr [ESP + 0x4]
00b49fbd	3b048a	CMP EAX,dword ptr [EDX + ECX*0x4]
00b49fc0	5e	POP ESI
00b49fc1	7409	JZ 0x00b49fcc
00b49fc3	83c008	ADD EAX,0x8
00b49fc6	83c408	ADD ESP,0x8
00b49fc9	c20400	RET 0x4
00b49fcc	33c0	XOR EAX,EAX
00b49fce	83c408	ADD ESP,0x8
00b49fd1	c20400	RET 0x4
