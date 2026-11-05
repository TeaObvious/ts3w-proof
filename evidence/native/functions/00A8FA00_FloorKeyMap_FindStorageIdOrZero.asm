# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: uint FloorKeyMap_FindStorageIdOrZero(void * this, pointer fourKeys)
Owned ranges: [[00a8fa00, 00a8fa4a]]

00a8fa00  83ec08  SUB ESP,0x8
00a8fa03  56  PUSH ESI
00a8fa04  8bf1  MOV ESI,ECX
00a8fa06  57  PUSH EDI
00a8fa07  8b7c2414  MOV EDI,dword ptr [ESP + 0x14]
00a8fa0b  8d4640  LEA EAX,[ESI + 0x40]
00a8fa0e  50  PUSH EAX
00a8fa0f  8bcf  MOV ECX,EDI
00a8fa11  e89a98cfff  CALL 0x007892b0
00a8fa16  84c0  TEST AL,AL
00a8fa18  7527  JNZ 0x00a8fa41
00a8fa1a  57  PUSH EDI
00a8fa1b  8d4c240c  LEA ECX,[ESP + 0xc]
00a8fa1f  51  PUSH ECX
00a8fa20  8bce  MOV ECX,ESI
00a8fa22  e8f9f8ffff  CALL 0x00a8f320
00a8fa27  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00a8fa2a  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
00a8fa2d  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00a8fa31  3b0491  CMP EAX,dword ptr [ECX + EDX*0x4]
00a8fa34  740b  JZ 0x00a8fa41
00a8fa36  8b4040  MOV EAX,dword ptr [EAX + 0x40]
00a8fa39  5f  POP EDI
00a8fa3a  5e  POP ESI
00a8fa3b  83c408  ADD ESP,0x8
00a8fa3e  c20400  RET 0x4
00a8fa41  5f  POP EDI
00a8fa42  33c0  XOR EAX,EAX
00a8fa44  5e  POP ESI
00a8fa45  83c408  ADD ESP,0x8
00a8fa48  c20400  RET 0x4
