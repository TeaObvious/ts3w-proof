# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool Stream_WriteUInt64ArrayByByteOrder(pointer stream, pointer input, uint count, uint byteOrder)
Owned ranges: [[004de100, 004de18e]]

004de100  83ec08  SUB ESP,0x8
004de103  837c241801  CMP dword ptr [ESP + 0x18],0x1
004de108  53  PUSH EBX
004de109  56  PUSH ESI
004de10a  57  PUSH EDI
004de10b  745a  JZ 0x004de167
004de10d  8b5c2420  MOV EBX,dword ptr [ESP + 0x20]
004de111  85db  TEST EBX,EBX
004de113  7471  JZ 0x004de186
004de115  8b7c2418  MOV EDI,dword ptr [ESP + 0x18]
004de119  8b74241c  MOV ESI,dword ptr [ESP + 0x1c]
004de11d  8d4900  LEA ECX,[ECX]
004de120  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
004de123  8b06  MOV EAX,dword ptr [ESI]
004de125  51  PUSH ECX
004de126  50  PUSH EAX
004de127  83eb01  SUB EBX,0x1
004de12a  e8e1f5ffff  CALL 0x004dd710
004de12f  83c408  ADD ESP,0x8
004de132  8944240c  MOV dword ptr [ESP + 0xc],EAX
004de136  8b07  MOV EAX,dword ptr [EDI]
004de138  6a08  PUSH 0x8
004de13a  8d4c2410  LEA ECX,[ESP + 0x10]
004de13e  89542414  MOV dword ptr [ESP + 0x14],EDX
004de142  8b5038  MOV EDX,dword ptr [EAX + 0x38]
004de145  51  PUSH ECX
004de146  8bcf  MOV ECX,EDI
004de148  83c608  ADD ESI,0x8
004de14b  ffd2  CALL EDX
004de14d  84c0  TEST AL,AL
004de14f  740d  JZ 0x004de15e
004de151  85db  TEST EBX,EBX
004de153  75cb  JNZ 0x004de120
004de155  5f  POP EDI
004de156  5e  POP ESI
004de157  b001  MOV AL,0x1
004de159  5b  POP EBX
004de15a  83c408  ADD ESP,0x8
004de15d  c3  RET
004de15e  5f  POP EDI
004de15f  5e  POP ESI
004de160  32c0  XOR AL,AL
004de162  5b  POP EBX
004de163  83c408  ADD ESP,0x8
004de166  c3  RET
004de167  8b542420  MOV EDX,dword ptr [ESP + 0x20]
004de16b  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
004de16f  8b01  MOV EAX,dword ptr [ECX]
004de171  8b4038  MOV EAX,dword ptr [EAX + 0x38]
004de174  03d2  ADD EDX,EDX
004de176  03d2  ADD EDX,EDX
004de178  03d2  ADD EDX,EDX
004de17a  52  PUSH EDX
004de17b  8b542420  MOV EDX,dword ptr [ESP + 0x20]
004de17f  52  PUSH EDX
004de180  ffd0  CALL EAX
004de182  84c0  TEST AL,AL
004de184  74d8  JZ 0x004de15e
004de186  5f  POP EDI
004de187  5e  POP ESI
004de188  b001  MOV AL,0x1
004de18a  5b  POP EBX
004de18b  83c408  ADD ESP,0x8
004de18e  c3  RET
