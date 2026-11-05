# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; complete actual saved Ghidra Listing with pristine original bytes; body [[00944be0, 00944c11]]
00944be0	8b442404	MOV EAX,dword ptr [ESP + 0x4]
00944be4	85c0	TEST EAX,EAX
00944be6	7427	JZ 0x00944c0f
00944be8	8b0d58a11e01	MOV ECX,dword ptr [0x011ea158]
00944bee	51	PUSH ECX
00944bef	8bc8	MOV ECX,EAX
00944bf1	e86af6feff	CALL 0x00934260
00944bf6	85c0	TEST EAX,EAX
00944bf8	7415	JZ 0x00944c0f
00944bfa	8b4030	MOV EAX,dword ptr [EAX + 0x30]
00944bfd	85c0	TEST EAX,EAX
00944bff	740e	JZ 0x00944c0f
00944c01	8b15fca01e01	MOV EDX,dword ptr [0x011ea0fc]
00944c07	85502c	TEST dword ptr [EAX + 0x2c],EDX
00944c0a	74d8	JZ 0x00944be4
00944c0c	b001	MOV AL,0x1
00944c0e	c3	RET
00944c0f	32c0	XOR AL,AL
00944c11	c3	RET
