# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; complete actual saved Ghidra Listing with pristine original bytes; body [[00cc9870, 00cc98f9]]
00cc9870	83ec10	SUB ESP,0x10
00cc9873	8b54241c	MOV EDX,dword ptr [ESP + 0x1c]
00cc9877	8b442414	MOV EAX,dword ptr [ESP + 0x14]
00cc987b	56	PUSH ESI
00cc987c	8bf1	MOV ESI,ECX
00cc987e	8b4c241c	MOV ECX,dword ptr [ESP + 0x1c]
00cc9882	894c2408	MOV dword ptr [ESP + 0x8],ECX
00cc9886	8d4c2404	LEA ECX,[ESP + 0x4]
00cc988a	8954240c	MOV dword ptr [ESP + 0xc],EDX
00cc988e	51	PUSH ECX
00cc988f	89442408	MOV dword ptr [ESP + 0x8],EAX
00cc9893	8b442428	MOV EAX,dword ptr [ESP + 0x28]
00cc9897	8d542424	LEA EDX,[ESP + 0x24]
00cc989b	52	PUSH EDX
00cc989c	8d4e10	LEA ECX,[ESI + 0x10]
00cc989f	89442418	MOV dword ptr [ESP + 0x18],EAX
00cc98a3	e8a8faffff	CALL 0x00cc9350
00cc98a8	8b00	MOV EAX,dword ptr [EAX]
00cc98aa	83c614	ADD ESI,0x14
00cc98ad	3bc6	CMP EAX,ESI
00cc98af	7440	JZ 0x00cc98f1
00cc98b1	8a5020	MOV DL,byte ptr [EAX + 0x20]
00cc98b4	8b4c2428	MOV ECX,dword ptr [ESP + 0x28]
00cc98b8	8b74242c	MOV ESI,dword ptr [ESP + 0x2c]
00cc98bc	8811	MOV byte ptr [ECX],DL
00cc98be	8b5024	MOV EDX,dword ptr [EAX + 0x24]
00cc98c1	8916	MOV dword ptr [ESI],EDX
00cc98c3	803900	CMP byte ptr [ECX],0x0
00cc98c6	7520	JNZ 0x00cc98e8
00cc98c8	57	PUSH EDI
00cc98c9	8b7c2434	MOV EDI,dword ptr [ESP + 0x34]
00cc98cd	85ff	TEST EDI,EDI
00cc98cf	7416	JZ 0x00cc98e7
00cc98d1	8d7028	LEA ESI,[EAX + 0x28]
00cc98d4	8bce	MOV ECX,ESI
00cc98d6	e835d6e0ff	CALL 0x00ad6f10
00cc98db	84c0	TEST AL,AL
00cc98dd	7408	JZ 0x00cc98e7
00cc98df	56	PUSH ESI
00cc98e0	8bcf	MOV ECX,EDI
00cc98e2	e859eee0ff	CALL 0x00ad8740
00cc98e7	5f	POP EDI
00cc98e8	b001	MOV AL,0x1
00cc98ea	5e	POP ESI
00cc98eb	83c410	ADD ESP,0x10
00cc98ee	c21c00	RET 0x1c
00cc98f1	32c0	XOR AL,AL
00cc98f3	5e	POP ESI
00cc98f4	83c410	ADD ESP,0x10
00cc98f7	c21c00	RET 0x1c
