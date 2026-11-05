# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined BlendGeometry_ReadUInt16Bank(void * this, ushort * param_1, int param_2)
Owned ranges: [[005a2fb0, 005a2fd8]]

005a2fb0  8b542404  MOV EDX,dword ptr [ESP + 0x4]
005a2fb4  56  PUSH ESI
005a2fb5  8bf1  MOV ESI,ECX
005a2fb7  8b4610  MOV EAX,dword ptr [ESI + 0x10]
005a2fba  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
005a2fbe  50  PUSH EAX
005a2fbf  8b4608  MOV EAX,dword ptr [ESI + 0x8]
005a2fc2  51  PUSH ECX
005a2fc3  52  PUSH EDX
005a2fc4  50  PUSH EAX
005a2fc5  e856a9f3ff  CALL 0x004dd920
005a2fca  83c410  ADD ESP,0x10
005a2fcd  8bce  MOV ECX,ESI
005a2fcf  50  PUSH EAX
005a2fd0  e81b4a2300  CALL 0x007d79f0
005a2fd5  5e  POP ESI
005a2fd6  c20800  RET 0x8
