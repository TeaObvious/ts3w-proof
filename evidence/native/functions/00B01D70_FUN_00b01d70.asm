# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe SHA256 694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3
Explicit program /TS3W.exe; read-only stored function body, no analyzer/definitions/metadata edits/save.
Paired actual Ghidra pseudocode: 00B01D70_FUN_00b01d70.c
Body [[00b01d70, 00b01dd4]]; envelope exclusive end 00b01dd5

GHIDRA LISTING (original bytes)
00b01d70  56  PUSH ESI
00b01d71  8b742408  MOV ESI,dword ptr [ESP + 0x8]
00b01d75  57  PUSH EDI
00b01d76  33ff  XOR EDI,EDI
00b01d78  85f6  TEST ESI,ESI
00b01d7a  7454  JZ 0x00b01dd0
00b01d7c  a1f8a01e01  MOV EAX,[0x011ea0f8]
00b01d81  85462c  TEST dword ptr [ESI + 0x2c],EAX
00b01d84  7414  JZ 0x00b01d9a
00b01d86  8b4e0c  MOV ECX,dword ptr [ESI + 0xc]
00b01d89  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00b01d8c  51  PUSH ECX
00b01d8d  50  PUSH EAX
00b01d8e  e8fdf4c8ff  CALL 0x00791290
00b01d93  83c408  ADD ESP,0x8
00b01d96  8bf8  MOV EDI,EAX
00b01d98  eb18  JMP 0x00b01db2
00b01d9a  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00b01da0  8d5618  LEA EDX,[ESI + 0x18]
00b01da3  52  PUSH EDX
00b01da4  e807ce1800  CALL 0x00c8ebb0
00b01da9  85c0  TEST EAX,EAX
00b01dab  7405  JZ 0x00b01db2
00b01dad  f30f2c7858  CVTTSS2SI EDI,dword ptr [EAX + 0x58]
00b01db2  a190a21e01  MOV EAX,[0x011ea290]
00b01db7  50  PUSH EAX
00b01db8  8bce  MOV ECX,ESI
00b01dba  e8a124e3ff  CALL 0x00934260
00b01dbf  85c0  TEST EAX,EAX
00b01dc1  740d  JZ 0x00b01dd0
00b01dc3  8bc8  MOV ECX,EAX
00b01dc5  e84688e5ff  CALL 0x0095a610
00b01dca  0fafc7  IMUL EAX,EDI
00b01dcd  5f  POP EDI
00b01dce  5e  POP ESI
00b01dcf  c3  RET
00b01dd0  8bc7  MOV EAX,EDI
00b01dd2  5f  POP EDI
00b01dd3  5e  POP ESI
00b01dd4  c3  RET
