PC 1.67 TS3W.exe; reference_id: ts3w-pc-1.67; identity: evidence/reference.json.
Current Ghidra analyst name: InsertQueuedMessageByPriority.
Complete existing Ghidra stored body union: [0044CC20,0044CCB0] inclusive; 145 owned bytes / 71 instruction starts.
Original PE bytes and independent objdump instruction starts match this Listing.

Selects the linked-list insertion position using signed priority at record+0C and delegates the
   actual node insertion/copy to 44C970 or 44CB50. Selects a stable position within the
   equal-priority group; node insertion/copy remains delegated. ECX queue sentinel and one
   record-pointer stack word; RET4. Analyst-assigned name.

0044cc20	53	PUSH EBX
0044cc21	8b5c2408	MOV EBX, dword ptr [ESP + 0x8]
0044cc25	56	PUSH ESI
0044cc26	8b31	MOV ESI, dword ptr [ECX]
0044cc28	3bf1	CMP ESI, ECX
0044cc2a	57	PUSH EDI
0044cc2b	7461	JZ 0x0044cc8e
0044cc2d	8b7b0c	MOV EDI, dword ptr [EBX + 0xc] ; Priority is signed Int32 record+0C; A913D0 queue submission supplies priority 0. Head/tail comparisons and directional searches select a stable position within the equal-priority group; actual node insertion/copy remains delegated.
0044cc30	8b4104	MOV EAX, dword ptr [ECX + 0x4]
0044cc33	397814	CMP dword ptr [EAX + 0x14], EDI
0044cc36	7d56	JGE 0x0044cc8e
0044cc38	397e14	CMP dword ptr [ESI + 0x14], EDI
0044cc3b	7d0d	JGE 0x0044cc4a
0044cc3d	53	PUSH EBX
0044cc3e	56	PUSH ESI
0044cc3f	e82cfdffff	CALL 0x0044c970
0044cc44	5f	POP EDI
0044cc45	5e	POP ESI
0044cc46	5b	POP EBX
0044cc47	c20400	RET 0x4
0044cc4a	85ff	TEST EDI, EDI
0044cc4c	7f33	JG 0x0044cc81
0044cc4e	8bc1	MOV EAX, ECX
0044cc50	8b5004	MOV EDX, dword ptr [EAX + 0x4]
0044cc53	3b7a14	CMP EDI, dword ptr [EDX + 0x14]
0044cc56	7e13	JLE 0x0044cc6b
0044cc58	8bc2	MOV EAX, EDX
0044cc5a	3bc6	CMP EAX, ESI
0044cc5c	75f2	JNZ 0x0044cc50
0044cc5e	53	PUSH EBX
0044cc5f	56	PUSH ESI
0044cc60	e80bfdffff	CALL 0x0044c970
0044cc65	5f	POP EDI
0044cc66	5e	POP ESI
0044cc67	5b	POP EBX
0044cc68	c20400	RET 0x4
0044cc6b	53	PUSH EBX
0044cc6c	51	PUSH ECX
0044cc6d	8bd4	MOV EDX, ESP
0044cc6f	8902	MOV dword ptr [EDX], EAX
0044cc71	8d542418	LEA EDX, [ESP + 0x18]
0044cc75	52	PUSH EDX
0044cc76	e8d5feffff	CALL 0x0044cb50
0044cc7b	5f	POP EDI
0044cc7c	5e	POP ESI
0044cc7d	5b	POP EBX
0044cc7e	c20400	RET 0x4
0044cc81	8bc6	MOV EAX, ESI
0044cc83	3b7814	CMP EDI, dword ptr [EAX + 0x14]
0044cc86	7f13	JG 0x0044cc9b
0044cc88	8b00	MOV EAX, dword ptr [EAX]
0044cc8a	3bc1	CMP EAX, ECX
0044cc8c	75f5	JNZ 0x0044cc83
0044cc8e	53	PUSH EBX ; The decompiler omits helper arguments: original pushes record EBX and the selected insertion position before 44C970; the 44CB50 sites likewise pass an iterator/output record. Node allocation/copy/failure policy remains in those children.
0044cc8f	51	PUSH ECX
0044cc90	e8dbfcffff	CALL 0x0044c970
0044cc95	5f	POP EDI
0044cc96	5e	POP ESI
0044cc97	5b	POP EBX
0044cc98	c20400	RET 0x4
0044cc9b	53	PUSH EBX
0044cc9c	51	PUSH ECX
0044cc9d	8bd4	MOV EDX, ESP
0044cc9f	8902	MOV dword ptr [EDX], EAX
0044cca1	8d442418	LEA EAX, [ESP + 0x18]
0044cca5	50	PUSH EAX
0044cca6	e8a5feffff	CALL 0x0044cb50
0044ccab	5f	POP EDI
0044ccac	5e	POP ESI
0044ccad	5b	POP EBX
0044ccae	c20400	RET 0x4
