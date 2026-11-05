# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined4 FUN_00733b00(undefined4 param_1)
Owned ranges: [[00733b00, 00733b26]]

00733b00  56  PUSH ESI
00733b01  8bf1  MOV ESI,ECX
00733b03  e878c3d7ff  CALL 0x004afe80
00733b08  85c0  TEST EAX,EAX
00733b0a  7417  JZ 0x00733b23
00733b0c  8b10  MOV EDX,dword ptr [EAX]
00733b0e  6a00  PUSH 0x0
00733b10  6a00  PUSH 0x0
00733b12  56  PUSH ESI
00733b13  68b0377300  PUSH 0x7337b0
00733b18  8bc8  MOV ECX,EAX
00733b1a  8b4224  MOV EAX,dword ptr [EDX + 0x24]
00733b1d  6a01  PUSH 0x1
00733b1f  ffd0  CALL EAX
00733b21  5e  POP ESI
00733b22  c3  RET
00733b23  32c0  XOR AL,AL
00733b25  5e  POP ESI
00733b26  c3  RET
