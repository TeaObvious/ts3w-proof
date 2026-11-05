# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 00C9B1D0_WallStyleProduct_Construct.c
Owned ranges: [[00c9b1d0, 00c9b21f]]

00c9b1d0  56  PUSH ESI
00c9b1d1  8bf1  MOV ESI,ECX
00c9b1d3  e808e7ffff  CALL 0x00c998e0
00c9b1d8  33c0  XOR EAX,EAX
00c9b1da  c706b4d30701  MOV dword ptr [ESI],0x107d3b4
00c9b1e0  8986a8000000  MOV dword ptr [ESI + 0xa8],EAX
00c9b1e6  8986ac000000  MOV dword ptr [ESI + 0xac],EAX
00c9b1ec  8986b0000000  MOV dword ptr [ESI + 0xb0],EAX
00c9b1f2  8986b4000000  MOV dword ptr [ESI + 0xb4],EAX
00c9b1f8  50  PUSH EAX
00c9b1f9  8bce  MOV ECX,ESI
00c9b1fb  c786b8000000ffffffff  MOV dword ptr [ESI + 0xb8],0xffffffff
00c9b205  e8c6e4ffff  CALL 0x00c996d0
00c9b20a  6a01  PUSH 0x1
00c9b20c  8bce  MOV ECX,ESI
00c9b20e  e8cde4ffff  CALL 0x00c996e0
00c9b213  6a04  PUSH 0x4
00c9b215  8bce  MOV ECX,ESI
00c9b217  e8e4e4ffff  CALL 0x00c99700
00c9b21c  8bc6  MOV EAX,ESI
00c9b21e  5e  POP ESI
00c9b21f  c3  RET
