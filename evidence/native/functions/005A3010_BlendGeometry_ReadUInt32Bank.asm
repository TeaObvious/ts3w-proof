# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined BlendGeometry_ReadUInt32Bank(void * this, uint * param_1, int param_2)
Owned ranges: [[005a3010, 005a3038]]

005a3010  8b542404  MOV EDX,dword ptr [ESP + 0x4]
005a3014  56  PUSH ESI
005a3015  8bf1  MOV ESI,ECX
005a3017  8b4610  MOV EAX,dword ptr [ESI + 0x10]
005a301a  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
005a301e  50  PUSH EAX
005a301f  8b4608  MOV EAX,dword ptr [ESI + 0x8]
005a3022  51  PUSH ECX
005a3023  52  PUSH EDX
005a3024  50  PUSH EAX
005a3025  e8a6a9f3ff  CALL 0x004dd9d0
005a302a  83c410  ADD ESP,0x10
005a302d  8bce  MOV ECX,ESI
005a302f  50  PUSH EAX
005a3030  e8bb492300  CALL 0x007d79f0
005a3035  5e  POP ESI
005a3036  c20800  RET 0x8
