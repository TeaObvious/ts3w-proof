# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; Flora_InitializeServiceAndBillboardFadeAngles; owned ranges [[00712c30, 00712c8e]]
00712c30	8b0d88c41501	MOV ECX,dword ptr [0x0115c488]
00712c36	8b01	MOV EAX,dword ptr [ECX]
00712c38	8b10	MOV EDX,dword ptr [EAX]
00712c3a	ffd2	CALL EDX
00712c3c	84c0	TEST AL,AL
00712c3e	7510	JNZ 0x00712c50
00712c40	8b0d88c41501	MOV ECX,dword ptr [0x0115c488]
00712c46	8b01	MOV EAX,dword ptr [ECX]
00712c48	8b5004	MOV EDX,dword ptr [EAX + 0x4]
00712c4b	ffd2	CALL EDX
00712c4d	32c0	XOR AL,AL
00712c4f	c3	RET
00712c50	6a01	PUSH 0x1
00712c52	e8795b0a00	CALL 0x007b87d0
00712c57	d905c4e4fb00	FLD float ptr [0x00fbe4c4]
00712c5d	d91c24	FSTP float ptr [ESP]
00712c60	51	PUSH ECX
00712c61	d90538c9fb00	FLD float ptr [0x00fbc938]
00712c67	d91c24	FSTP float ptr [ESP]
00712c6a	e8715e0a00	CALL 0x007b8ae0
00712c6f	d905a8e3fe00	FLD float ptr [0x00fee3a8]
00712c75	d95c2404	FSTP float ptr [ESP + 0x4]
00712c79	d905dceffb00	FLD float ptr [0x00fbefdc]
00712c7f	d91c24	FSTP float ptr [ESP]
00712c82	e8795e0a00	CALL 0x007b8b00
00712c87	83c408	ADD ESP,0x8
00712c8a	e9f12f0000	JMP 0x00715c80
