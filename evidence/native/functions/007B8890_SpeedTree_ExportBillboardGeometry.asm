# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; SpeedTree_ExportBillboardGeometry; owned ranges [[007b8890, 007b890b]]
007b8890	8b5144	MOV EDX,dword ptr [ECX + 0x44]
007b8893	d94218	FLD float ptr [EDX + 0x18]
007b8896	8b442404	MOV EAX,dword ptr [ESP + 0x4]
007b889a	d998b0000000	FSTP float ptr [EAX + 0xb0]
007b88a0	8b5144	MOV EDX,dword ptr [ECX + 0x44]
007b88a3	d94210	FLD float ptr [EDX + 0x10]
007b88a6	56	PUSH ESI
007b88a7	d9e1	FABS
007b88a9	33d2	XOR EDX,EDX
007b88ab	d9e1	FABS
007b88ad	d998b4000000	FSTP float ptr [EAX + 0xb4]
007b88b3	8b7154	MOV ESI,dword ptr [ECX + 0x54]
007b88b6	3bf2	CMP ESI,EDX
007b88b8	7424	JZ 0x007b88de
007b88ba	8b7608	MOV ESI,dword ptr [ESI + 0x8]
007b88bd	53	PUSH EBX
007b88be	33db	XOR EBX,EBX
007b88c0	3891e2000000	CMP byte ptr [ECX + 0xe2],DL
007b88c6	0f95c3	SETNZ BL
007b88c9	2bf3	SUB ESI,EBX
007b88cb	89b0b8000000	MOV dword ptr [EAX + 0xb8],ESI
007b88d1	8b4954	MOV ECX,dword ptr [ECX + 0x54]
007b88d4	8b490c	MOV ECX,dword ptr [ECX + 0xc]
007b88d7	8988bc000000	MOV dword ptr [EAX + 0xbc],ECX
007b88dd	5b	POP EBX
007b88de	f30f1005f8720101	MOVSS XMM0,dword ptr [0x010172f8]
007b88e6	8990c0000000	MOV dword ptr [EAX + 0xc0],EDX
007b88ec	8990c8000000	MOV dword ptr [EAX + 0xc8],EDX
007b88f2	8990c4000000	MOV dword ptr [EAX + 0xc4],EDX
007b88f8	f30f1180dc000000	MOVSS dword ptr [EAX + 0xdc],XMM0
007b8900	f30f1180d8000000	MOVSS dword ptr [EAX + 0xd8],XMM0
007b8908	5e	POP ESI
007b8909	c20400	RET 0x4
