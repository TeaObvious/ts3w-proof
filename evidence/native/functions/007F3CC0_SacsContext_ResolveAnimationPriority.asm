# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SacsContext_ResolveAnimationPriority
Paired actual annotated Ghidra pseudocode: 007F3CC0_SacsContext_ResolveAnimationPriority.c
Owned ranges: [[007f3cc0, 007f3cdd]]
Envelope bytes=30

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007f3cc0  8b01  MOV EAX,dword ptr [ECX]
007f3cc2  85c0  TEST EAX,EAX
007f3cc4  7412  JZ 0x007f3cd8
007f3cc6  8b4838  MOV ECX,dword ptr [EAX + 0x38]
007f3cc9  83f9fe  CMP ECX,-0x2
007f3ccc  7507  JNZ 0x007f3cd5
007f3cce  8b400c  MOV EAX,dword ptr [EAX + 0xc]
007f3cd1  8b4034  MOV EAX,dword ptr [EAX + 0x34]
007f3cd4  c3  RET
007f3cd5  8bc1  MOV EAX,ECX
007f3cd7  c3  RET
007f3cd8  b810270000  MOV EAX,0x2710
007f3cdd  c3  RET
Owned instructions=13 owned bytes=30 gap/nonowned bytes=0
