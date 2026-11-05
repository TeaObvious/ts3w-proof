# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; complete actual saved Ghidra Listing with pristine original bytes; body [[00cfe370, 00cfe3a1]]
00cfe370	e88b11ffff	CALL 0x00cef500
00cfe375	85c0	TEST EAX,EAX
00cfe377	7426	JZ 0x00cfe39f
00cfe379	83783004	CMP dword ptr [EAX + 0x30],0x4
00cfe37d	7520	JNZ 0x00cfe39f
00cfe37f	8b402c	MOV EAX,dword ptr [EAX + 0x2c]
00cfe382	85c0	TEST EAX,EAX
00cfe384	7419	JZ 0x00cfe39f
00cfe386	80b8f702000000	CMP byte ptr [EAX + 0x2f7],0x0
00cfe38d	7405	JZ 0x00cfe394
00cfe38f	8b4060	MOV EAX,dword ptr [EAX + 0x60]
00cfe392	eb03	JMP 0x00cfe397
00cfe394	8b405c	MOV EAX,dword ptr [EAX + 0x5c]
00cfe397	85c0	TEST EAX,EAX
00cfe399	7404	JZ 0x00cfe39f
00cfe39b	8b4058	MOV EAX,dword ptr [EAX + 0x58]
00cfe39e	c3	RET
00cfe39f	33c0	XOR EAX,EAX
00cfe3a1	c3	RET
