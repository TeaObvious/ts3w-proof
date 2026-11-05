# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 00C9A0B0_PatternProduct_CountAuthoredAndInstalledPresets.c
Owned ranges: [[00c9a0b0, 00c9a11c]]

00c9a0b0  51  PUSH ECX
00c9a0b1  8b91c4000000  MOV EDX,dword ptr [ECX + 0xc4]
00c9a0b7  2b91c0000000  SUB EDX,dword ptr [ECX + 0xc0]
00c9a0bd  b867666666  MOV EAX,0x66666667
00c9a0c2  f7ea  IMUL EDX
00c9a0c4  56  PUSH ESI
00c9a0c5  c1fa03  SAR EDX,0x3
00c9a0c8  6a00  PUSH 0x0
00c9a0ca  8d442408  LEA EAX,[ESP + 0x8]
00c9a0ce  8bf2  MOV ESI,EDX
00c9a0d0  50  PUSH EAX
00c9a0d1  83c108  ADD ECX,0x8
00c9a0d4  c1ee1f  SHR ESI,0x1f
00c9a0d7  51  PUSH ECX
00c9a0d8  03f2  ADD ESI,EDX
00c9a0da  c744241000000000  MOV dword ptr [ESP + 0x10],0x0
00c9a0e2  e8b961e9ff  CALL 0x00b302a0
00c9a0e7  8bc8  MOV ECX,EAX
00c9a0e9  e84277e9ff  CALL 0x00b31830
00c9a0ee  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
00c9a0f2  85c9  TEST ECX,ECX
00c9a0f4  7420  JZ 0x00c9a116
00c9a0f6  57  PUSH EDI
00c9a0f7  6a02  PUSH 0x2
00c9a0f9  e8620197ff  CALL 0x0060a260
00c9a0fe  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
00c9a102  85c9  TEST ECX,ECX
00c9a104  8bf8  MOV EDI,EAX
00c9a106  7407  JZ 0x00c9a10f
00c9a108  8b11  MOV EDX,dword ptr [ECX]
00c9a10a  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00c9a10d  ffd0  CALL EAX
00c9a10f  8d0437  LEA EAX,[EDI + ESI*0x1]
00c9a112  5f  POP EDI
00c9a113  5e  POP ESI
00c9a114  59  POP ECX
00c9a115  c3  RET
00c9a116  33c0  XOR EAX,EAX
00c9a118  8bc6  MOV EAX,ESI
00c9a11a  5e  POP ESI
00c9a11b  59  POP ECX
00c9a11c  c3  RET
