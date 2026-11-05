# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool Stream_ReadUInt64ArrayByByteOrder(pointer stream, pointer output, uint count, uint byteOrder)
Owned ranges: [[004dda50, 004ddaa9]]

004dda50  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
004dda54  8b01  MOV EAX,dword ptr [ECX]
004dda56  8b5030  MOV EDX,dword ptr [EAX + 0x30]
004dda59  53  PUSH EBX
004dda5a  56  PUSH ESI
004dda5b  8b742410  MOV ESI,dword ptr [ESP + 0x10]
004dda5f  57  PUSH EDI
004dda60  8b7c2418  MOV EDI,dword ptr [ESP + 0x18]
004dda64  8d1cfd00000000  LEA EBX,[EDI*0x8 + 0x0]
004dda6b  53  PUSH EBX
004dda6c  56  PUSH ESI
004dda6d  ffd2  CALL EDX
004dda6f  3bc3  CMP EAX,EBX
004dda71  7531  JNZ 0x004ddaa4
004dda73  837c241c01  CMP dword ptr [ESP + 0x1c],0x1
004dda78  7424  JZ 0x004dda9e
004dda7a  85ff  TEST EDI,EDI
004dda7c  7420  JZ 0x004dda9e
004dda7e  8bff  MOV EDI,EDI
004dda80  8b4604  MOV EAX,dword ptr [ESI + 0x4]
004dda83  8b0e  MOV ECX,dword ptr [ESI]
004dda85  50  PUSH EAX
004dda86  51  PUSH ECX
004dda87  83ef01  SUB EDI,0x1
004dda8a  e881fcffff  CALL 0x004dd710
004dda8f  8906  MOV dword ptr [ESI],EAX
004dda91  895604  MOV dword ptr [ESI + 0x4],EDX
004dda94  83c408  ADD ESP,0x8
004dda97  83c608  ADD ESI,0x8
004dda9a  85ff  TEST EDI,EDI
004dda9c  75e2  JNZ 0x004dda80
004dda9e  5f  POP EDI
004dda9f  5e  POP ESI
004ddaa0  b001  MOV AL,0x1
004ddaa2  5b  POP EBX
004ddaa3  c3  RET
004ddaa4  5f  POP EDI
004ddaa5  5e  POP ESI
004ddaa6  32c0  XOR AL,AL
004ddaa8  5b  POP EBX
004ddaa9  c3  RET
