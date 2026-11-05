# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void * CurvedPoolCatalog_LookupDescriptionProduct(void * this, void * sourceKey)
Owned ranges: [[00c8ede0, 00c8ee2b]]

00c8ede0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00c8ede4  83ec08  SUB ESP,0x8
00c8ede7  56  PUSH ESI
00c8ede8  57  PUSH EDI
00c8ede9  8bf9  MOV EDI,ECX
00c8edeb  50  PUSH EAX
00c8edec  8d4c240c  LEA ECX,[ESP + 0xc]
00c8edf0  8db724010000  LEA ESI,[EDI + 0x124]
00c8edf6  51  PUSH ECX
00c8edf7  8bce  MOV ECX,ESI
00c8edf9  e822edffff  CALL 0x00c8db20
00c8edfe  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00c8ee02  3b44240c  CMP EAX,dword ptr [ESP + 0xc]
00c8ee06  7404  JZ 0x00c8ee0c
00c8ee08  8bf0  MOV ESI,EAX
00c8ee0a  eb03  JMP 0x00c8ee0f
00c8ee0c  8b7604  MOV ESI,dword ptr [ESI + 0x4]
00c8ee0f  3bb728010000  CMP ESI,dword ptr [EDI + 0x128]
00c8ee15  740b  JZ 0x00c8ee22
00c8ee17  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00c8ee1a  5f  POP EDI
00c8ee1b  5e  POP ESI
00c8ee1c  83c408  ADD ESP,0x8
00c8ee1f  c20400  RET 0x4
00c8ee22  5f  POP EDI
00c8ee23  33c0  XOR EAX,EAX
00c8ee25  5e  POP ESI
00c8ee26  83c408  ADD ESP,0x8
00c8ee29  c20400  RET 0x4
