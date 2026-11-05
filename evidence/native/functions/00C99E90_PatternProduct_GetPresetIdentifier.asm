# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 00C99E90_PatternProduct_GetPresetIdentifier.c
Owned ranges: [[00c99e90, 00c99f41]]

00c99e90  8b91c4000000  MOV EDX,dword ptr [ECX + 0xc4]
00c99e96  2b91c0000000  SUB EDX,dword ptr [ECX + 0xc0]
00c99e9c  b867666666  MOV EAX,0x66666667
00c99ea1  f7ea  IMUL EDX
00c99ea3  c1fa03  SAR EDX,0x3
00c99ea6  8bc2  MOV EAX,EDX
00c99ea8  c1e81f  SHR EAX,0x1f
00c99eab  56  PUSH ESI
00c99eac  8b742408  MOV ESI,dword ptr [ESP + 0x8]
00c99eb0  03c2  ADD EAX,EDX
00c99eb2  3bf0  CMP ESI,EAX
00c99eb4  7311  JNC 0x00c99ec7
00c99eb6  8b81c0000000  MOV EAX,dword ptr [ECX + 0xc0]
00c99ebc  8d14b6  LEA EDX,[ESI + ESI*0x4]
00c99ebf  8b449004  MOV EAX,dword ptr [EAX + EDX*0x4 + 0x4]
00c99ec3  5e  POP ESI
00c99ec4  c20400  RET 0x4
00c99ec7  8b91c4000000  MOV EDX,dword ptr [ECX + 0xc4]
00c99ecd  2b91c0000000  SUB EDX,dword ptr [ECX + 0xc0]
00c99ed3  b899999999  MOV EAX,0x99999999
00c99ed8  f7ea  IMUL EDX
00c99eda  c1fa03  SAR EDX,0x3
00c99edd  8bc2  MOV EAX,EDX
00c99edf  c1e81f  SHR EAX,0x1f
00c99ee2  03c2  ADD EAX,EDX
00c99ee4  6a00  PUSH 0x0
00c99ee6  8d54240c  LEA EDX,[ESP + 0xc]
00c99eea  52  PUSH EDX
00c99eeb  83c108  ADD ECX,0x8
00c99eee  51  PUSH ECX
00c99eef  03f0  ADD ESI,EAX
00c99ef1  c744241400000000  MOV dword ptr [ESP + 0x14],0x0
00c99ef9  e8a263e9ff  CALL 0x00b302a0
00c99efe  8bc8  MOV ECX,EAX
00c99f00  e82b79e9ff  CALL 0x00b31830
00c99f05  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
00c99f09  85c9  TEST ECX,ECX
00c99f0b  742f  JZ 0x00c99f3c
00c99f0d  56  PUSH ESI
00c99f0e  6a02  PUSH 0x2
00c99f10  e8db0397ff  CALL 0x0060a2f0
00c99f15  85c0  TEST EAX,EAX
00c99f17  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
00c99f1b  7414  JZ 0x00c99f31
00c99f1d  85c9  TEST ECX,ECX
00c99f1f  8b7010  MOV ESI,dword ptr [EAX + 0x10]
00c99f22  7407  JZ 0x00c99f2b
00c99f24  8b01  MOV EAX,dword ptr [ECX]
00c99f26  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00c99f29  ffd2  CALL EDX
00c99f2b  8bc6  MOV EAX,ESI
00c99f2d  5e  POP ESI
00c99f2e  c20400  RET 0x4
00c99f31  85c9  TEST ECX,ECX
00c99f33  7407  JZ 0x00c99f3c
00c99f35  8b01  MOV EAX,dword ptr [ECX]
00c99f37  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00c99f3a  ffd2  CALL EDX
00c99f3c  33c0  XOR EAX,EAX
00c99f3e  5e  POP ESI
00c99f3f  c20400  RET 0x4
