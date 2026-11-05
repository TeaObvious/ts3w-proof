# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined UiGrid_AdmitAndPlaceCellWindow(void * this, undefined4 param_1, undefined4 param_2, int * param_3)
Owned ranges: [[0052a340, 0052a3cb]]

0052a340  83ec24  SUB ESP,0x24
0052a343  56  PUSH ESI
0052a344  57  PUSH EDI
0052a345  8b7c2438  MOV EDI,dword ptr [ESP + 0x38]
0052a349  85ff  TEST EDI,EDI
0052a34b  8bf1  MOV ESI,ECX
0052a34d  7475  JZ 0x0052a3c4
0052a34f  8b8ee4040000  MOV ECX,dword ptr [ESI + 0x4e4]
0052a355  8b01  MOV EAX,dword ptr [ECX]
0052a357  8b90dc000000  MOV EDX,dword ptr [EAX + 0xdc]
0052a35d  57  PUSH EDI
0052a35e  ffd2  CALL EDX
0052a360  84c0  TEST AL,AL
0052a362  7460  JZ 0x0052a3c4
0052a364  33c0  XOR EAX,EAX
0052a366  53  PUSH EBX
0052a367  8b5c2438  MOV EBX,dword ptr [ESP + 0x38]
0052a36b  55  PUSH EBP
0052a36c  8b6c2438  MOV EBP,dword ptr [ESP + 0x38]
0052a370  89442428  MOV dword ptr [ESP + 0x28],EAX
0052a374  8944242c  MOV dword ptr [ESP + 0x2c],EAX
0052a378  89442430  MOV dword ptr [ESP + 0x30],EAX
0052a37c  88442440  MOV byte ptr [ESP + 0x40],AL
0052a380  8b442440  MOV EAX,dword ptr [ESP + 0x40]
0052a384  50  PUSH EAX
0052a385  8d4c241c  LEA ECX,[ESP + 0x1c]
0052a389  51  PUSH ECX
0052a38a  8d542418  LEA EDX,[ESP + 0x18]
0052a38e  52  PUSH EDX
0052a38f  8d8ee0030000  LEA ECX,[ESI + 0x3e0]
0052a395  c744242401000000  MOV dword ptr [ESP + 0x24],0x1
0052a39d  896c2428  MOV dword ptr [ESP + 0x28],EBP
0052a3a1  895c242c  MOV dword ptr [ESP + 0x2c],EBX
0052a3a5  897c2430  MOV dword ptr [ESP + 0x30],EDI
0052a3a9  e892eaffff  CALL 0x00528e40
0052a3ae  8b442448  MOV EAX,dword ptr [ESP + 0x48]
0052a3b2  8b4c2444  MOV ECX,dword ptr [ESP + 0x44]
0052a3b6  50  PUSH EAX
0052a3b7  51  PUSH ECX
0052a3b8  57  PUSH EDI
0052a3b9  53  PUSH EBX
0052a3ba  55  PUSH EBP
0052a3bb  8bce  MOV ECX,ESI
0052a3bd  e80eb6ffff  CALL 0x005259d0
0052a3c2  5d  POP EBP
0052a3c3  5b  POP EBX
0052a3c4  5f  POP EDI
0052a3c5  5e  POP ESI
0052a3c6  83c424  ADD ESP,0x24
0052a3c9  c21400  RET 0x14
