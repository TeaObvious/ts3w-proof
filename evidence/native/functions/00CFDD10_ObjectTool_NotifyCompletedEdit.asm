# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; complete actual saved Ghidra Listing with pristine original bytes; body [[00cfdd10, 00cfde3d]]
00cfdd10	8b442404	MOV EAX,dword ptr [ESP + 0x4]
00cfdd14	53	PUSH EBX
00cfdd15	55	PUSH EBP
00cfdd16	56	PUSH ESI
00cfdd17	57	PUSH EDI
00cfdd18	50	PUSH EAX
00cfdd19	8bf9	MOV EDI,ECX
00cfdd1b	e8c0d8ffff	CALL 0x00cfb5e0
00cfdd20	83bf9003000000	CMP dword ptr [EDI + 0x390],0x0
00cfdd27	7423	JZ 0x00cfdd4c
00cfdd29	80bf9403000000	CMP byte ptr [EDI + 0x394],0x0
00cfdd30	741a	JZ 0x00cfdd4c
00cfdd32	e8a9f579ff	CALL 0x0049d2e0
00cfdd37	8d8f74030000	LEA ECX,[EDI + 0x374]
00cfdd3d	51	PUSH ECX
00cfdd3e	8bc8	MOV ECX,EAX
00cfdd40	e84bfa79ff	CALL 0x0049d790
00cfdd45	c6879403000000	MOV byte ptr [EDI + 0x394],0x0
00cfdd4c	6a0c	PUSH 0xc
00cfdd4e	e8fd13deff	CALL 0x00adf150
00cfdd53	83c404	ADD ESP,0x4
00cfdd56	85c0	TEST EAX,EAX
00cfdd58	0f84c7000000	JZ 0x00cfde25
00cfdd5e	c7008c5f0601	MOV dword ptr [EAX],0x1065f8c
00cfdd64	33d2	XOR EDX,EDX
00cfdd66	8d4804	LEA ECX,[EAX + 0x4]
00cfdd69	8711	XCHG dword ptr [ECX],EDX
00cfdd6b	c7008c5f0601	MOV dword ptr [EAX],0x1065f8c
00cfdd71	8b10	MOV EDX,dword ptr [EAX]
00cfdd73	8bf0	MOV ESI,EAX
00cfdd75	8bc8	MOV ECX,EAX
00cfdd77	8b4204	MOV EAX,dword ptr [EDX + 0x4]
00cfdd7a	ffd0	CALL EAX
00cfdd7c	8b4f0c	MOV ECX,dword ptr [EDI + 0xc]
00cfdd7f	894e08	MOV dword ptr [ESI + 0x8],ECX
00cfdd82	e869e774ff	CALL 0x0044c4f0
00cfdd87	8b10	MOV EDX,dword ptr [EAX]
00cfdd89	6a00	PUSH 0x0
00cfdd8b	6a00	PUSH 0x0
00cfdd8d	56	PUSH ESI
00cfdd8e	8bc8	MOV ECX,EAX
00cfdd90	8b421c	MOV EAX,dword ptr [EDX + 0x1c]
00cfdd93	681391fd07	PUSH 0x7fd9113
00cfdd98	ffd0	CALL EAX
00cfdd9a	8b16	MOV EDX,dword ptr [ESI]
00cfdd9c	8b4208	MOV EAX,dword ptr [EDX + 0x8]
00cfdd9f	8bce	MOV ECX,ESI
00cfdda1	ffd0	CALL EAX
00cfdda3	8b5c2418	MOV EBX,dword ptr [ESP + 0x18]
00cfdda7	8b6c241c	MOV EBP,dword ptr [ESP + 0x1c]
00cfddab	8bcb	MOV ECX,EBX
00cfddad	0bcd	OR ECX,EBP
00cfddaf	0f8482000000	JZ 0x00cfde37
00cfddb5	8b4c2414	MOV ECX,dword ptr [ESP + 0x14]
00cfddb9	85c9	TEST ECX,ECX
00cfddbb	743c	JZ 0x00cfddf9
00cfddbd	8b1558a11e01	MOV EDX,dword ptr [0x011ea158]
00cfddc3	52	PUSH EDX
00cfddc4	e89764c3ff	CALL 0x00934260
00cfddc9	85c0	TEST EAX,EAX
00cfddcb	742c	JZ 0x00cfddf9
00cfddcd	8b7030	MOV ESI,dword ptr [EAX + 0x30]
00cfddd0	85f6	TEST ESI,ESI
00cfddd2	7425	JZ 0x00cfddf9
00cfddd4	6a00	PUSH 0x0
00cfddd6	8bc8	MOV ECX,EAX
00cfddd8	e82385c5ff	CALL 0x00956300
00cfdddd	85c0	TEST EAX,EAX
00cfdddf	7418	JZ 0x00cfddf9
00cfdde1	8b4004	MOV EAX,dword ptr [EAX + 0x4]
00cfdde4	8b4e0c	MOV ECX,dword ptr [ESI + 0xc]
00cfdde7	8b5608	MOV EDX,dword ptr [ESI + 0x8]
00cfddea	6a01	PUSH 0x1
00cfddec	50	PUSH EAX
00cfdded	51	PUSH ECX
00cfddee	52	PUSH EDX
00cfddef	55	PUSH EBP
00cfddf0	53	PUSH EBX
00cfddf1	e85a2aa9ff	CALL 0x00790850
00cfddf6	83c418	ADD ESP,0x18
00cfddf9	8bbf08010000	MOV EDI,dword ptr [EDI + 0x108]
00cfddff	83ff02	CMP EDI,0x2
00cfde02	7433	JZ 0x00cfde37
00cfde04	8b442424	MOV EAX,dword ptr [ESP + 0x24]
00cfde08	83f802	CMP EAX,0x2
00cfde0b	751f	JNZ 0x00cfde2c
00cfde0d	83ff01	CMP EDI,0x1
00cfde10	751a	JNZ 0x00cfde2c
00cfde12	6a06	PUSH 0x6
00cfde14	55	PUSH EBP
00cfde15	53	PUSH EBX
00cfde16	e8e527a9ff	CALL 0x00790600
00cfde1b	83c40c	ADD ESP,0xc
00cfde1e	5f	POP EDI
00cfde1f	5e	POP ESI
00cfde20	5d	POP EBP
00cfde21	5b	POP EBX
00cfde22	c21400	RET 0x14
00cfde25	33f6	XOR ESI,ESI
00cfde27	e950ffffff	JMP 0x00cfdd7c
00cfde2c	50	PUSH EAX
00cfde2d	55	PUSH EBP
00cfde2e	53	PUSH EBX
00cfde2f	e8cc27a9ff	CALL 0x00790600
00cfde34	83c40c	ADD ESP,0xc
00cfde37	5f	POP EDI
00cfde38	5e	POP ESI
00cfde39	5d	POP EBP
00cfde3a	5b	POP EBX
00cfde3b	c21400	RET 0x14
