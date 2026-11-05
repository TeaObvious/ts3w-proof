# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 actual saved annotated owned Listing; Lot_ComputeEmptyLandWorth; owned ranges [[00ab3e00, 00ab3e4a]]
00ab3e00	83ec08	SUB ESP,0x8
00ab3e03	803dec3e180100	CMP byte ptr [0x01183eec],0x0
00ab3e0a	56	PUSH ESI
00ab3e0b	8bb178010000	MOV ESI,dword ptr [ECX + 0x178]
00ab3e11	57	PUSH EDI
00ab3e12	8bb974010000	MOV EDI,dword ptr [ECX + 0x174]
00ab3e18	750a	JNZ 0x00ab3e24
00ab3e1a	b9ec3e1801	MOV ECX,0x1183eec
00ab3e1f	e83ccdffff	CALL 0x00ab0b60
00ab3e24	0faff7	IMUL ESI,EDI
00ab3e27	f30f2ac6	CVTSI2SS XMM0,ESI
00ab3e2b	f30f5905f03e1801	MULSS XMM0,dword ptr [0x01183ef0]
00ab3e33	f30f1144240c	MOVSS dword ptr [ESP + 0xc],XMM0
00ab3e39	d944240c	FLD float ptr [ESP + 0xc]
00ab3e3d	db5c2408	FISTP dword ptr [ESP + 0x8]
00ab3e41	8b442408	MOV EAX,dword ptr [ESP + 0x8]
00ab3e45	5f	POP EDI
00ab3e46	5e	POP ESI
00ab3e47	83c408	ADD ESP,0x8
00ab3e4a	c3	RET
