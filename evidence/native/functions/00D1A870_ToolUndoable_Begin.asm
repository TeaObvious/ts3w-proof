# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool ToolUndoable_Begin(void * this)
Owned ranges: [[00d1a870, 00d1a88a]]

00d1a870  56  PUSH ESI
00d1a871  8bf1  MOV ESI,ECX
00d1a873  c7461001000000  MOV dword ptr [ESI + 0x10],0x1
00d1a87a  e8516ca7ff  CALL 0x007914d0
00d1a87f  84c0  TEST AL,AL
00d1a881  0f94c0  SETZ AL
00d1a884  884614  MOV byte ptr [ESI + 0x14],AL
00d1a887  b001  MOV AL,0x1
00d1a889  5e  POP ESI
00d1a88a  c3  RET
