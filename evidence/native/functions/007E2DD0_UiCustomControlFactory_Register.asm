# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 007E2DD0_UiCustomControlFactory_Register.c
Owned ranges: [[007e2dd0, 007e2e21]]

007e2dd0  56  PUSH ESI
007e2dd1  6a00  PUSH 0x0
007e2dd3  6a00  PUSH 0x0
007e2dd5  6a00  PUSH 0x0
007e2dd7  6a00  PUSH 0x0
007e2dd9  6854c60101  PUSH 0x101c654
007e2dde  6a08  PUSH 0x8
007e2de0  e81b17d0ff  CALL 0x004e4500
007e2de5  83c418  ADD ESP,0x18
007e2de8  85c0  TEST EAX,EAX
007e2dea  7422  JZ 0x007e2e0e
007e2dec  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
007e2df0  c7003cc60101  MOV dword ptr [EAX],0x101c63c
007e2df6  894804  MOV dword ptr [EAX + 0x4],ECX
007e2df9  8bf0  MOV ESI,EAX
007e2dfb  e8b060cfff  CALL 0x004d8eb0
007e2e00  8b10  MOV EDX,dword ptr [EAX]
007e2e02  6a00  PUSH 0x0
007e2e04  8bc8  MOV ECX,EAX
007e2e06  8b4204  MOV EAX,dword ptr [EDX + 0x4]
007e2e09  56  PUSH ESI
007e2e0a  ffd0  CALL EAX
007e2e0c  5e  POP ESI
007e2e0d  c3  RET
007e2e0e  33f6  XOR ESI,ESI
007e2e10  e89b60cfff  CALL 0x004d8eb0
007e2e15  8b10  MOV EDX,dword ptr [EAX]
007e2e17  56  PUSH ESI
007e2e18  8bc8  MOV ECX,EAX
007e2e1a  8b4204  MOV EAX,dword ptr [EDX + 0x4]
007e2e1d  56  PUSH ESI
007e2e1e  ffd0  CALL EAX
007e2e20  5e  POP ESI
007e2e21  c3  RET
