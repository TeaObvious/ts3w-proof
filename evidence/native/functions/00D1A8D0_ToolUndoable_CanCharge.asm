# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool ToolUndoable_CanCharge(void * this, float amount)
Owned ranges: [[00d1a8d0, 00d1a8fb]]

00d1a8d0  80791400  CMP byte ptr [ECX + 0x14],0x0
00d1a8d4  7521  JNZ 0x00d1a8f7
00d1a8d6  0f57c0  XORPS XMM0,XMM0
00d1a8d9  0f2f442404  COMISS XMM0,dword ptr [ESP + 0x4]
00d1a8de  7317  JNC 0x00d1a8f7
00d1a8e0  8b490c  MOV ECX,dword ptr [ECX + 0xc]
00d1a8e3  85c9  TEST ECX,ECX
00d1a8e5  7410  JZ 0x00d1a8f7
00d1a8e7  d9442404  FLD float ptr [ESP + 0x4]
00d1a8eb  51  PUSH ECX
00d1a8ec  d91c24  FSTP float ptr [ESP]
00d1a8ef  e8dcec0100  CALL 0x00d395d0
00d1a8f4  c20400  RET 0x4
00d1a8f7  b001  MOV AL,0x1
00d1a8f9  c20400  RET 0x4
