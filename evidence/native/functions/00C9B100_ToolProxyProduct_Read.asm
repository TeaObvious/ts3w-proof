# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool ToolProxyProduct_Read(void * this, pointer stream)
Owned ranges: [[00c9b100, 00c9b183]]

00c9b100  83ec1c  SUB ESP,0x1c
00c9b103  53  PUSH EBX
00c9b104  56  PUSH ESI
00c9b105  57  PUSH EDI
00c9b106  8b7c242c  MOV EDI,dword ptr [ESP + 0x2c]
00c9b10a  6a01  PUSH 0x1
00c9b10c  8bf1  MOV ESI,ECX
00c9b10e  57  PUSH EDI
00c9b10f  8d4c2418  LEA ECX,[ESP + 0x18]
00c9b113  e8c8e2b3ff  CALL 0x007d93e0
00c9b118  8b442420  MOV EAX,dword ptr [ESP + 0x20]
00c9b11c  8b542418  MOV EDX,dword ptr [ESP + 0x18]
00c9b120  50  PUSH EAX
00c9b121  8d4c2410  LEA ECX,[ESP + 0x10]
00c9b125  51  PUSH ECX
00c9b126  52  PUSH EDX
00c9b127  e8542884ff  CALL 0x004dd980
00c9b12c  83c40c  ADD ESP,0xc
00c9b12f  8d4c2410  LEA ECX,[ESP + 0x10]
00c9b133  50  PUSH EAX
00c9b134  e8b7c8b3ff  CALL 0x007d79f0
00c9b139  57  PUSH EDI
00c9b13a  8bce  MOV ECX,ESI
00c9b13c  e8bf7fffff  CALL 0x00c93100
00c9b141  8b442420  MOV EAX,dword ptr [ESP + 0x20]
00c9b145  8b542418  MOV EDX,dword ptr [ESP + 0x18]
00c9b149  50  PUSH EAX
00c9b14a  8d4c2430  LEA ECX,[ESP + 0x30]
00c9b14e  51  PUSH ECX
00c9b14f  52  PUSH EDX
00c9b150  e82b2884ff  CALL 0x004dd980
00c9b155  83c40c  ADD ESP,0xc
00c9b158  8d4c2410  LEA ECX,[ESP + 0x10]
00c9b15c  50  PUSH EAX
00c9b15d  e88ec8b3ff  CALL 0x007d79f0
00c9b162  8b44242c  MOV EAX,dword ptr [ESP + 0x2c]
00c9b166  8a5c2424  MOV BL,byte ptr [ESP + 0x24]
00c9b16a  8d4c2410  LEA ECX,[ESP + 0x10]
00c9b16e  898688000000  MOV dword ptr [ESI + 0x88],EAX
00c9b174  e817c8b3ff  CALL 0x007d7990
00c9b179  5f  POP EDI
00c9b17a  5e  POP ESI
00c9b17b  8ac3  MOV AL,BL
00c9b17d  5b  POP EBX
00c9b17e  83c41c  ADD ESP,0x1c
00c9b181  c20400  RET 0x4
