# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; Graphics_RegisterResetOwner; owned ranges [[00610bb0, 00610bf1]]
00610bb0	56	PUSH ESI
00610bb1	57	PUSH EDI
00610bb2	8b7c240c	MOV EDI,dword ptr [ESP + 0xc]
00610bb6	8db1e4000000	LEA ESI,[ECX + 0xe4]
00610bbc	57	PUSH EDI
00610bbd	8d442410	LEA EAX,[ESP + 0x10]
00610bc1	50	PUSH EAX
00610bc2	8bce	MOV ECX,ESI
00610bc4	e837ffffff	CALL 0x00610b00
00610bc9	85f6	TEST ESI,ESI
00610bcb	7405	JZ 0x00610bd2
00610bcd	8d46fc	LEA EAX,[ESI + -0x4]
00610bd0	eb02	JMP 0x00610bd4
00610bd2	33c0	XOR EAX,EAX
00610bd4	3944240c	CMP dword ptr [ESP + 0xc],EAX
00610bd8	7513	JNZ 0x00610bed
00610bda	8b4e04	MOV ECX,dword ptr [ESI + 0x4]
00610bdd	8d4704	LEA EAX,[EDI + 0x4]
00610be0	894f08	MOV dword ptr [EDI + 0x8],ECX
00610be3	8930	MOV dword ptr [EAX],ESI
00610be5	894604	MOV dword ptr [ESI + 0x4],EAX
00610be8	8b5708	MOV EDX,dword ptr [EDI + 0x8]
00610beb	8902	MOV dword ptr [EDX],EAX
00610bed	5f	POP EDI
00610bee	5e	POP ESI
00610bef	c20400	RET 0x4
