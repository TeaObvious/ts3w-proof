# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; complete actual saved Ghidra Listing with pristine original bytes; body [[00b4a990, 00b4aa4b]]
00b4a990	83ec0c	SUB ESP,0xc
00b4a993	0cff	OR AL,0xff
00b4a995	56	PUSH ESI
00b4a996	57	PUSH EDI
00b4a997	8b7c2418	MOV EDI,dword ptr [ESP + 0x18]
00b4a99b	8844240c	MOV byte ptr [ESP + 0xc],AL
00b4a99f	8844240d	MOV byte ptr [ESP + 0xd],AL
00b4a9a3	8844240f	MOV byte ptr [ESP + 0xf],AL
00b4a9a7	88442410	MOV byte ptr [ESP + 0x10],AL
00b4a9ab	8d44240c	LEA EAX,[ESP + 0xc]
00b4a9af	50	PUSH EAX
00b4a9b0	57	PUSH EDI
00b4a9b1	8bf1	MOV ESI,ECX
00b4a9b3	c744241000000000	MOV dword ptr [ESP + 0x10],0x0
00b4a9bb	c644241600	MOV byte ptr [ESP + 0x16],0x0
00b4a9c0	c644241900	MOV byte ptr [ESP + 0x19],0x0
00b4a9c5	e876d3ffff	CALL 0x00b47d40
00b4a9ca	8b4e64	MOV ECX,dword ptr [ESI + 0x64]
00b4a9cd	57	PUSH EDI
00b4a9ce	e8fd6e0f00	CALL 0x00c418d0
00b4a9d3	85c0	TEST EAX,EAX
00b4a9d5	7458	JZ 0x00b4aa2f
00b4a9d7	8a4f02	MOV CL,byte ptr [EDI + 0x2]
00b4a9da	3a4c240e	CMP CL,byte ptr [ESP + 0xe]
00b4a9de	7533	JNZ 0x00b4aa13
00b4a9e0	8a17	MOV DL,byte ptr [EDI]
00b4a9e2	3a54240c	CMP DL,byte ptr [ESP + 0xc]
00b4a9e6	752b	JNZ 0x00b4aa13
00b4a9e8	8a4f01	MOV CL,byte ptr [EDI + 0x1]
00b4a9eb	3a4c240d	CMP CL,byte ptr [ESP + 0xd]
00b4a9ef	7522	JNZ 0x00b4aa13
00b4a9f1	8a5705	MOV DL,byte ptr [EDI + 0x5]
00b4a9f4	3a542411	CMP DL,byte ptr [ESP + 0x11]
00b4a9f8	7519	JNZ 0x00b4aa13
00b4a9fa	8a4f03	MOV CL,byte ptr [EDI + 0x3]
00b4a9fd	3a4c240f	CMP CL,byte ptr [ESP + 0xf]
00b4aa01	7510	JNZ 0x00b4aa13
00b4aa03	8a5704	MOV DL,byte ptr [EDI + 0x4]
00b4aa06	3a542410	CMP DL,byte ptr [ESP + 0x10]
00b4aa0a	7507	JNZ 0x00b4aa13
00b4aa0c	b901000000	MOV ECX,0x1
00b4aa11	eb02	JMP 0x00b4aa15
00b4aa13	33c9	XOR ECX,ECX
00b4aa15	8b00	MOV EAX,dword ptr [EAX]
00b4aa17	33d2	XOR EDX,EDX
00b4aa19	84c9	TEST CL,CL
00b4aa1b	8b4e6c	MOV ECX,dword ptr [ESI + 0x6c]
00b4aa1e	0f94c2	SETZ DL
00b4aa21	52	PUSH EDX
00b4aa22	50	PUSH EAX
00b4aa23	e818a60f00	CALL 0x00c45040
00b4aa28	0fb7c0	MOVZX EAX,AX
00b4aa2b	89442408	MOV dword ptr [ESP + 0x8],EAX
00b4aa2f	8d4c2408	LEA ECX,[ESP + 0x8]
00b4aa33	51	PUSH ECX
00b4aa34	8bce	MOV ECX,ESI
00b4aa36	e8e5f4ffff	CALL 0x00b49f20
00b4aa3b	85c0	TEST EAX,EAX
00b4aa3d	5f	POP EDI
00b4aa3e	5e	POP ESI
00b4aa3f	7505	JNZ 0x00b4aa46
00b4aa41	b8b8d11e01	MOV EAX,0x11ed1b8
00b4aa46	83c40c	ADD ESP,0xc
00b4aa49	c20400	RET 0x4
