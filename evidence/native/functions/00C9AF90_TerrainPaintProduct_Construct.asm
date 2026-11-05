# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 00C9AF90_TerrainPaintProduct_Construct.c
Owned ranges: [[00c9af90, 00c9afc1]]

00c9af90  56  PUSH ESI
00c9af91  8bf1  MOV ESI,ECX
00c9af93  e86886ffff  CALL 0x00c93600
00c9af98  33c0  XOR EAX,EAX
00c9af9a  c70648d30701  MOV dword ptr [ESI],0x107d348
00c9afa0  8986c0000000  MOV dword ptr [ESI + 0xc0],EAX
00c9afa6  8986c4000000  MOV dword ptr [ESI + 0xc4],EAX
00c9afac  8986c8000000  MOV dword ptr [ESI + 0xc8],EAX
00c9afb2  8986cc000000  MOV dword ptr [ESI + 0xcc],EAX
00c9afb8  8986d4000000  MOV dword ptr [ESI + 0xd4],EAX
00c9afbe  8bc6  MOV EAX,ESI
00c9afc0  5e  POP ESI
00c9afc1  c3  RET
