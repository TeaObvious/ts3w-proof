# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; actual Ghidra Listing and preserved non-owned envelope gaps.
Owned ranges: [[004a6ca0, 004a6cce]]
Signature: undefined4 PackedFile_CreateModifiableIndex(int param_1)

004a6ca0  56  PUSH ESI
004a6ca1  8bf1  MOV ESI,ECX
004a6ca3  8b4610  MOV EAX,dword ptr [ESI + 0x10]
004a6ca6  685435fb00  PUSH 0xfb3554
004a6cab  50  PUSH EAX
004a6cac  6a30  PUSH 0x30
004a6cae  e84dd60300  CALL 0x004e4300
004a6cb3  83c40c  ADD ESP,0xc
004a6cb6  85c0  TEST EAX,EAX
004a6cb8  740f  JZ 0x004a6cc9
004a6cba  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
004a6cbd  5e  POP ESI
004a6cbe  894c2404  MOV dword ptr [ESP + 0x4],ECX
004a6cc2  8bc8  MOV ECX,EAX
004a6cc4  e977520000  JMP 0x004abf40
004a6cc9  33c0  XOR EAX,EAX
004a6ccb  5e  POP ESI
004a6ccc  c20400  RET 0x4
