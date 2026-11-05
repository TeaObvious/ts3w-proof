# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: int RugManager_GetOrCreateOwnerSlot(void * this, uint * param_1)
Owned ranges: [[00c09090, 00c09122]]

00c09090  83ec1c  SUB ESP,0x1c
00c09093  56  PUSH ESI
00c09094  57  PUSH EDI
00c09095  8b7c2428  MOV EDI,dword ptr [ESP + 0x28]
00c09099  57  PUSH EDI
00c0909a  8d44240c  LEA EAX,[ESP + 0xc]
00c0909e  50  PUSH EAX
00c0909f  8bf1  MOV ESI,ECX
00c090a1  e89aa5d1ff  CALL 0x00923640
00c090a6  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00c090a9  8b5604  MOV EDX,dword ptr [ESI + 0x4]
00c090ac  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00c090b0  3b048a  CMP EAX,dword ptr [EDX + ECX*0x4]
00c090b3  740b  JZ 0x00c090c0
00c090b5  5f  POP EDI
00c090b6  83c008  ADD EAX,0x8
00c090b9  5e  POP ESI
00c090ba  83c41c  ADD ESP,0x1c
00c090bd  c20400  RET 0x4
00c090c0  8b07  MOV EAX,dword ptr [EDI]
00c090c2  8b4f04  MOV ECX,dword ptr [EDI + 0x4]
00c090c5  c644242800  MOV byte ptr [ESP + 0x28],0x0
00c090ca  8b542428  MOV EDX,dword ptr [ESP + 0x28]
00c090ce  89442414  MOV dword ptr [ESP + 0x14],EAX
00c090d2  52  PUSH EDX
00c090d3  894c241c  MOV dword ptr [ESP + 0x1c],ECX
00c090d7  8d442418  LEA EAX,[ESP + 0x18]
00c090db  50  PUSH EAX
00c090dc  8d4c2410  LEA ECX,[ESP + 0x10]
00c090e0  51  PUSH ECX
00c090e1  8bce  MOV ECX,ESI
00c090e3  c744242800000000  MOV dword ptr [ESP + 0x28],0x0
00c090eb  e830fbffff  CALL 0x00c08c20
00c090f0  8b742408  MOV ESI,dword ptr [ESP + 0x8]
00c090f4  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
00c090f8  83c608  ADD ESI,0x8
00c090fb  85c9  TEST ECX,ECX
00c090fd  741a  JZ 0x00c09119
00c090ff  8b4104  MOV EAX,dword ptr [ECX + 0x4]
00c09102  83c0ff  ADD EAX,-0x1
00c09105  894104  MOV dword ptr [ECX + 0x4],EAX
00c09108  750f  JNZ 0x00c09119
00c0910a  c7410401000000  MOV dword ptr [ECX + 0x4],0x1
00c09111  8b11  MOV EDX,dword ptr [ECX]
00c09113  8b02  MOV EAX,dword ptr [EDX]
00c09115  6a01  PUSH 0x1
00c09117  ffd0  CALL EAX
00c09119  5f  POP EDI
00c0911a  8bc6  MOV EAX,ESI
00c0911c  5e  POP ESI
00c0911d  83c41c  ADD ESP,0x1c
00c09120  c20400  RET 0x4
