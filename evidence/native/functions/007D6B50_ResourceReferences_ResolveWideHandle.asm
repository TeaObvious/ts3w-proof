# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; complete actual saved Ghidra Listing with pristine original bytes; body [[007d6b50, 007d6ba2]]
007d6b50	8b442404	MOV EAX,dword ptr [ESP + 0x4]
007d6b54	83ec08	SUB ESP,0x8
007d6b57	56	PUSH ESI
007d6b58	8d7120	LEA ESI,[ECX + 0x20]
007d6b5b	50	PUSH EAX
007d6b5c	8d4c2408	LEA ECX,[ESP + 0x8]
007d6b60	51	PUSH ECX
007d6b61	8bce	MOV ECX,ESI
007d6b63	e8c8002000	CALL 0x009d6c30
007d6b68	8b5608	MOV EDX,dword ptr [ESI + 0x8]
007d6b6b	8b4e04	MOV ECX,dword ptr [ESI + 0x4]
007d6b6e	8b442404	MOV EAX,dword ptr [ESP + 0x4]
007d6b72	3b0491	CMP EAX,dword ptr [ECX + EDX*0x4]
007d6b75	5e	POP ESI
007d6b76	7423	JZ 0x007d6b9b
007d6b78	8b5008	MOV EDX,dword ptr [EAX + 0x8]
007d6b7b	8b4c2410	MOV ECX,dword ptr [ESP + 0x10]
007d6b7f	8911	MOV dword ptr [ECX],EDX
007d6b81	8b500c	MOV EDX,dword ptr [EAX + 0xc]
007d6b84	895104	MOV dword ptr [ECX + 0x4],EDX
007d6b87	8b5010	MOV EDX,dword ptr [EAX + 0x10]
007d6b8a	895108	MOV dword ptr [ECX + 0x8],EDX
007d6b8d	8b4014	MOV EAX,dword ptr [EAX + 0x14]
007d6b90	89410c	MOV dword ptr [ECX + 0xc],EAX
007d6b93	b001	MOV AL,0x1
007d6b95	83c408	ADD ESP,0x8
007d6b98	c20800	RET 0x8
007d6b9b	32c0	XOR AL,AL
007d6b9d	83c408	ADD ESP,0x8
007d6ba0	c20800	RET 0x8
