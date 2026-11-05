# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe; complete existing Ghidra owned ranges [00a8f320,00a8f39c]. 125 owned bytes/48 instructions; 0 nonowned envelope bytes excluded. Readonly Listing, body bytes agree with original PE and all instruction starts agree with independent decoding. No DB/body/prototype repair or save.

Analyst role: Four-key forward hash lookup. ECX map plus output two-pointer iterator/key64 pointer, RET8 void. AFBB80 hash modulo map+8 bucket count; starts map+4 bucket, follows node+48, compares all64 bytes via7892B0. Miss returns sentinel bucket[count], with bucket-slot pointer in output+4. No zero-count guard or returned-node lifetime lease.

00a8f320	8b442408	MOV EAX, dword ptr [ESP + 0x8]
00a8f324	83ec08	SUB ESP, 0x8
00a8f327	53	PUSH EBX
00a8f328	55	PUSH EBP
00a8f329	56	PUSH ESI
00a8f32a	57	PUSH EDI
00a8f32b	8bf1	MOV ESI, ECX
00a8f32d	50	PUSH EAX
00a8f32e	8d4e02	LEA ECX, [ESI + 0x2]
00a8f331	e84ac80600	CALL 0x00afbb80
00a8f336	8b7e08	MOV EDI, dword ptr [ESI + 0x8]
00a8f339	33d2	XOR EDX, EDX
00a8f33b	f7f7	DIV EDI
00a8f33d	8b5e04	MOV EBX, dword ptr [ESI + 0x4]
00a8f340	8b3493	MOV ESI, dword ptr [EBX + EDX*0x4]
00a8f343	85f6	TEST ESI, ESI
00a8f345	8d2c93	LEA EBP, [EBX + EDX*0x4]
00a8f348	741b	JZ 0x00a8f365
00a8f34a	8d9b00000000	LEA EBX, [EBX]
00a8f350	8b4c2420	MOV ECX, dword ptr [ESP + 0x20]
00a8f354	56	PUSH ESI
00a8f355	e8569fcfff	CALL 0x007892b0
00a8f35a	84c0	TEST AL, AL
00a8f35c	7531	JNZ 0x00a8f38f
00a8f35e	8b7648	MOV ESI, dword ptr [ESI + 0x48]
00a8f361	85f6	TEST ESI, ESI
00a8f363	75eb	JNZ 0x00a8f350
00a8f365	8b0cbb	MOV ECX, dword ptr [EBX + EDI*0x4]
00a8f368	8d04bb	LEA EAX, [EBX + EDI*0x4]
00a8f36b	894c2410	MOV dword ptr [ESP + 0x10], ECX
00a8f36f	89442414	MOV dword ptr [ESP + 0x14], EAX
00a8f373	8b44241c	MOV EAX, dword ptr [ESP + 0x1c]
00a8f377	5f	POP EDI
00a8f378	8d4c240c	LEA ECX, [ESP + 0xc]
00a8f37c	8b11	MOV EDX, dword ptr [ECX]
00a8f37e	8b4904	MOV ECX, dword ptr [ECX + 0x4]
00a8f381	5e	POP ESI
00a8f382	5d	POP EBP
00a8f383	8910	MOV dword ptr [EAX], EDX
00a8f385	894804	MOV dword ptr [EAX + 0x4], ECX
00a8f388	5b	POP EBX
00a8f389	83c408	ADD ESP, 0x8
00a8f38c	c20800	RET 0x8
00a8f38f	85f6	TEST ESI, ESI
00a8f391	74d2	JZ 0x00a8f365
00a8f393	89742410	MOV dword ptr [ESP + 0x10], ESI
00a8f397	896c2414	MOV dword ptr [ESP + 0x14], EBP
00a8f39b	ebd6	JMP 0x00a8f373
