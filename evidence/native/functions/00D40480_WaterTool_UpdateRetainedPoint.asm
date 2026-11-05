# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void WaterTool_UpdateRetainedPoint(void * this, LotPaintPoint * point)
Owned ranges: [[00d40480, 00d404de]]

00d40480  d9ee  FLDZ
00d40482  53  PUSH EBX
00d40483  8b5c2408  MOV EBX,dword ptr [ESP + 0x8]
00d40487  56  PUSH ESI
00d40488  57  PUSH EDI
00d40489  51  PUSH ECX
00d4048a  8bf1  MOV ESI,ECX
00d4048c  d91c24  FSTP float ptr [ESP]
00d4048f  8b4e34  MOV ECX,dword ptr [ESI + 0x34]
00d40492  8b4628  MOV EAX,dword ptr [ESI + 0x28]
00d40495  8b5074  MOV EDX,dword ptr [EAX + 0x74]
00d40498  8d7e28  LEA EDI,[ESI + 0x28]
00d4049b  53  PUSH EBX
00d4049c  51  PUSH ECX
00d4049d  8bcf  MOV ECX,EDI
00d4049f  ffd2  CALL EDX
00d404a1  80be8600000000  CMP byte ptr [ESI + 0x86],0x0
00d404a8  742f  JZ 0x00d404d9
00d404aa  53  PUSH EBX
00d404ab  8bce  MOV ECX,ESI
00d404ad  e83efcffff  CALL 0x00d400f0
00d404b2  8b8e94010000  MOV ECX,dword ptr [ESI + 0x194]
00d404b8  85c9  TEST ECX,ECX
00d404ba  741d  JZ 0x00d404d9
00d404bc  8b01  MOV EAX,dword ptr [ECX]
00d404be  8b5034  MOV EDX,dword ptr [EAX + 0x34]
00d404c1  ffd2  CALL EDX
00d404c3  d9ee  FLDZ
00d404c5  6a00  PUSH 0x0
00d404c7  6a01  PUSH 0x1
00d404c9  51  PUSH ECX
00d404ca  d91c24  FSTP float ptr [ESP]
00d404cd  53  PUSH EBX
00d404ce  51  PUSH ECX
00d404cf  8bcf  MOV ECX,EDI
00d404d1  d91c24  FSTP float ptr [ESP]
00d404d4  e89731f9ff  CALL 0x00cd3670
00d404d9  5f  POP EDI
00d404da  5e  POP ESI
00d404db  5b  POP EBX
00d404dc  c20400  RET 0x4
