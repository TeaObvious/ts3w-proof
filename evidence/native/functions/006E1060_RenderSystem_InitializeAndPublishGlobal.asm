# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; RenderSystem_InitializeAndPublishGlobal; owned ranges [[006e1060, 006e107a]]
006e1060	56	PUSH ESI
006e1061	8d7110	LEA ESI,[ECX + 0x10]
006e1064	8bce	MOV ECX,ESI
006e1066	e855f1ffff	CALL 0x006e01c0
006e106b	84c0	TEST AL,AL
006e106d	7502	JNZ 0x006e1071
006e106f	5e	POP ESI
006e1070	c3	RET
006e1071	893530251d01	MOV dword ptr [0x011d2530],ESI
006e1077	b001	MOV AL,0x1
006e1079	5e	POP ESI
006e107a	c3	RET
