# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete actual Ghidra function envelope.
Actual Ghidra function: SceneObject_SetLocalBoundsAndRefresh
Paired annotated actual pseudocode: 006FCC10_SceneObject_SetLocalBoundsAndRefresh.c
Owned ranges: [[006fcc10, 006fcc32]]

GHIDRA LISTING (original bytes; non-owned alignment explicit)
006fcc10  55  PUSH EBP
006fcc11  8bec  MOV EBP,ESP
006fcc13  83e4f0  AND ESP,0xfffffff0
006fcc16  8b4508  MOV EAX,dword ptr [EBP + 0x8]
006fcc19  0f2800  MOVAPS XMM0,xmmword ptr [EAX]
006fcc1c  0f294150  MOVAPS xmmword ptr [ECX + 0x50],XMM0
006fcc20  0f284010  MOVAPS XMM0,xmmword ptr [EAX + 0x10]
006fcc24  0f294160  MOVAPS xmmword ptr [ECX + 0x60],XMM0
006fcc28  e833fdffff  CALL 0x006fc960
006fcc2d  8be5  MOV ESP,EBP
006fcc2f  5d  POP EBP
006fcc30  c20400  RET 0x4
Owned instructions=12 owned bytes=35 envelope bytes=35
