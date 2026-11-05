# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe; complete existing Ghidra owned ranges [004aa1b0,004aa1e6]. 55 owned bytes/22 instructions; 0 nonowned envelope bytes excluded. Readonly Listing, body bytes agree with original PE and all instruction starts agree with independent decoding. No DB/body/prototype repair or save.

Analyst role: Four-word counted fill. cdecl destination/signedCount/value, plain RET void. While count!=0 copies fourDWORDs then advances16 and decrements. Null destination skips that write but advances. Negative count is not rejected or clamped; actual valid insertion caller supplies a nonnegative count.

004aa1b0	8b4c2408	MOV ECX, dword ptr [ESP + 0x8]
004aa1b4	85c9	TEST ECX, ECX
004aa1b6	8b442404	MOV EAX, dword ptr [ESP + 0x4]
004aa1ba	762a	JBE 0x004aa1e6
004aa1bc	8b54240c	MOV EDX, dword ptr [ESP + 0xc]
004aa1c0	56	PUSH ESI
004aa1c1	85c0	TEST EAX, EAX
004aa1c3	7416	JZ 0x004aa1db
004aa1c5	8b32	MOV ESI, dword ptr [EDX]
004aa1c7	8930	MOV dword ptr [EAX], ESI
004aa1c9	8b7204	MOV ESI, dword ptr [EDX + 0x4]
004aa1cc	897004	MOV dword ptr [EAX + 0x4], ESI
004aa1cf	8b7208	MOV ESI, dword ptr [EDX + 0x8]
004aa1d2	897008	MOV dword ptr [EAX + 0x8], ESI
004aa1d5	8b720c	MOV ESI, dword ptr [EDX + 0xc]
004aa1d8	89700c	MOV dword ptr [EAX + 0xc], ESI
004aa1db	83e901	SUB ECX, 0x1
004aa1de	83c010	ADD EAX, 0x10
004aa1e1	85c9	TEST ECX, ECX
004aa1e3	77dc	JA 0x004aa1c1
004aa1e5	5e	POP ESI
004aa1e6	c3	RET
