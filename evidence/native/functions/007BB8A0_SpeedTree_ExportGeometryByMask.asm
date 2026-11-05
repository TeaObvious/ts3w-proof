# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; SpeedTree_ExportGeometryByMask; owned ranges [[007bb8a0, 007bb8e4]]
007bb8a0	53	PUSH EBX
007bb8a1	8a5c240c	MOV BL,byte ptr [ESP + 0xc]
007bb8a5	f6c301	TEST BL,0x1
007bb8a8	56	PUSH ESI
007bb8a9	57	PUSH EDI
007bb8aa	8b7c2410	MOV EDI,dword ptr [ESP + 0x10]
007bb8ae	8bf1	MOV ESI,ECX
007bb8b0	7406	JZ 0x007bb8b8
007bb8b2	57	PUSH EDI
007bb8b3	e8d8f2ffff	CALL 0x007bab90
007bb8b8	f6c302	TEST BL,0x2
007bb8bb	7408	JZ 0x007bb8c5
007bb8bd	57	PUSH EDI
007bb8be	8bce	MOV ECX,ESI
007bb8c0	e89bf4ffff	CALL 0x007bad60
007bb8c5	f6c304	TEST BL,0x4
007bb8c8	7408	JZ 0x007bb8d2
007bb8ca	57	PUSH EDI
007bb8cb	8bce	MOV ECX,ESI
007bb8cd	e86ef6ffff	CALL 0x007baf40
007bb8d2	f6c308	TEST BL,0x8
007bb8d5	7408	JZ 0x007bb8df
007bb8d7	57	PUSH EDI
007bb8d8	8bce	MOV ECX,ESI
007bb8da	e8b1cfffff	CALL 0x007b8890
007bb8df	5f	POP EDI
007bb8e0	5e	POP ESI
007bb8e1	5b	POP EBX
007bb8e2	c20800	RET 0x8
