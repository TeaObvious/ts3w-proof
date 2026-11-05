# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; complete actual saved Ghidra Listing with pristine original bytes; body [[00cfca50, 00cfcb2d]]
00cfca50	53	PUSH EBX
00cfca51	56	PUSH ESI
00cfca52	8bf1	MOV ESI,ECX
00cfca54	80bef702000000	CMP byte ptr [ESI + 0x2f7],0x0
00cfca5b	7405	JZ 0x00cfca62
00cfca5d	8b4660	MOV EAX,dword ptr [ESI + 0x60]
00cfca60	eb03	JMP 0x00cfca65
00cfca62	8b465c	MOV EAX,dword ptr [ESI + 0x5c]
00cfca65	85c0	TEST EAX,EAX
00cfca67	8b5c240c	MOV EBX,dword ptr [ESP + 0xc]
00cfca6b	7473	JZ 0x00cfcae0
00cfca6d	57	PUSH EDI
00cfca6e	8b7858	MOV EDI,dword ptr [EAX + 0x58]
00cfca71	85ff	TEST EDI,EDI
00cfca73	746a	JZ 0x00cfcadf
00cfca75	55	PUSH EBP
00cfca76	8b6c2418	MOV EBP,dword ptr [ESP + 0x18]
00cfca7a	55	PUSH EBP
00cfca7b	53	PUSH EBX
00cfca7c	57	PUSH EDI
00cfca7d	e8fee4ffff	CALL 0x00cfaf80
00cfca82	80bef702000000	CMP byte ptr [ESI + 0x2f7],0x0
00cfca89	7505	JNZ 0x00cfca90
00cfca8b	8b4660	MOV EAX,dword ptr [ESI + 0x60]
00cfca8e	eb03	JMP 0x00cfca93
00cfca90	8b465c	MOV EAX,dword ptr [ESI + 0x5c]
00cfca93	85c0	TEST EAX,EAX
00cfca95	7405	JZ 0x00cfca9c
00cfca97	8b4058	MOV EAX,dword ptr [EAX + 0x58]
00cfca9a	eb02	JMP 0x00cfca9e
00cfca9c	33c0	XOR EAX,EAX
00cfca9e	55	PUSH EBP
00cfca9f	53	PUSH EBX
00cfcaa0	50	PUSH EAX
00cfcaa1	8bce	MOV ECX,ESI
00cfcaa3	e8d8e4ffff	CALL 0x00cfaf80
00cfcaa8	80be0401000000	CMP byte ptr [ESI + 0x104],0x0
00cfcaaf	5d	POP EBP
00cfcab0	7408	JZ 0x00cfcaba
00cfcab2	3a9e01010000	CMP BL,byte ptr [ESI + 0x101]
00cfcab8	7425	JZ 0x00cfcadf
00cfcaba	8b4f0c	MOV ECX,dword ptr [EDI + 0xc]
00cfcabd	8b5708	MOV EDX,dword ptr [EDI + 0x8]
00cfcac0	33c0	XOR EAX,EAX
00cfcac2	84db	TEST BL,BL
00cfcac4	0f95c0	SETNZ AL
00cfcac7	50	PUSH EAX
00cfcac8	51	PUSH ECX
00cfcac9	52	PUSH EDX
00cfcaca	e88141a9ff	CALL 0x00790c50
00cfcacf	83c40c	ADD ESP,0xc
00cfcad2	c6860401000001	MOV byte ptr [ESI + 0x104],0x1
00cfcad9	889e01010000	MOV byte ptr [ESI + 0x101],BL
00cfcadf	5f	POP EDI
00cfcae0	6a0c	PUSH 0xc
00cfcae2	e86926deff	CALL 0x00adf150
00cfcae7	83c404	ADD ESP,0x4
00cfcaea	85c0	TEST EAX,EAX
00cfcaec	7417	JZ 0x00cfcb05
00cfcaee	c7008c5f0601	MOV dword ptr [EAX],0x1065f8c
00cfcaf4	33c9	XOR ECX,ECX
00cfcaf6	8d5004	LEA EDX,[EAX + 0x4]
00cfcaf9	870a	XCHG dword ptr [EDX],ECX
00cfcafb	c7008c5f0601	MOV dword ptr [EAX],0x1065f8c
00cfcb01	8bf0	MOV ESI,EAX
00cfcb03	eb02	JMP 0x00cfcb07
00cfcb05	33f6	XOR ESI,ESI
00cfcb07	33c0	XOR EAX,EAX
00cfcb09	84db	TEST BL,BL
00cfcb0b	0f94c0	SETZ AL
00cfcb0e	894608	MOV dword ptr [ESI + 0x8],EAX
00cfcb11	e8daf974ff	CALL 0x0044c4f0
00cfcb16	8b10	MOV EDX,dword ptr [EAX]
00cfcb18	6a00	PUSH 0x0
00cfcb1a	6a00	PUSH 0x0
00cfcb1c	56	PUSH ESI
00cfcb1d	8bc8	MOV ECX,EAX
00cfcb1f	8b421c	MOV EAX,dword ptr [EDX + 0x1c]
00cfcb22	680c9aa805	PUSH 0x5a89a0c
00cfcb27	ffd0	CALL EAX
00cfcb29	5e	POP ESI
00cfcb2a	5b	POP EBX
00cfcb2b	c20800	RET 0x8
