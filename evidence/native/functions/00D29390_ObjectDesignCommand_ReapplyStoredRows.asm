# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; complete actual saved Ghidra Listing with pristine original bytes; body [[00d29390, 00d293c5]]
00d29390	53	PUSH EBX
00d29391	56	PUSH ESI
00d29392	57	PUSH EDI
00d29393	8bf9	MOV EDI,ECX
00d29395	8b7758	MOV ESI,dword ptr [EDI + 0x58]
00d29398	8d5f54	LEA EBX,[EDI + 0x54]
00d2939b	3bf3	CMP ESI,EBX
00d2939d	7423	JZ 0x00d293c2
00d2939f	90	NOP
00d293a0	8b4e14	MOV ECX,dword ptr [ESI + 0x14]
00d293a3	8b5610	MOV EDX,dword ptr [ESI + 0x10]
00d293a6	8d4618	LEA EAX,[ESI + 0x18]
00d293a9	50	PUSH EAX
00d293aa	51	PUSH ECX
00d293ab	52	PUSH EDX
00d293ac	8bcf	MOV ECX,EDI
00d293ae	e81dfdffff	CALL 0x00d290d0
00d293b3	56	PUSH ESI
00d293b4	e8777c7bff	CALL 0x004e1030
00d293b9	8bf0	MOV ESI,EAX
00d293bb	83c404	ADD ESP,0x4
00d293be	3bf3	CMP ESI,EBX
00d293c0	75de	JNZ 0x00d293a0
00d293c2	5f	POP EDI
00d293c3	5e	POP ESI
00d293c4	5b	POP EBX
00d293c5	c3	RET
