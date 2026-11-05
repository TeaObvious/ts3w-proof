# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe; complete existing Ghidra owned ranges [00a8bb60,00a8bb9f]. 64 owned bytes/28 instructions; 0 nonowned envelope bytes excluded. Readonly Listing, body bytes agree with original PE and all instruction starts agree with independent decoding. No DB/body/prototype repair or save.

Analyst role: Sixty-four-byte range copy with end output. cdecl outputEnd/srcBegin/srcEnd/dstBegin, plain RET void. Copies16DWORDs per element and returns advanced destination through output pointer. Null destination skips a write but still advances; not a general safe-null allocator contract. No overlap guarantee.

00a8bb60	8b542408	MOV EDX, dword ptr [ESP + 0x8]
00a8bb64	8b442404	MOV EAX, dword ptr [ESP + 0x4]
00a8bb68	53	PUSH EBX
00a8bb69	8b5c2414	MOV EBX, dword ptr [ESP + 0x14]
00a8bb6d	55	PUSH EBP
00a8bb6e	8b6c2414	MOV EBP, dword ptr [ESP + 0x14]
00a8bb72	3bd5	CMP EDX, EBP
00a8bb74	8918	MOV dword ptr [EAX], EBX
00a8bb76	7425	JZ 0x00a8bb9d
00a8bb78	56	PUSH ESI
00a8bb79	57	PUSH EDI
00a8bb7a	8d9b00000000	LEA EBX, [EBX]
00a8bb80	85db	TEST EBX, EBX
00a8bb82	740b	JZ 0x00a8bb8f
00a8bb84	b910000000	MOV ECX, 0x10
00a8bb89	8bf2	MOV ESI, EDX
00a8bb8b	8bfb	MOV EDI, EBX
00a8bb8d	f3a5	MOVSD.REP ES:EDI, ESI
00a8bb8f	83c240	ADD EDX, 0x40
00a8bb92	83c340	ADD EBX, 0x40
00a8bb95	3bd5	CMP EDX, EBP
00a8bb97	75e7	JNZ 0x00a8bb80
00a8bb99	5f	POP EDI
00a8bb9a	8918	MOV dword ptr [EAX], EBX
00a8bb9c	5e	POP ESI
00a8bb9d	5d	POP EBP
00a8bb9e	5b	POP EBX
00a8bb9f	c3	RET
