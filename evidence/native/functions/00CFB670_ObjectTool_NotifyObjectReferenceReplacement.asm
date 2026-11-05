# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; complete actual saved Ghidra Listing with pristine original bytes; body [[00cfb670, 00cfb6d2]]
00cfb670	53	PUSH EBX
00cfb671	8b5c2408	MOV EBX,dword ptr [ESP + 0x8]
00cfb675	55	PUSH EBP
00cfb676	8b6c2418	MOV EBP,dword ptr [ESP + 0x18]
00cfb67a	56	PUSH ESI
00cfb67b	57	PUSH EDI
00cfb67c	8b7c2418	MOV EDI,dword ptr [ESP + 0x18]
00cfb680	8bf1	MOV ESI,ECX
00cfb682	8b8608030000	MOV EAX,dword ptr [ESI + 0x308]
00cfb688	8b4c241c	MOV ECX,dword ptr [ESP + 0x1c]
00cfb68c	50	PUSH EAX
00cfb68d	55	PUSH EBP
00cfb68e	51	PUSH ECX
00cfb68f	57	PUSH EDI
00cfb690	53	PUSH EBX
00cfb691	e8ba85fbff	CALL 0x00cb3c50
00cfb696	83c414	ADD ESP,0x14
00cfb699	80be9f02000000	CMP byte ptr [ESI + 0x29f],0x0
00cfb6a0	7405	JZ 0x00cfb6a7
00cfb6a2	8b4608	MOV EAX,dword ptr [ESI + 0x8]
00cfb6a5	eb03	JMP 0x00cfb6aa
00cfb6a7	8b4604	MOV EAX,dword ptr [ESI + 0x4]
00cfb6aa	8b54241c	MOV EDX,dword ptr [ESP + 0x1c]
00cfb6ae	50	PUSH EAX
00cfb6af	55	PUSH EBP
00cfb6b0	52	PUSH EDX
00cfb6b1	57	PUSH EDI
00cfb6b2	53	PUSH EBX
00cfb6b3	e8d885fbff	CALL 0x00cb3c90
00cfb6b8	8b8e6c010000	MOV ECX,dword ptr [ESI + 0x16c]
00cfb6be	83c414	ADD ESP,0x14
00cfb6c1	85c9	TEST ECX,ECX
00cfb6c3	7407	JZ 0x00cfb6cc
00cfb6c5	57	PUSH EDI
00cfb6c6	53	PUSH EBX
00cfb6c7	e844f9fcff	CALL 0x00ccb010
00cfb6cc	5f	POP EDI
00cfb6cd	5e	POP ESI
00cfb6ce	5d	POP EBP
00cfb6cf	5b	POP EBX
00cfb6d0	c21000	RET 0x10
