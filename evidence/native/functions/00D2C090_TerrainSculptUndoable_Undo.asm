# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: int TerrainSculptUndoable_Undo(void * this)
Owned ranges: [[00d2c090, 00d2c0b8]]

00d2c090  56  PUSH ESI
00d2c091  8bf1  MOV ESI,ECX
00d2c093  e888feffff  CALL 0x00d2bf20
00d2c098  f30f1005f098f900  MOVSS XMM0,dword ptr [0x00f998f0]
00d2c0a0  f30f5c8610010000  SUBSS XMM0,dword ptr [ESI + 0x110]
00d2c0a8  51  PUSH ECX
00d2c0a9  8bce  MOV ECX,ESI
00d2c0ab  f30f110424  MOVSS dword ptr [ESP],XMM0
00d2c0b0  e8fbe7feff  CALL 0x00d1a8b0
00d2c0b5  33c0  XOR EAX,EAX
00d2c0b7  5e  POP ESI
00d2c0b8  c3  RET
