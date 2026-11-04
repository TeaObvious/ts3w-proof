PC 1.67 TS3W.exe; reference_id: ts3w-pc-1.67; identity: evidence/reference.json.
Analyst-assigned name: TestFloorCellCornerHeightAgreement.
Complete existing Ghidra owned body: [00ACFF30,00AD0039] inclusive; 266 owned bytes / 93 instructions.
Original PE bytes and independent objdump instruction starts match the owned Listing.

Tests all three other floor-grid corner heights against the first corner using strict absolute difference below binary32 0.05. Reads the Float32 grid at lot+290 manager+24; no own bounds or null guards. Returns full EAX 0 or 1. Analyst-assigned name.

00acff30	83ec14	SUB ESP, 0x14
00acff33	8b44241c	MOV EAX, dword ptr [ESP + 0x1c]
00acff37	8a4802	MOV CL, byte ptr [EAX + 0x2]
00acff3a	8a10	MOV DL, byte ptr [EAX]
00acff3c	53	PUSH EBX
00acff3d	8a5801	MOV BL, byte ptr [EAX + 0x1]
00acff40	8b44241c	MOV EAX, dword ptr [ESP + 0x1c]
00acff44	8b8090020000	MOV EAX, dword ptr [EAX + 0x290]
00acff4a	55	PUSH EBP
00acff4b	56	PUSH ESI
00acff4c	8b7024	MOV ESI, dword ptr [EAX + 0x24] ; Read floor-manager Float32 grid +24. Index uses signed level minus manager+10 and signed X/Z. X+1 and Z+1 narrow as bytes before sign extension.
00acff4f	57	PUSH EDI
00acff50	0fbef9	MOVSX EDI, CL
00acff53	2b7810	SUB EDI, dword ptr [EAX + 0x10]
00acff56	0fbeea	MOVSX EBP, DL
00acff59	0faf7e04	IMUL EDI, dword ptr [ESI + 0x4]
00acff5d	03fd	ADD EDI, EBP
00acff5f	0faf7e08	IMUL EDI, dword ptr [ESI + 0x8]
00acff63	8b7610	MOV ESI, dword ptr [ESI + 0x10]
00acff66	0fbeeb	MOVSX EBP, BL
00acff69	03fd	ADD EDI, EBP
00acff6b	0fbeea	MOVSX EBP, DL
00acff6e	d904be	FLD float ptr [ESI + EDI*0x4]
00acff71	8b7024	MOV ESI, dword ptr [EAX + 0x24]
00acff74	0fbef9	MOVSX EDI, CL
00acff77	2b7810	SUB EDI, dword ptr [EAX + 0x10]
00acff7a	885c2413	MOV byte ptr [ESP + 0x13], BL
00acff7e	0faf7e04	IMUL EDI, dword ptr [ESI + 0x4]
00acff82	03fd	ADD EDI, EBP
00acff84	0faf7e08	IMUL EDI, dword ptr [ESI + 0x8]
00acff88	8b7610	MOV ESI, dword ptr [ESI + 0x10]
00acff8b	80c301	ADD BL, 0x1
00acff8e	885c242c	MOV byte ptr [ESP + 0x2c], BL
00acff92	0fbedb	MOVSX EBX, BL
00acff95	03fb	ADD EDI, EBX
00acff97	80c201	ADD DL, 0x1
00acff9a	0fbeda	MOVSX EBX, DL
00acff9d	d904be	FLD float ptr [ESI + EDI*0x4]
00acffa0	d8e9	FSUBR ST0, ST1
00acffa2	8b7024	MOV ESI, dword ptr [EAX + 0x24]
00acffa5	0fbef9	MOVSX EDI, CL
00acffa8	d9e1	FABS
00acffaa	d905246b0601	FLD float ptr [0x01066b24] ; Threshold at 01066B24 has bytes CDCC4C3D (binary32 0.05). The three comparisons are against the first sampled corner, not pairwise maxima or neighboring edges.
00acffb0	2b7810	SUB EDI, dword ptr [EAX + 0x10]
00acffb3	0fbec9	MOVSX ECX, CL
00acffb6	0faf7e04	IMUL EDI, dword ptr [ESI + 0x4]
00acffba	2b4810	SUB ECX, dword ptr [EAX + 0x10]
00acffbd	03fb	ADD EDI, EBX
00acffbf	0faf7e08	IMUL EDI, dword ptr [ESI + 0x8]
00acffc3	0fbe5c242c	MOVSX EBX, byte ptr [ESP + 0x2c]
00acffc8	8b7610	MOV ESI, dword ptr [ESI + 0x10]
00acffcb	03fb	ADD EDI, EBX
00acffcd	f30f1004be	MOVSS XMM0, dword ptr [ESI + EDI*0x4]
00acffd2	8b7024	MOV ESI, dword ptr [EAX + 0x24]
00acffd5	0faf4e04	IMUL ECX, dword ptr [ESI + 0x4]
00acffd9	0fbe442413	MOVSX EAX, byte ptr [ESP + 0x13]
00acffde	0fbed2	MOVSX EDX, DL
00acffe1	03ca	ADD ECX, EDX
00acffe3	0faf4e08	IMUL ECX, dword ptr [ESI + 0x8]
00acffe7	8b5610	MOV EDX, dword ptr [ESI + 0x10]
00acffea	5f	POP EDI
00acffeb	5e	POP ESI
00acffec	03c8	ADD ECX, EAX
00acffee	f30f11442414	MOVSS dword ptr [ESP + 0x14], XMM0
00acfff4	f30f10048a	MOVSS XMM0, dword ptr [EDX + ECX*0x4]
00acfff9	5d	POP EBP
00acfffa	dbf1	FCOMI ST0, ST1 ; FCOMI compares threshold with absolute difference; JBE rejects equality and unordered. All three differences must be strictly below threshold before full EAX=1.
00acfffc	ddd9	FSTP ST1
00acfffe	f30f11442414	MOVSS dword ptr [ESP + 0x14], XMM0
00ad0004	5b	POP EBX
00ad0005	7629	JBE 0x00ad0030
00ad0007	d9c1	FLD ST1
00ad0009	d864240c	FSUB float ptr [ESP + 0xc]
00ad000d	d9e1	FABS
00ad000f	d9c9	FXCH
00ad0011	dbf1	FCOMI ST0, ST1
00ad0013	ddd9	FSTP ST1
00ad0015	7619	JBE 0x00ad0030
00ad0017	d9c9	FXCH
00ad0019	d8642410	FSUB float ptr [ESP + 0x10]
00ad001d	d9e1	FABS
00ad001f	d9c9	FXCH
00ad0021	dff1	FCOMIP ST0, ST1
00ad0023	ddd8	FSTP ST0
00ad0025	760d	JBE 0x00ad0034
00ad0027	b801000000	MOV EAX, 0x1
00ad002c	83c414	ADD ESP, 0x14
00ad002f	c3	RET
00ad0030	ddd9	FSTP ST1
00ad0032	ddd8	FSTP ST0
00ad0034	33c0	XOR EAX, EAX
00ad0036	83c414	ADD ESP, 0x14
00ad0039	c3	RET
