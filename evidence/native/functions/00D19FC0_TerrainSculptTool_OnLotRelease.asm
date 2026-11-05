# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool TerrainSculptTool_OnLotRelease(void * this)
Owned ranges: [[00d19fc0, 00d1a06e]]

00d19fc0  53  PUSH EBX
00d19fc1  56  PUSH ESI
00d19fc2  8bf1  MOV ESI,ECX
00d19fc4  33db  XOR EBX,EBX
00d19fc6  385e5e  CMP byte ptr [ESI + 0x5e],BL
00d19fc9  747c  JZ 0x00d1a047
00d19fcb  e84098fbff  CALL 0x00cd3810
00d19fd0  8b8e78010000  MOV ECX,dword ptr [ESI + 0x178]
00d19fd6  3bcb  CMP ECX,EBX
00d19fd8  7429  JZ 0x00d1a003
00d19fda  8b01  MOV EAX,dword ptr [ECX]
00d19fdc  8b5050  MOV EDX,dword ptr [EAX + 0x50]
00d19fdf  ffd2  CALL EDX
00d19fe1  84c0  TEST AL,AL
00d19fe3  7411  JZ 0x00d19ff6
00d19fe5  8b8678010000  MOV EAX,dword ptr [ESI + 0x178]
00d19feb  53  PUSH EBX
00d19fec  50  PUSH EAX
00d19fed  8bce  MOV ECX,ESI
00d19fef  e82c9afbff  CALL 0x00cd3a20
00d19ff4  eb0d  JMP 0x00d1a003
00d19ff6  8b8e78010000  MOV ECX,dword ptr [ESI + 0x178]
00d19ffc  8b11  MOV EDX,dword ptr [ECX]
00d19ffe  8b4208  MOV EAX,dword ptr [EDX + 0x8]
00d1a001  ffd0  CALL EAX
00d1a003  8b8e78010000  MOV ECX,dword ptr [ESI + 0x178]
00d1a009  3bcb  CMP ECX,EBX
00d1a00b  7422  JZ 0x00d1a02f
00d1a00d  899e78010000  MOV dword ptr [ESI + 0x178],EBX
00d1a013  8b4104  MOV EAX,dword ptr [ECX + 0x4]
00d1a016  83c0ff  ADD EAX,-0x1
00d1a019  3bc3  CMP EAX,EBX
00d1a01b  894104  MOV dword ptr [ECX + 0x4],EAX
00d1a01e  750f  JNZ 0x00d1a02f
00d1a020  c7410401000000  MOV dword ptr [ECX + 0x4],0x1
00d1a027  8b11  MOV EDX,dword ptr [ECX]
00d1a029  8b02  MOV EAX,dword ptr [EDX]
00d1a02b  6a01  PUSH 0x1
00d1a02d  ffd0  CALL EAX
00d1a02f  8bce  MOV ECX,ESI
00d1a031  885e5e  MOV byte ptr [ESI + 0x5e],BL
00d1a034  889ebd000000  MOV byte ptr [ESI + 0xbd],BL
00d1a03a  e88136fdff  CALL 0x00ced6c0
00d1a03f  8d4ed8  LEA ECX,[ESI + -0x28]
00d1a042  e829fdffff  CALL 0x00d19d70
00d1a047  8bce  MOV ECX,ESI
00d1a049  e8124afbff  CALL 0x00ccea60
00d1a04e  8b866c010000  MOV EAX,dword ptr [ESI + 0x16c]
00d1a054  3bc3  CMP EAX,EBX
00d1a056  7410  JZ 0x00d1a068
00d1a058  53  PUSH EBX
00d1a059  50  PUSH EAX
00d1a05a  e88168b4ff  CALL 0x008608e0
00d1a05f  83c408  ADD ESP,0x8
00d1a062  899e6c010000  MOV dword ptr [ESI + 0x16c],EBX
00d1a068  5e  POP ESI
00d1a069  b001  MOV AL,0x1
00d1a06b  5b  POP EBX
00d1a06c  c20800  RET 0x8
