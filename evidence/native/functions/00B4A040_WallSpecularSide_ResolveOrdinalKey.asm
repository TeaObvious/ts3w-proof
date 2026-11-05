# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; complete actual saved Ghidra Listing with pristine original bytes; body [[00b4a040, 00b4a096]]
00b4a040	83ec08	SUB ESP,0x8
00b4a043	8b44240c	MOV EAX,dword ptr [ESP + 0xc]
00b4a047	0fb710	MOVZX EDX,word ptr [EAX]
00b4a04a	85d2	TEST EDX,EDX
00b4a04c	8b8188000000	MOV EAX,dword ptr [ECX + 0x88]
00b4a052	8954240c	MOV dword ptr [ESP + 0xc],EDX
00b4a056	7509	JNZ 0x00b4a061
00b4a058	83c040	ADD EAX,0x40
00b4a05b	83c408	ADD ESP,0x8
00b4a05e	c20400	RET 0x4
00b4a061	56	PUSH ESI
00b4a062	8d4c2410	LEA ECX,[ESP + 0x10]
00b4a066	51	PUSH ECX
00b4a067	8d7020	LEA ESI,[EAX + 0x20]
00b4a06a	8d542408	LEA EDX,[ESP + 0x8]
00b4a06e	52	PUSH EDX
00b4a06f	8bce	MOV ECX,ESI
00b4a071	e8bacbe8ff	CALL 0x009d6c30
00b4a076	8b4e08	MOV ECX,dword ptr [ESI + 0x8]
00b4a079	8b5604	MOV EDX,dword ptr [ESI + 0x4]
00b4a07c	8b442404	MOV EAX,dword ptr [ESP + 0x4]
00b4a080	3b048a	CMP EAX,dword ptr [EDX + ECX*0x4]
00b4a083	5e	POP ESI
00b4a084	7409	JZ 0x00b4a08f
00b4a086	83c008	ADD EAX,0x8
00b4a089	83c408	ADD ESP,0x8
00b4a08c	c20400	RET 0x4
00b4a08f	33c0	XOR EAX,EAX
00b4a091	83c408	ADD ESP,0x8
00b4a094	c20400	RET 0x4
