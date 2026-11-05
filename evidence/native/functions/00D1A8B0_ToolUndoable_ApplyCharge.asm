# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void ToolUndoable_ApplyCharge(void * this, float amount)
Owned ranges: [[00d1a8b0, 00d1a8cc]]

00d1a8b0  80791400  CMP byte ptr [ECX + 0x14],0x0
00d1a8b4  7514  JNZ 0x00d1a8ca
00d1a8b6  8b490c  MOV ECX,dword ptr [ECX + 0xc]
00d1a8b9  85c9  TEST ECX,ECX
00d1a8bb  740d  JZ 0x00d1a8ca
00d1a8bd  d9442404  FLD float ptr [ESP + 0x4]
00d1a8c1  51  PUSH ECX
00d1a8c2  d91c24  FSTP float ptr [ESP]
00d1a8c5  e8b6ec0100  CALL 0x00d39580
00d1a8ca  c20400  RET 0x4
