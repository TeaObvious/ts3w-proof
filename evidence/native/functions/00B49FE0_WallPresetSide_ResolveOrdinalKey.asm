# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; complete actual saved Ghidra Listing with pristine original bytes; body [[00b49fe0, 00b4a036]]
00b49fe0	83ec08	SUB ESP,0x8
00b49fe3	8b44240c	MOV EAX,dword ptr [ESP + 0xc]
00b49fe7	0fb710	MOVZX EDX,word ptr [EAX]
00b49fea	85d2	TEST EDX,EDX
00b49fec	8b8180000000	MOV EAX,dword ptr [ECX + 0x80]
00b49ff2	8954240c	MOV dword ptr [ESP + 0xc],EDX
00b49ff6	7509	JNZ 0x00b4a001
00b49ff8	83c040	ADD EAX,0x40
00b49ffb	83c408	ADD ESP,0x8
00b49ffe	c20400	RET 0x4
00b4a001	56	PUSH ESI
00b4a002	8d4c2410	LEA ECX,[ESP + 0x10]
00b4a006	51	PUSH ECX
00b4a007	8d7020	LEA ESI,[EAX + 0x20]
00b4a00a	8d542408	LEA EDX,[ESP + 0x8]
00b4a00e	52	PUSH EDX
00b4a00f	8bce	MOV ECX,ESI
00b4a011	e81acce8ff	CALL 0x009d6c30
00b4a016	8b4e08	MOV ECX,dword ptr [ESI + 0x8]
00b4a019	8b5604	MOV EDX,dword ptr [ESI + 0x4]
00b4a01c	8b442404	MOV EAX,dword ptr [ESP + 0x4]
00b4a020	3b048a	CMP EAX,dword ptr [EDX + ECX*0x4]
00b4a023	5e	POP ESI
00b4a024	7409	JZ 0x00b4a02f
00b4a026	83c008	ADD EAX,0x8
00b4a029	83c408	ADD ESP,0x8
00b4a02c	c20400	RET 0x4
00b4a02f	33c0	XOR EAX,EAX
00b4a031	83c408	ADD ESP,0x8
00b4a034	c20400	RET 0x4
