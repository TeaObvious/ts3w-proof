PC 1.67 TS3W.exe; reference_id: ts3w-pc-1.67; identity: evidence/reference.json.
Current Ghidra analyst name: PumpQueuedMessages.
Complete existing Ghidra stored body union: [0044D1C0,0044D36C] inclusive; 429 owned bytes / 146 instruction starts.
Original PE bytes and independent objdump instruction starts match this Listing.

Pops queued message records before invoking targets or the dispatcher listener path, then
   conditionally releases target/payload references. Returns the processed count. B3 selects
   continued draining versus an unsigned64 frontier built from the initial UInt32 queue count and
   shared UInt64 processed counter. This is not a snapshot of original message identities or a time
   budget; reentrancy and priority changes can affect which entries are selected. Analyst-assigned
   name.

0044d1c0	83ec24	SUB ESP, 0x24
0044d1c3	53	PUSH EBX
0044d1c4	55	PUSH EBP
0044d1c5	56	PUSH ESI
0044d1c6	33c0	XOR EAX, EAX
0044d1c8	57	PUSH EDI
0044d1c9	33ff	XOR EDI, EDI
0044d1cb	8bf1	MOV ESI, ECX
0044d1cd	33ed	XOR EBP, EBP
0044d1cf	3886b0000000	CMP byte ptr [ESI + 0xb0], AL
0044d1d5	897c2410	MOV dword ptr [ESP + 0x10], EDI
0044d1d9	897c2424	MOV dword ptr [ESP + 0x24], EDI
0044d1dd	8944242c	MOV dword ptr [ESP + 0x2c], EAX
0044d1e1	89442430	MOV dword ptr [ESP + 0x30], EAX
0044d1e5	740d	JZ 0x0044d1f4
0044d1e7	68c82afa00	PUSH 0xfa2ac8
0044d1ec	8d4e20	LEA ECX, [ESI + 0x20]
0044d1ef	e80c4a0900	CALL 0x004e1c00
0044d1f4	8b460c	MOV EAX, dword ptr [ESI + 0xc]
0044d1f7	8d560c	LEA EDX, [ESI + 0xc]
0044d1fa	33c9	XOR ECX, ECX
0044d1fc	3bc2	CMP EAX, EDX
0044d1fe	7409	JZ 0x0044d209
0044d200	8b00	MOV EAX, dword ptr [EAX]
0044d202	83c101	ADD ECX, 0x1
0044d205	3bc2	CMP EAX, EDX
0044d207	75f7	JNZ 0x0044d200
0044d209	33c0	XOR EAX, EAX
0044d20b	034e50	ADD ECX, dword ptr [ESI + 0x50]
0044d20e	134654	ADC EAX, dword ptr [ESI + 0x54]
0044d211	80beb000000000	CMP byte ptr [ESI + 0xb0], 0x0
0044d218	89442418	MOV dword ptr [ESP + 0x18], EAX
0044d21c	894c2414	MOV dword ptr [ESP + 0x14], ECX
0044d220	7424	JZ 0x0044d246
0044d222	8d4e20	LEA ECX, [ESI + 0x20]
0044d225	e8964a0900	CALL 0x004e1cc0
0044d22a	8d9b00000000	LEA EBX, [EBX]
0044d230	80beb000000000	CMP byte ptr [ESI + 0xb0], 0x0
0044d237	740d	JZ 0x0044d246
0044d239	68c82afa00	PUSH 0xfa2ac8
0044d23e	8d4e20	LEA ECX, [ESI + 0x20]
0044d241	e8ba490900	CALL 0x004e1c00
0044d246	8b460c	MOV EAX, dword ptr [ESI + 0xc]
0044d249	8d4e0c	LEA ECX, [ESI + 0xc]
0044d24c	3bc1	CMP EAX, ECX
0044d24e	0f8490000000	JZ 0x0044d2e4
0044d254	8b5010	MOV EDX, dword ptr [EAX + 0x10] ; Copy the queued record to locals, unlink and free its 20h-byte node, increment the processed UInt64 counter, then release the queue lock before callbacks.
0044d257	8b18	MOV EBX, dword ptr [EAX]
0044d259	8b6808	MOV EBP, dword ptr [EAX + 0x8]
0044d25c	8b780c	MOV EDI, dword ptr [EAX + 0xc]
0044d25f	89542424	MOV dword ptr [ESP + 0x24], EDX
0044d263	8b5014	MOV EDX, dword ptr [EAX + 0x14]
0044d266	89542428	MOV dword ptr [ESP + 0x28], EDX
0044d26a	8b5018	MOV EDX, dword ptr [EAX + 0x18]
0044d26d	8954242c	MOV dword ptr [ESP + 0x2c], EDX
0044d271	8b501c	MOV EDX, dword ptr [EAX + 0x1c]
0044d274	89542430	MOV dword ptr [ESP + 0x30], EDX
0044d278	8b5004	MOV EDX, dword ptr [EAX + 0x4]
0044d27b	891a	MOV dword ptr [EDX], EBX
0044d27d	8b10	MOV EDX, dword ptr [EAX]
0044d27f	8b5804	MOV EBX, dword ptr [EAX + 0x4]
0044d282	895a04	MOV dword ptr [EDX + 0x4], EBX
0044d285	8b4908	MOV ECX, dword ptr [ECX + 0x8]
0044d288	8b11	MOV EDX, dword ptr [ECX]
0044d28a	6a20	PUSH 0x20
0044d28c	50	PUSH EAX
0044d28d	8b420c	MOV EAX, dword ptr [EDX + 0xc]
0044d290	ffd0	CALL EAX
0044d292	b801000000	MOV EAX, 0x1
0044d297	014650	ADD dword ptr [ESI + 0x50], EAX
0044d29a	b301	MOV BL, 0x1
0044d29c	83565400	ADC dword ptr [ESI + 0x54], 0x0
0044d2a0	01442410	ADD dword ptr [ESP + 0x10], EAX
0044d2a4	80beb000000000	CMP byte ptr [ESI + 0xb0], 0x0
0044d2ab	7408	JZ 0x0044d2b5
0044d2ad	8d4e20	LEA ECX, [ESI + 0x20]
0044d2b0	e80b4a0900	CALL 0x004e1cc0
0044d2b5	84db	TEST BL, BL
0044d2b7	0f84a4000000	JZ 0x0044d361
0044d2bd	8b5c2424	MOV EBX, dword ptr [ESP + 0x24]
0044d2c1	85db	TEST EBX, EBX
0044d2c3	7423	JZ 0x0044d2e8
0044d2c5	8b13	MOV EDX, dword ptr [EBX]
0044d2c7	8b4204	MOV EAX, dword ptr [EDX + 0x4]
0044d2ca	57	PUSH EDI
0044d2cb	55	PUSH EBP
0044d2cc	8bcb	MOV ECX, EBX
0044d2ce	ffd0	CALL EAX
0044d2d0	80beb400000000	CMP byte ptr [ESI + 0xb4], 0x0
0044d2d7	7449	JZ 0x0044d322
0044d2d9	8b13	MOV EDX, dword ptr [EBX]
0044d2db	8b420c	MOV EAX, dword ptr [EDX + 0xc]
0044d2de	8bcb	MOV ECX, EBX
0044d2e0	ffd0	CALL EAX
0044d2e2	eb3e	JMP 0x0044d322
0044d2e4	32db	XOR BL, BL
0044d2e6	ebbc	JMP 0x0044d2a4
0044d2e8	8b5c242c	MOV EBX, dword ptr [ESP + 0x2c]
0044d2ec	85db	TEST EBX, EBX
0044d2ee	7425	JZ 0x0044d315
0044d2f0	8b4c2430	MOV ECX, dword ptr [ESP + 0x30]
0044d2f4	51	PUSH ECX
0044d2f5	57	PUSH EDI
0044d2f6	55	PUSH EBP
0044d2f7	ffd3	CALL EBX
0044d2f9	83c40c	ADD ESP, 0xc
0044d2fc	80beb400000000	CMP byte ptr [ESI + 0xb4], 0x0
0044d303	741d	JZ 0x0044d322
0044d305	8b542430	MOV EDX, dword ptr [ESP + 0x30]
0044d309	52	PUSH EDX
0044d30a	6a00	PUSH 0x0
0044d30c	6a02	PUSH 0x2
0044d30e	ffd3	CALL EBX
0044d310	83c40c	ADD ESP, 0xc
0044d313	eb0d	JMP 0x0044d322
0044d315	8b06	MOV EAX, dword ptr [ESI] ; A913D0 used target=null and callback=null, so this branch invokes dispatcher virtual+18 with the same ID and payload. Table00FA2B00 resolves that slot to44D5F0, whose current Ghidra definition is unavailable; complete outer delivery remains explicitly open.
0044d317	8b5018	MOV EDX, dword ptr [EAX + 0x18]
0044d31a	6a00	PUSH 0x0
0044d31c	57	PUSH EDI
0044d31d	55	PUSH EBP
0044d31e	8bce	MOV ECX, ESI
0044d320	ffd2	CALL EDX
0044d322	85ff	TEST EDI, EDI ; After callback/dispatch, release nonnull payload through virtual+8 when B4 is enabled. For the constructed floor message this is69EE30; any extra receiver-local retained reference is separate.
0044d324	7412	JZ 0x0044d338
0044d326	80beb400000000	CMP byte ptr [ESI + 0xb4], 0x0
0044d32d	7409	JZ 0x0044d338
0044d32f	8b07	MOV EAX, dword ptr [EDI]
0044d331	8b5008	MOV EDX, dword ptr [EAX + 0x8]
0044d334	8bcf	MOV ECX, EDI
0044d336	ffd2	CALL EDX
0044d338	80beb300000000	CMP byte ptr [ESI + 0xb3], 0x0
0044d33f	0f85ebfeffff	JNZ 0x0044d230
0044d345	8b4654	MOV EAX, dword ptr [ESI + 0x54]
0044d348	3b442418	CMP EAX, dword ptr [ESP + 0x18]
0044d34c	0f82defeffff	JC 0x0044d230
0044d352	770d	JA 0x0044d361
0044d354	8b4e50	MOV ECX, dword ptr [ESI + 0x50]
0044d357	3b4c2414	CMP ECX, dword ptr [ESP + 0x14]
0044d35b	0f82cffeffff	JC 0x0044d230
0044d361	8b442410	MOV EAX, dword ptr [ESP + 0x10]
0044d365	5f	POP EDI
0044d366	5e	POP ESI
0044d367	5d	POP EBP
0044d368	5b	POP EBX
0044d369	83c424	ADD ESP, 0x24
0044d36c	c3	RET
