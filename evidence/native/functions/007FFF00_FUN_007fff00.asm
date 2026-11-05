# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe; complete existing Ghidra owned ranges [007fff00,007fff32]. 51 owned bytes/20 instructions; 0 nonowned envelope bytes excluded. Readonly Listing, body bytes agree with original PE and all instruction starts agree with independent decoding. No DB/body/prototype repair or save.

Analyst role: Four-word forward range copy. cdecl srcBegin/srcEnd/dstBegin, plain RET void. FourDWORD element copy while src!=end, then increment both pointers16. Empty range writes nothing; no overlap/bounds admission. AC08B0 shrink/equal supplies an empty source range.

007fff00	8b4c2404	MOV ECX, dword ptr [ESP + 0x4]
007fff04	8b542408	MOV EDX, dword ptr [ESP + 0x8]
007fff08	3bca	CMP ECX, EDX
007fff0a	8b44240c	MOV EAX, dword ptr [ESP + 0xc]
007fff0e	7422	JZ 0x007fff32
007fff10	56	PUSH ESI
007fff11	8b31	MOV ESI, dword ptr [ECX]
007fff13	8930	MOV dword ptr [EAX], ESI
007fff15	8b7104	MOV ESI, dword ptr [ECX + 0x4]
007fff18	897004	MOV dword ptr [EAX + 0x4], ESI
007fff1b	8b7108	MOV ESI, dword ptr [ECX + 0x8]
007fff1e	897008	MOV dword ptr [EAX + 0x8], ESI
007fff21	8b710c	MOV ESI, dword ptr [ECX + 0xc]
007fff24	89700c	MOV dword ptr [EAX + 0xc], ESI
007fff27	83c110	ADD ECX, 0x10
007fff2a	83c010	ADD EAX, 0x10
007fff2d	3bca	CMP ECX, EDX
007fff2f	75e0	JNZ 0x007fff11
007fff31	5e	POP ESI
007fff32	c3	RET
