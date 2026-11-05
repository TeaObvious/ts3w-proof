# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: int PaintUndoable_Redo(void * this)
Owned ranges: [[00d24120, 00d2413c]]

00d24120  56  PUSH ESI
00d24121  8bf1  MOV ESI,ECX
00d24123  e8c8feffff  CALL 0x00d23ff0
00d24128  d986b4000000  FLD float ptr [ESI + 0xb4]
00d2412e  51  PUSH ECX
00d2412f  8bce  MOV ECX,ESI
00d24131  d91c24  FSTP float ptr [ESP]
00d24134  e87767ffff  CALL 0x00d1a8b0
00d24139  33c0  XOR EAX,EAX
00d2413b  5e  POP ESI
00d2413c  c3  RET
