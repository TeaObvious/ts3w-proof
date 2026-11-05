# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; Graphics_SetFsaaLevel; owned ranges [[0060eca0, 0060eccc]]
0060eca0	56	PUSH ESI
0060eca1	57	PUSH EDI
0060eca2	8b7c240c	MOV EDI,dword ptr [ESP + 0xc]
0060eca6	8bf1	MOV ESI,ECX
0060eca8	397e38	CMP dword ptr [ESI + 0x38],EDI
0060ecab	7419	JZ 0x0060ecc6
0060ecad	807c241000	CMP byte ptr [ESP + 0x10],0x0
0060ecb2	740f	JZ 0x0060ecc3
0060ecb4	57	PUSH EDI
0060ecb5	e826ffffff	CALL 0x0060ebe0
0060ecba	84c0	TEST AL,AL
0060ecbc	7505	JNZ 0x0060ecc3
0060ecbe	5f	POP EDI
0060ecbf	5e	POP ESI
0060ecc0	c20800	RET 0x8
0060ecc3	897e38	MOV dword ptr [ESI + 0x38],EDI
0060ecc6	5f	POP EDI
0060ecc7	b001	MOV AL,0x1
0060ecc9	5e	POP ESI
0060ecca	c20800	RET 0x8
