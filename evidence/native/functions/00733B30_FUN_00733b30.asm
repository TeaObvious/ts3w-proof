# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined FUN_00733b30(undefined4 param_1)
Owned ranges: [[00733b30, 00733b52]]

00733b30  56  PUSH ESI
00733b31  8bf1  MOV ESI,ECX
00733b33  e848c3d7ff  CALL 0x004afe80
00733b38  85c0  TEST EAX,EAX
00733b3a  7415  JZ 0x00733b51
00733b3c  8b10  MOV EDX,dword ptr [EAX]
00733b3e  6a00  PUSH 0x0
00733b40  6a00  PUSH 0x0
00733b42  56  PUSH ESI
00733b43  68b0377300  PUSH 0x7337b0
00733b48  8bc8  MOV ECX,EAX
00733b4a  8b4224  MOV EAX,dword ptr [EDX + 0x24]
00733b4d  6a00  PUSH 0x0
00733b4f  ffd0  CALL EAX
00733b51  5e  POP ESI
00733b52  c3  RET
