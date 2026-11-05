# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 actual saved annotated owned Listing; FrameService_SetForwardedPointer; owned ranges [[006e9300, 006e931c]]
006e9300	8b442404	MOV EAX,dword ptr [ESP + 0x4]
006e9304	898130050000	MOV dword ptr [ECX + 0x530],EAX
006e930a	8b4938	MOV ECX,dword ptr [ECX + 0x38]
006e930d	85c9	TEST ECX,ECX
006e930f	7409	JZ 0x006e931a
006e9311	89442404	MOV dword ptr [ESP + 0x4],EAX
006e9315	e9966b2600	JMP 0x0094feb0
006e931a	c20400	RET 0x4
