# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined4 FloorElevation_SelectCellDiagonal(void * this, char * param_1)
Owned ranges: [[00aa0e80, 00aa0ede]]

00aa0e80  8b5178  MOV EDX,dword ptr [ECX + 0x78]
00aa0e83  56  PUSH ESI
00aa0e84  8b7208  MOV ESI,dword ptr [EDX + 0x8]
00aa0e87  57  PUSH EDI
00aa0e88  8b7c240c  MOV EDI,dword ptr [ESP + 0xc]
00aa0e8c  0fbe4702  MOVSX EAX,byte ptr [EDI + 0x2]
00aa0e90  2b410c  SUB EAX,dword ptr [ECX + 0xc]
00aa0e93  0fbe0f  MOVSX ECX,byte ptr [EDI]
00aa0e96  0faf4204  IMUL EAX,dword ptr [EDX + 0x4]
00aa0e9a  8b5210  MOV EDX,dword ptr [EDX + 0x10]
00aa0e9d  03c1  ADD EAX,ECX
00aa0e9f  0fbe4f01  MOVSX ECX,byte ptr [EDI + 0x1]
00aa0ea3  0fafc6  IMUL EAX,ESI
00aa0ea6  03c1  ADD EAX,ECX
00aa0ea8  f30f101482  MOVSS XMM2,dword ptr [EDX + EAX*0x4]
00aa0ead  f30f105c8204  MOVSS XMM3,dword ptr [EDX + EAX*0x4 + 0x4]
00aa0eb3  03f0  ADD ESI,EAX
00aa0eb5  f30f1004b2  MOVSS XMM0,dword ptr [EDX + ESI*0x4]
00aa0eba  f30f104cb204  MOVSS XMM1,dword ptr [EDX + ESI*0x4 + 0x4]
00aa0ec0  8d04b2  LEA EAX,[EDX + ESI*0x4]
00aa0ec3  f30f58ca  ADDSS XMM1,XMM2
00aa0ec7  f30f58c3  ADDSS XMM0,XMM3
00aa0ecb  0f2fc8  COMISS XMM1,XMM0
00aa0ece  5f  POP EDI
00aa0ecf  5e  POP ESI
00aa0ed0  7608  JBE 0x00aa0eda
00aa0ed2  b801000000  MOV EAX,0x1
00aa0ed7  c20400  RET 0x4
00aa0eda  33c0  XOR EAX,EAX
00aa0edc  c20400  RET 0x4
