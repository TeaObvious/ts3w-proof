# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; complete actual saved Ghidra Listing with pristine original bytes; body [[00cfdf40, 00cfe00b]]
00cfdf40	83ec14	SUB ESP,0x14
00cfdf43	53	PUSH EBX
00cfdf44	8bd9	MOV EBX,ECX
00cfdf46	80bbf702000000	CMP byte ptr [EBX + 0x2f7],0x0
00cfdf4d	7405	JZ 0x00cfdf54
00cfdf4f	8b4360	MOV EAX,dword ptr [EBX + 0x60]
00cfdf52	eb03	JMP 0x00cfdf57
00cfdf54	8b435c	MOV EAX,dword ptr [EBX + 0x5c]
00cfdf57	85c0	TEST EAX,EAX
00cfdf59	0f84a8000000	JZ 0x00cfe007
00cfdf5f	56	PUSH ESI
00cfdf60	8b7058	MOV ESI,dword ptr [EAX + 0x58]
00cfdf63	85f6	TEST ESI,ESI
00cfdf65	0f849b000000	JZ 0x00cfe006
00cfdf6b	57	PUSH EDI
00cfdf6c	6a00	PUSH 0x0
00cfdf6e	56	PUSH ESI
00cfdf6f	6a0c	PUSH 0xc
00cfdf71	e84a77c3ff	CALL 0x009356c0
00cfdf76	a114a11e01	MOV EAX,[0x011ea114]
00cfdf7b	83c40c	ADD ESP,0xc
00cfdf7e	50	PUSH EAX
00cfdf7f	8bce	MOV ECX,ESI
00cfdf81	e8da62c3ff	CALL 0x00934260
00cfdf86	8bf8	MOV EDI,EAX
00cfdf88	85ff	TEST EDI,EDI
00cfdf8a	7447	JZ 0x00cfdfd3
00cfdf8c	8bcf	MOV ECX,EDI
00cfdf8e	e86d24c5ff	CALL 0x00950400
00cfdf93	84c0	TEST AL,AL
00cfdf95	743c	JZ 0x00cfdfd3
00cfdf97	8d4c240c	LEA ECX,[ESP + 0xc]
00cfdf9b	51	PUSH ECX
00cfdf9c	8bcf	MOV ECX,EDI
00cfdf9e	e8ed38c5ff	CALL 0x00951890
00cfdfa3	8d4c240c	LEA ECX,[ESP + 0xc]
00cfdfa7	e8942fc5ff	CALL 0x00950f40
00cfdfac	84c0	TEST AL,AL
00cfdfae	7423	JZ 0x00cfdfd3
00cfdfb0	8d4c240c	LEA ECX,[ESP + 0xc]
00cfdfb4	e80724c5ff	CALL 0x009503c0
00cfdfb9	6a00	PUSH 0x0
00cfdfbb	50	PUSH EAX
00cfdfbc	6a0c	PUSH 0xc
00cfdfbe	e8fd76c3ff	CALL 0x009356c0
00cfdfc3	83c40c	ADD ESP,0xc
00cfdfc6	8d4c240c	LEA ECX,[ESP + 0xc]
00cfdfca	e8712fc5ff	CALL 0x00950f40
00cfdfcf	84c0	TEST AL,AL
00cfdfd1	75dd	JNZ 0x00cfdfb0
00cfdfd3	8b83b8010000	MOV EAX,dword ptr [EBX + 0x1b8]
00cfdfd9	85c0	TEST EAX,EAX
00cfdfdb	5f	POP EDI
00cfdfdc	7428	JZ 0x00cfe006
00cfdfde	8b90d4000000	MOV EDX,dword ptr [EAX + 0xd4]
00cfdfe4	3b90d8000000	CMP EDX,dword ptr [EAX + 0xd8]
00cfdfea	741a	JZ 0x00cfe006
00cfdfec	a108df1e01	MOV EAX,[0x011edf08]
00cfdff1	50	PUSH EAX
00cfdff2	8bce	MOV ECX,ESI
00cfdff4	e86762c3ff	CALL 0x00934260
00cfdff9	85c0	TEST EAX,EAX
00cfdffb	7409	JZ 0x00cfe006
00cfdffd	6a00	PUSH 0x0
00cfdfff	8bc8	MOV ECX,EAX
00cfe001	e85ab9f8ff	CALL 0x00c89960
00cfe006	5e	POP ESI
00cfe007	5b	POP EBX
00cfe008	83c414	ADD ESP,0x14
00cfe00b	c3	RET
