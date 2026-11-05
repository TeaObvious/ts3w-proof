# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: int PaintUndoable_Undo(void * this)
Owned ranges: [[00d240f0, 00d24118]]

00d240f0  56  PUSH ESI
00d240f1  8bf1  MOV ESI,ECX
00d240f3  e8f8feffff  CALL 0x00d23ff0
00d240f8  f30f1005f098f900  MOVSS XMM0,dword ptr [0x00f998f0]
00d24100  f30f5c86b4000000  SUBSS XMM0,dword ptr [ESI + 0xb4]
00d24108  51  PUSH ECX
00d24109  8bce  MOV ECX,ESI
00d2410b  f30f110424  MOVSS dword ptr [ESP],XMM0
00d24110  e89b67ffff  CALL 0x00d1a8b0
00d24115  33c0  XOR EAX,EAX
00d24117  5e  POP ESI
00d24118  c3  RET
