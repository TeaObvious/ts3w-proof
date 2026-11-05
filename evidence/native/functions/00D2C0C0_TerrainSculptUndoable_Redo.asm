# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: int TerrainSculptUndoable_Redo(void * this)
Owned ranges: [[00d2c0c0, 00d2c0dc]]

00d2c0c0  56  PUSH ESI
00d2c0c1  8bf1  MOV ESI,ECX
00d2c0c3  e858feffff  CALL 0x00d2bf20
00d2c0c8  d98610010000  FLD float ptr [ESI + 0x110]
00d2c0ce  51  PUSH ECX
00d2c0cf  8bce  MOV ECX,ESI
00d2c0d1  d91c24  FSTP float ptr [ESP]
00d2c0d4  e8d7e7feff  CALL 0x00d1a8b0
00d2c0d9  33c0  XOR EAX,EAX
00d2c0db  5e  POP ESI
00d2c0dc  c3  RET
