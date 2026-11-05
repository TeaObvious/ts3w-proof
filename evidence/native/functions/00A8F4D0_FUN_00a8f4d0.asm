# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe; complete existing Ghidra owned ranges [00a8f4d0,00a8f606]. 311 owned bytes/119 instructions; 0 nonowned envelope bytes excluded. Readonly Listing, body bytes agree with original PE and all instruction starts agree with independent decoding. No DB/body/prototype repair or save.

Analyst role: Sixty-four-byte key vector insertion. ECX vector plus insertion/source pointers, RET8 void. With spare capacity, copies tail, shifts backwards and adjusts aliased source by64. Full vector allocates capacity1 or double current length, copies prefix/new value/suffix throughA8BB60, frees old allocation and publishes begin/end/capacity. Raw64byte records; no strong OOM or exception guarantee inferred.

00a8f4d0	83ec08	SUB ESP, 0x8
00a8f4d3	53	PUSH EBX
00a8f4d4	55	PUSH EBP
00a8f4d5	56	PUSH ESI
00a8f4d6	8bd9	MOV EBX, ECX
00a8f4d8	57	PUSH EDI
00a8f4d9	8b7b04	MOV EDI, dword ptr [EBX + 0x4]
00a8f4dc	3b7b08	CMP EDI, dword ptr [EBX + 0x8]
00a8f4df	7463	JZ 0x00a8f544
00a8f4e1	8b442420	MOV EAX, dword ptr [ESP + 0x20]
00a8f4e5	8b6c241c	MOV EBP, dword ptr [ESP + 0x1c]
00a8f4e9	3bc5	CMP EAX, EBP
00a8f4eb	89442420	MOV dword ptr [ESP + 0x20], EAX
00a8f4ef	720b	JC 0x00a8f4fc
00a8f4f1	3bc7	CMP EAX, EDI
00a8f4f3	7307	JNC 0x00a8f4fc
00a8f4f5	83c040	ADD EAX, 0x40
00a8f4f8	89442420	MOV dword ptr [ESP + 0x20], EAX
00a8f4fc	85ff	TEST EDI, EDI
00a8f4fe	740a	JZ 0x00a8f50a
00a8f500	8d77c0	LEA ESI, [EDI + -0x40]
00a8f503	b910000000	MOV ECX, 0x10
00a8f508	f3a5	MOVSD.REP ES:EDI, ESI
00a8f50a	8b5304	MOV EDX, dword ptr [EBX + 0x4]
00a8f50d	8d42c0	LEA EAX, [EDX + -0x40]
00a8f510	3bc5	CMP EAX, EBP
00a8f512	7415	JZ 0x00a8f529
00a8f514	83e840	SUB EAX, 0x40
00a8f517	83ea40	SUB EDX, 0x40
00a8f51a	3bc5	CMP EAX, EBP
00a8f51c	b910000000	MOV ECX, 0x10
00a8f521	8bf0	MOV ESI, EAX
00a8f523	8bfa	MOV EDI, EDX
00a8f525	f3a5	MOVSD.REP ES:EDI, ESI
00a8f527	75eb	JNZ 0x00a8f514
00a8f529	8b742420	MOV ESI, dword ptr [ESP + 0x20]
00a8f52d	8bfd	MOV EDI, EBP
00a8f52f	b910000000	MOV ECX, 0x10
00a8f534	f3a5	MOVSD.REP ES:EDI, ESI
00a8f536	83430440	ADD dword ptr [EBX + 0x4], 0x40
00a8f53a	5f	POP EDI
00a8f53b	5e	POP ESI
00a8f53c	5d	POP EBP
00a8f53d	5b	POP EBX
00a8f53e	83c408	ADD ESP, 0x8
00a8f541	c20800	RET 0x8
00a8f544	2b3b	SUB EDI, dword ptr [EBX]
00a8f546	c1ff06	SAR EDI, 0x6
00a8f549	742f	JZ 0x00a8f57a
00a8f54b	8d343f	LEA ESI, [EDI + EDI*0x1]
00a8f54e	85f6	TEST ESI, ESI
00a8f550	89742410	MOV dword ptr [ESP + 0x10], ESI
00a8f554	7432	JZ 0x00a8f588
00a8f556	8b430c	MOV EAX, dword ptr [EBX + 0xc]
00a8f559	68e7000000	PUSH 0xe7
00a8f55e	688899f900	PUSH 0xf99988
00a8f563	6a00	PUSH 0x0
00a8f565	6a00	PUSH 0x0
00a8f567	8bce	MOV ECX, ESI
00a8f569	50	PUSH EAX
00a8f56a	c1e106	SHL ECX, 0x6
00a8f56d	51	PUSH ECX
00a8f56e	e88d4fa5ff	CALL 0x004e4500
00a8f573	83c418	ADD ESP, 0x18
00a8f576	8be8	MOV EBP, EAX
00a8f578	eb10	JMP 0x00a8f58a
00a8f57a	c744241001000000	MOV dword ptr [ESP + 0x10], 0x1
00a8f582	8b742410	MOV ESI, dword ptr [ESP + 0x10]
00a8f586	ebce	JMP 0x00a8f556
00a8f588	33ed	XOR EBP, EBP
00a8f58a	8b54241c	MOV EDX, dword ptr [ESP + 0x1c]
00a8f58e	8b4c241c	MOV ECX, dword ptr [ESP + 0x1c]
00a8f592	8b03	MOV EAX, dword ptr [EBX]
00a8f594	52	PUSH EDX
00a8f595	55	PUSH EBP
00a8f596	51	PUSH ECX
00a8f597	50	PUSH EAX
00a8f598	8d542424	LEA EDX, [ESP + 0x24]
00a8f59c	52	PUSH EDX
00a8f59d	e8bec5ffff	CALL 0x00a8bb60
00a8f5a2	8b442428	MOV EAX, dword ptr [ESP + 0x28]
00a8f5a6	83c414	ADD ESP, 0x14
00a8f5a9	85c0	TEST EAX, EAX
00a8f5ab	7411	JZ 0x00a8f5be
00a8f5ad	8b742420	MOV ESI, dword ptr [ESP + 0x20]
00a8f5b1	b910000000	MOV ECX, 0x10
00a8f5b6	8bf8	MOV EDI, EAX
00a8f5b8	f3a5	MOVSD.REP ES:EDI, ESI
00a8f5ba	8b742410	MOV ESI, dword ptr [ESP + 0x10]
00a8f5be	8b54241c	MOV EDX, dword ptr [ESP + 0x1c]
00a8f5c2	8b4b04	MOV ECX, dword ptr [EBX + 0x4]
00a8f5c5	52	PUSH EDX
00a8f5c6	83c040	ADD EAX, 0x40
00a8f5c9	50	PUSH EAX
00a8f5ca	8b442424	MOV EAX, dword ptr [ESP + 0x24]
00a8f5ce	51	PUSH ECX
00a8f5cf	50	PUSH EAX
00a8f5d0	8d4c242c	LEA ECX, [ESP + 0x2c]
00a8f5d4	51	PUSH ECX
00a8f5d5	e886c5ffff	CALL 0x00a8bb60
00a8f5da	8b03	MOV EAX, dword ptr [EBX]
00a8f5dc	83c414	ADD ESP, 0x14
00a8f5df	85c0	TEST EAX, EAX
00a8f5e1	7409	JZ 0x00a8f5ec
00a8f5e3	50	PUSH EAX
00a8f5e4	e8f74ea5ff	CALL 0x004e44e0
00a8f5e9	83c404	ADD ESP, 0x4
00a8f5ec	8b54241c	MOV EDX, dword ptr [ESP + 0x1c]
00a8f5f0	c1e606	SHL ESI, 0x6
00a8f5f3	03f5	ADD ESI, EBP
00a8f5f5	5f	POP EDI
00a8f5f6	897308	MOV dword ptr [EBX + 0x8], ESI
00a8f5f9	5e	POP ESI
00a8f5fa	892b	MOV dword ptr [EBX], EBP
00a8f5fc	5d	POP EBP
00a8f5fd	895304	MOV dword ptr [EBX + 0x4], EDX
00a8f600	5b	POP EBX
00a8f601	83c408	ADD ESP, 0x8
00a8f604	c20800	RET 0x8
