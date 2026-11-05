# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 complete owned Listing; ShaderDatabase_ResolveOneBasedProgram; ranges [[0079ab70, 0079abb9]]
0079ab70	8b442404	MOV EAX,dword ptr [ESP + 0x4]
0079ab74	85c0	TEST EAX,EAX
0079ab76	7505	JNZ 0x0079ab7d
0079ab78	33c0	XOR EAX,EAX
0079ab7a	c20400	RET 0x4
0079ab7d	8b11	MOV EDX,dword ptr [ECX]
0079ab7f	8b4904	MOV ECX,dword ptr [ECX + 0x4]
0079ab82	2bca	SUB ECX,EDX
0079ab84	83e801	SUB EAX,0x1
0079ab87	c1f902	SAR ECX,0x2
0079ab8a	3bc1	CMP EAX,ECX
0079ab8c	73ea	JNC 0x0079ab78
0079ab8e	56	PUSH ESI
0079ab8f	8b3482	MOV ESI,dword ptr [EDX + EAX*0x4]
0079ab92	8b16	MOV EDX,dword ptr [ESI]
0079ab94	8b4208	MOV EAX,dword ptr [EDX + 0x8]
0079ab97	8bce	MOV ECX,ESI
0079ab99	ffd0	CALL EAX
0079ab9b	84c0	TEST AL,AL
0079ab9d	7515	JNZ 0x0079abb4
0079ab9f	8b16	MOV EDX,dword ptr [ESI]
0079aba1	8b420c	MOV EAX,dword ptr [EDX + 0xc]
0079aba4	6a00	PUSH 0x0
0079aba6	8bce	MOV ECX,ESI
0079aba8	ffd0	CALL EAX
0079abaa	84c0	TEST AL,AL
0079abac	7506	JNZ 0x0079abb4
0079abae	33c0	XOR EAX,EAX
0079abb0	5e	POP ESI
0079abb1	c20400	RET 0x4
0079abb4	8bc6	MOV EAX,ESI
0079abb6	5e	POP ESI
0079abb7	c20400	RET 0x4
