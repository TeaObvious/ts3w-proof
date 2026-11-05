# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe; complete existing Ghidra owned ranges [006c8480,006c84c0]. 65 owned bytes/27 instructions; 0 nonowned envelope bytes excluded. Readonly Listing, body bytes agree with original PE and all instruction starts agree with independent decoding. No DB/body/prototype repair or save.

Analyst role: Four-word range copy with end output. cdecl outputEnd/srcBegin/srcEnd/dstBegin, plain RET void. Copies fourDWORDs per element; stores advanced destination in output pointer. Null destination skips individual writes but pointer still advances; no allocation/failure or overlap guarantee.

006c8480	8b4c2408	MOV ECX, dword ptr [ESP + 0x8]
006c8484	8b542410	MOV EDX, dword ptr [ESP + 0x10]
006c8488	8b442404	MOV EAX, dword ptr [ESP + 0x4]
006c848c	56	PUSH ESI
006c848d	8b742410	MOV ESI, dword ptr [ESP + 0x10]
006c8491	3bce	CMP ECX, ESI
006c8493	8910	MOV dword ptr [EAX], EDX
006c8495	7428	JZ 0x006c84bf
006c8497	57	PUSH EDI
006c8498	85d2	TEST EDX, EDX
006c849a	7416	JZ 0x006c84b2
006c849c	8b39	MOV EDI, dword ptr [ECX]
006c849e	893a	MOV dword ptr [EDX], EDI
006c84a0	8b7904	MOV EDI, dword ptr [ECX + 0x4]
006c84a3	897a04	MOV dword ptr [EDX + 0x4], EDI
006c84a6	8b7908	MOV EDI, dword ptr [ECX + 0x8]
006c84a9	897a08	MOV dword ptr [EDX + 0x8], EDI
006c84ac	8b790c	MOV EDI, dword ptr [ECX + 0xc]
006c84af	897a0c	MOV dword ptr [EDX + 0xc], EDI
006c84b2	83c110	ADD ECX, 0x10
006c84b5	83c210	ADD EDX, 0x10
006c84b8	3bce	CMP ECX, ESI
006c84ba	75dc	JNZ 0x006c8498
006c84bc	8910	MOV dword ptr [EAX], EDX
006c84be	5f	POP EDI
006c84bf	5e	POP ESI
006c84c0	c3	RET
