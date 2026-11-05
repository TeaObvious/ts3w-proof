# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 00C99BD0_PatternProduct_GetPresetSubsortMask.c
Owned ranges: [[00c99bd0, 00c99c81]]

00c99bd0  8b91c4000000  MOV EDX,dword ptr [ECX + 0xc4]
00c99bd6  2b91c0000000  SUB EDX,dword ptr [ECX + 0xc0]
00c99bdc  b867666666  MOV EAX,0x66666667
00c99be1  f7ea  IMUL EDX
00c99be3  c1fa03  SAR EDX,0x3
00c99be6  8bc2  MOV EAX,EDX
00c99be8  c1e81f  SHR EAX,0x1f
00c99beb  56  PUSH ESI
00c99bec  8b742408  MOV ESI,dword ptr [ESP + 0x8]
00c99bf0  03c2  ADD EAX,EDX
00c99bf2  3bf0  CMP ESI,EAX
00c99bf4  7311  JNC 0x00c99c07
00c99bf6  8b81c0000000  MOV EAX,dword ptr [ECX + 0xc0]
00c99bfc  8d14b6  LEA EDX,[ESI + ESI*0x4]
00c99bff  8b449008  MOV EAX,dword ptr [EAX + EDX*0x4 + 0x8]
00c99c03  5e  POP ESI
00c99c04  c20400  RET 0x4
00c99c07  8b91c4000000  MOV EDX,dword ptr [ECX + 0xc4]
00c99c0d  2b91c0000000  SUB EDX,dword ptr [ECX + 0xc0]
00c99c13  b899999999  MOV EAX,0x99999999
00c99c18  f7ea  IMUL EDX
00c99c1a  c1fa03  SAR EDX,0x3
00c99c1d  8bc2  MOV EAX,EDX
00c99c1f  c1e81f  SHR EAX,0x1f
00c99c22  03c2  ADD EAX,EDX
00c99c24  6a00  PUSH 0x0
00c99c26  8d54240c  LEA EDX,[ESP + 0xc]
00c99c2a  52  PUSH EDX
00c99c2b  83c108  ADD ECX,0x8
00c99c2e  51  PUSH ECX
00c99c2f  03f0  ADD ESI,EAX
00c99c31  c744241400000000  MOV dword ptr [ESP + 0x14],0x0
00c99c39  e86266e9ff  CALL 0x00b302a0
00c99c3e  8bc8  MOV ECX,EAX
00c99c40  e8eb7be9ff  CALL 0x00b31830
00c99c45  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
00c99c49  85c9  TEST ECX,ECX
00c99c4b  742f  JZ 0x00c99c7c
00c99c4d  56  PUSH ESI
00c99c4e  6a02  PUSH 0x2
00c99c50  e89b0697ff  CALL 0x0060a2f0
00c99c55  85c0  TEST EAX,EAX
00c99c57  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
00c99c5b  7414  JZ 0x00c99c71
00c99c5d  85c9  TEST ECX,ECX
00c99c5f  8b7018  MOV ESI,dword ptr [EAX + 0x18]
00c99c62  7407  JZ 0x00c99c6b
00c99c64  8b01  MOV EAX,dword ptr [ECX]
00c99c66  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00c99c69  ffd2  CALL EDX
00c99c6b  8bc6  MOV EAX,ESI
00c99c6d  5e  POP ESI
00c99c6e  c20400  RET 0x4
00c99c71  85c9  TEST ECX,ECX
00c99c73  7407  JZ 0x00c99c7c
00c99c75  8b01  MOV EAX,dword ptr [ECX]
00c99c77  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00c99c7a  ffd2  CALL EDX
00c99c7c  33c0  XOR EAX,EAX
00c99c7e  5e  POP ESI
00c99c7f  c20400  RET 0x4
