# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe; complete existing Ghidra owned ranges [004fa750,004fa777]. 40 owned bytes/15 instructions; 0 nonowned envelope bytes excluded. Readonly Listing, body bytes agree with original PE and all instruction starts agree with independent decoding. No DB/body/prototype repair or save.

Analyst role: Seeded byte hash multiply then XOR. cdecl byte pointer/signed byteLength/UInt32 seed, plain RET EAX hash. Positive admitted byte range performs h=(h*01000193) XOR zeroextended byte modulo2^32. This is FNV-1 order, NOT FNV-1a. Pointer end arithmetic/admission are native caller obligations; length0 returns seed.

004fa750	8b4c2404	MOV ECX, dword ptr [ESP + 0x4]
004fa754	8b442408	MOV EAX, dword ptr [ESP + 0x8]
004fa758	8d1401	LEA EDX, [ECX + EAX*0x1]
004fa75b	3bca	CMP ECX, EDX
004fa75d	8b44240c	MOV EAX, dword ptr [ESP + 0xc]
004fa761	7314	JNC 0x004fa777
004fa763	56	PUSH ESI
004fa764	0fb631	MOVZX ESI, byte ptr [ECX]
004fa767	69c093010001	IMUL EAX, EAX, 0x1000193
004fa76d	83c101	ADD ECX, 0x1
004fa770	33c6	XOR EAX, ESI
004fa772	3bca	CMP ECX, EDX
004fa774	72ee	JC 0x004fa764
004fa776	5e	POP ESI
004fa777	c3	RET
