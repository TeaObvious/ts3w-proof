# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined4 Stream_ReadUInt32ArrayByByteOrder(int * param_1, uint * param_2, uint unitCount, uint endianFlag)
Owned ranges: [[004dd9d0, 004dda3d]]

004dd9d0  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
004dd9d4  8b01  MOV EAX,dword ptr [ECX]
004dd9d6  8b5030  MOV EDX,dword ptr [EAX + 0x30]
004dd9d9  53  PUSH EBX
004dd9da  56  PUSH ESI
004dd9db  8b742410  MOV ESI,dword ptr [ESP + 0x10]
004dd9df  57  PUSH EDI
004dd9e0  8b7c2418  MOV EDI,dword ptr [ESP + 0x18]
004dd9e4  8d1cbd00000000  LEA EBX,[EDI*0x4 + 0x0]
004dd9eb  53  PUSH EBX
004dd9ec  56  PUSH ESI
004dd9ed  ffd2  CALL EDX
004dd9ef  3bc3  CMP EAX,EBX
004dd9f1  7545  JNZ 0x004dda38
004dd9f3  837c241c01  CMP dword ptr [ESP + 0x1c],0x1
004dd9f8  7438  JZ 0x004dda32
004dd9fa  85ff  TEST EDI,EDI
004dd9fc  7434  JZ 0x004dda32
004dd9fe  8bff  MOV EDI,EDI
004dda00  8b06  MOV EAX,dword ptr [ESI]
004dda02  8bc8  MOV ECX,EAX
004dda04  81e10000ff00  AND ECX,0xff0000
004dda0a  8bd0  MOV EDX,EAX
004dda0c  c1ea10  SHR EDX,0x10
004dda0f  0bca  OR ECX,EDX
004dda11  8bd0  MOV EDX,EAX
004dda13  81e200ff0000  AND EDX,0xff00
004dda19  c1e010  SHL EAX,0x10
004dda1c  0bd0  OR EDX,EAX
004dda1e  c1e908  SHR ECX,0x8
004dda21  c1e208  SHL EDX,0x8
004dda24  0bca  OR ECX,EDX
004dda26  83ef01  SUB EDI,0x1
004dda29  890e  MOV dword ptr [ESI],ECX
004dda2b  83c604  ADD ESI,0x4
004dda2e  85ff  TEST EDI,EDI
004dda30  75ce  JNZ 0x004dda00
004dda32  5f  POP EDI
004dda33  5e  POP ESI
004dda34  b001  MOV AL,0x1
004dda36  5b  POP EBX
004dda37  c3  RET
004dda38  5f  POP EDI
004dda39  5e  POP ESI
004dda3a  32c0  XOR AL,AL
004dda3c  5b  POP EBX
004dda3d  c3  RET
