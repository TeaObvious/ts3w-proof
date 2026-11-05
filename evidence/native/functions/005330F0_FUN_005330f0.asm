# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 005330F0_FUN_005330f0.c
Owned ranges: [[005330f0, 0053316f]]

005330f0  83ec10  SUB ESP,0x10
005330f3  56  PUSH ESI
005330f4  8bf1  MOV ESI,ECX
005330f6  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
005330fa  8b01  MOV EAX,dword ptr [ECX]
005330fc  8b5010  MOV EDX,dword ptr [EAX + 0x10]
005330ff  ffd2  CALL EDX
00533101  8b10  MOV EDX,dword ptr [EAX]
00533103  8bc8  MOV ECX,EAX
00533105  8b4238  MOV EAX,dword ptr [EDX + 0x38]
00533108  ffd0  CALL EAX
0053310a  f30f1000  MOVSS XMM0,dword ptr [EAX]
0053310e  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00533111  8b5214  MOV EDX,dword ptr [EDX + 0x14]
00533114  f30f11442404  MOVSS dword ptr [ESP + 0x4],XMM0
0053311a  f30f104004  MOVSS XMM0,dword ptr [EAX + 0x4]
0053311f  f30f11442408  MOVSS dword ptr [ESP + 0x8],XMM0
00533125  f30f104008  MOVSS XMM0,dword ptr [EAX + 0x8]
0053312a  8d4e10  LEA ECX,[ESI + 0x10]
0053312d  8b74241c  MOV ESI,dword ptr [ESP + 0x1c]
00533131  f30f1144240c  MOVSS dword ptr [ESP + 0xc],XMM0
00533137  f30f10400c  MOVSS XMM0,dword ptr [EAX + 0xc]
0053313c  56  PUSH ESI
0053313d  8d442408  LEA EAX,[ESP + 0x8]
00533141  50  PUSH EAX
00533142  f30f11442418  MOVSS dword ptr [ESP + 0x18],XMM0
00533148  ffd2  CALL EDX
0053314a  f30f1006  MOVSS XMM0,dword ptr [ESI]
0053314e  0f2f4608  COMISS XMM0,dword ptr [ESI + 0x8]
00533152  7605  JBE 0x00533159
00533154  f30f114608  MOVSS dword ptr [ESI + 0x8],XMM0
00533159  f30f104604  MOVSS XMM0,dword ptr [ESI + 0x4]
0053315e  0f2f460c  COMISS XMM0,dword ptr [ESI + 0xc]
00533162  7605  JBE 0x00533169
00533164  f30f11460c  MOVSS dword ptr [ESI + 0xc],XMM0
00533169  5e  POP ESI
0053316a  83c410  ADD ESP,0x10
0053316d  c20800  RET 0x8
