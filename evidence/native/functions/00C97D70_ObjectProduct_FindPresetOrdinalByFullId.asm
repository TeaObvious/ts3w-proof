# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: uint ObjectProduct_FindPresetOrdinalByFullId(void * this, uint param_1)
Owned ranges: [[00c97d70, 00c97e0d]]

00c97d70  56  PUSH ESI
00c97d71  8bb108010000  MOV ESI,dword ptr [ECX + 0x108]
00c97d77  2bb104010000  SUB ESI,dword ptr [ECX + 0x104]
00c97d7d  57  PUSH EDI
00c97d7e  c1fe03  SAR ESI,0x3
00c97d81  8b7c240c  MOV EDI,dword ptr [ESP + 0xc]
00c97d85  b800000000  MOV EAX,0x0
00c97d8a  7417  JZ 0x00c97da3
00c97d8c  8b9104010000  MOV EDX,dword ptr [ECX + 0x104]
00c97d92  83c204  ADD EDX,0x4
00c97d95  393a  CMP dword ptr [EDX],EDI
00c97d97  7470  JZ 0x00c97e09
00c97d99  83c001  ADD EAX,0x1
00c97d9c  83c208  ADD EDX,0x8
00c97d9f  3bc6  CMP EAX,ESI
00c97da1  72f2  JC 0x00c97d95
00c97da3  6a00  PUSH 0x0
00c97da5  8d442410  LEA EAX,[ESP + 0x10]
00c97da9  50  PUSH EAX
00c97daa  83c108  ADD ECX,0x8
00c97dad  51  PUSH ECX
00c97dae  c744241800000000  MOV dword ptr [ESP + 0x18],0x0
00c97db6  e8e584e9ff  CALL 0x00b302a0
00c97dbb  8bc8  MOV ECX,EAX
00c97dbd  e86e9ae9ff  CALL 0x00b31830
00c97dc2  f7c700008000  TEST EDI,0x800000
00c97dc8  742d  JZ 0x00c97df7
00c97dca  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
00c97dce  85c9  TEST ECX,ECX
00c97dd0  7434  JZ 0x00c97e06
00c97dd2  57  PUSH EDI
00c97dd3  6a01  PUSH 0x1
00c97dd5  e8b62497ff  CALL 0x0060a290
00c97dda  83f8ff  CMP EAX,-0x1
00c97ddd  7418  JZ 0x00c97df7
00c97ddf  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
00c97de3  03f0  ADD ESI,EAX
00c97de5  85c9  TEST ECX,ECX
00c97de7  7407  JZ 0x00c97df0
00c97de9  8b11  MOV EDX,dword ptr [ECX]
00c97deb  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00c97dee  ffd0  CALL EAX
00c97df0  5f  POP EDI
00c97df1  8bc6  MOV EAX,ESI
00c97df3  5e  POP ESI
00c97df4  c20400  RET 0x4
00c97df7  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
00c97dfb  85c9  TEST ECX,ECX
00c97dfd  7407  JZ 0x00c97e06
00c97dff  8b11  MOV EDX,dword ptr [ECX]
00c97e01  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00c97e04  ffd0  CALL EAX
00c97e06  83c8ff  OR EAX,0xffffffff
00c97e09  5f  POP EDI
00c97e0a  5e  POP ESI
00c97e0b  c20400  RET 0x4
