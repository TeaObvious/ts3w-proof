# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool RenderObject_ApplyRugSortNotification(void * this, uint objectGuidLo, uint objectGuidHi, uint sortIndex)
Owned ranges: [[006ffb10, 006ffb7e]]

006ffb10  83ec08  SUB ESP,0x8
006ffb13  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
006ffb17  56  PUSH ESI
006ffb18  8bf1  MOV ESI,ECX
006ffb1a  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
006ffb1e  8d542404  LEA EDX,[ESP + 0x4]
006ffb22  89442404  MOV dword ptr [ESP + 0x4],EAX
006ffb26  52  PUSH EDX
006ffb27  8d442414  LEA EAX,[ESP + 0x14]
006ffb2b  894c240c  MOV dword ptr [ESP + 0xc],ECX
006ffb2f  50  PUSH EAX
006ffb30  8d4e04  LEA ECX,[ESI + 0x4]
006ffb33  e828e2ffff  CALL 0x006fdd60
006ffb38  8b442410  MOV EAX,dword ptr [ESP + 0x10]
006ffb3c  3b8628100000  CMP EAX,dword ptr [ESI + 0x1028]
006ffb42  5e  POP ESI
006ffb43  7432  JZ 0x006ffb77
006ffb45  85c0  TEST EAX,EAX
006ffb47  742e  JZ 0x006ffb77
006ffb49  8d48f8  LEA ECX,[EAX + -0x8]
006ffb4c  85c9  TEST ECX,ECX
006ffb4e  7427  JZ 0x006ffb77
006ffb50  8b11  MOV EDX,dword ptr [ECX]
006ffb52  8b420c  MOV EAX,dword ptr [EDX + 0xc]
006ffb55  68881d7f01  PUSH 0x17f1d88
006ffb5a  ffd0  CALL EAX
006ffb5c  85c0  TEST EAX,EAX
006ffb5e  740f  JZ 0x006ffb6f
006ffb60  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
006ffb64  83c101  ADD ECX,0x1
006ffb67  51  PUSH ECX
006ffb68  8bc8  MOV ECX,EAX
006ffb6a  e8615cffff  CALL 0x006f57d0
006ffb6f  b001  MOV AL,0x1
006ffb71  83c408  ADD ESP,0x8
006ffb74  c20c00  RET 0xc
006ffb77  32c0  XOR AL,AL
006ffb79  83c408  ADD ESP,0x8
006ffb7c  c20c00  RET 0xc
