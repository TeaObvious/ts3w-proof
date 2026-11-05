# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe; complete existing Ghidra owned ranges [005c74b0,005c74e3]. 52 owned bytes/20 instructions; 0 nonowned envelope bytes excluded. Readonly Listing, body bytes agree with original PE and all instruction starts agree with independent decoding. No DB/body/prototype repair or save.

Analyst role: Four-word backward range copy. cdecl srcBegin/srcEnd/dstEnd, plain RET void. Copies last element first and decrements both ends16. This is the overlap-safe direction used by7996F0 rightward movement; not a general memmove or bounds validator.

005c74b0	8b4c2408	MOV ECX, dword ptr [ESP + 0x8]
005c74b4	8b542404	MOV EDX, dword ptr [ESP + 0x4]
005c74b8	3bca	CMP ECX, EDX
005c74ba	8b44240c	MOV EAX, dword ptr [ESP + 0xc]
005c74be	7423	JZ 0x005c74e3
005c74c0	56	PUSH ESI
005c74c1	8b71f0	MOV ESI, dword ptr [ECX + -0x10]
005c74c4	83e910	SUB ECX, 0x10
005c74c7	83e810	SUB EAX, 0x10
005c74ca	3bca	CMP ECX, EDX
005c74cc	8930	MOV dword ptr [EAX], ESI
005c74ce	8b7104	MOV ESI, dword ptr [ECX + 0x4]
005c74d1	897004	MOV dword ptr [EAX + 0x4], ESI
005c74d4	8b7108	MOV ESI, dword ptr [ECX + 0x8]
005c74d7	897008	MOV dword ptr [EAX + 0x8], ESI
005c74da	8b710c	MOV ESI, dword ptr [ECX + 0xc]
005c74dd	89700c	MOV dword ptr [EAX + 0xc], ESI
005c74e0	75df	JNZ 0x005c74c1
005c74e2	5e	POP ESI
005c74e3	c3	RET
