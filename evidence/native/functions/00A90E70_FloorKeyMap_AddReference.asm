# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: uint FloorKeyMap_AddReference(void * this, pointer fourKeys)
Owned ranges: [[00a90e70, 00a90eea]]

00a90e70  83ec08  SUB ESP,0x8
00a90e73  56  PUSH ESI
00a90e74  8b742410  MOV ESI,dword ptr [ESP + 0x10]
00a90e78  57  PUSH EDI
00a90e79  56  PUSH ESI
00a90e7a  8d44240c  LEA EAX,[ESP + 0xc]
00a90e7e  50  PUSH EAX
00a90e7f  8bf9  MOV EDI,ECX
00a90e81  e89ae4ffff  CALL 0x00a8f320
00a90e86  8b4f08  MOV ECX,dword ptr [EDI + 0x8]
00a90e89  8b5704  MOV EDX,dword ptr [EDI + 0x4]
00a90e8c  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00a90e90  3b048a  CMP EAX,dword ptr [EDX + ECX*0x4]
00a90e93  7547  JNZ 0x00a90edc
00a90e95  53  PUSH EBX
00a90e96  55  PUSH EBP
00a90e97  bd01000000  MOV EBP,0x1
00a90e9c  8bcf  MOV ECX,EDI
00a90e9e  896c2414  MOV dword ptr [ESP + 0x14],EBP
00a90ea2  e889dbffff  CALL 0x00a8ea30
00a90ea7  8bd8  MOV EBX,EAX
00a90ea9  56  PUSH ESI
00a90eaa  8bcf  MOV ECX,EDI
00a90eac  895c2414  MOV dword ptr [ESP + 0x14],EBX
00a90eb0  e84bfdffff  CALL 0x00a90c00
00a90eb5  8918  MOV dword ptr [EAX],EBX
00a90eb7  896804  MOV dword ptr [EAX + 0x4],EBP
00a90eba  8d442410  LEA EAX,[ESP + 0x10]
00a90ebe  50  PUSH EAX
00a90ebf  8d4f20  LEA ECX,[EDI + 0x20]
00a90ec2  e8b9f2ffff  CALL 0x00a90180
00a90ec7  5d  POP EBP
00a90ec8  8bf8  MOV EDI,EAX
00a90eca  b910000000  MOV ECX,0x10
00a90ecf  8bc3  MOV EAX,EBX
00a90ed1  5b  POP EBX
00a90ed2  f3a5  MOVSD.REP ES:EDI,ESI
00a90ed4  5f  POP EDI
00a90ed5  5e  POP ESI
00a90ed6  83c408  ADD ESP,0x8
00a90ed9  c20400  RET 0x4
00a90edc  83404401  ADD dword ptr [EAX + 0x44],0x1
00a90ee0  8b4040  MOV EAX,dword ptr [EAX + 0x40]
00a90ee3  5f  POP EDI
00a90ee4  5e  POP ESI
00a90ee5  83c408  ADD ESP,0x8
00a90ee8  c20400  RET 0x4
