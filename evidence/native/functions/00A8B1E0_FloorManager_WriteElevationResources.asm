# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: uchar FloorManager_WriteElevationResources(void * this, pointer context, uint instanceLow, uint instanceHigh, uint metadataGroup)
Owned ranges: [[00a8b1e0, 00a8b2ba]]

00a8b1e0  83ec10  SUB ESP,0x10
00a8b1e3  8b442420  MOV EAX,dword ptr [ESP + 0x20]
00a8b1e7  53  PUSH EBX
00a8b1e8  8b5c241c  MOV EBX,dword ptr [ESP + 0x1c]
00a8b1ec  55  PUSH EBP
00a8b1ed  8b6c2424  MOV EBP,dword ptr [ESP + 0x24]
00a8b1f1  56  PUSH ESI
00a8b1f2  8b742420  MOV ESI,dword ptr [ESP + 0x20]
00a8b1f6  57  PUSH EDI
00a8b1f7  8bf9  MOV EDI,ECX
00a8b1f9  6a01  PUSH 0x1
00a8b1fb  8d4c2414  LEA ECX,[ESP + 0x14]
00a8b1ff  51  PUSH ECX
00a8b200  8bce  MOV ECX,ESI
00a8b202  895c2418  MOV dword ptr [ESP + 0x18],EBX
00a8b206  896c241c  MOV dword ptr [ESP + 0x1c],EBP
00a8b20a  c7442420f7fae405  MOV dword ptr [ESP + 0x20],0x5e4faf7
00a8b212  89442424  MOV dword ptr [ESP + 0x24],EAX
00a8b216  e8a5d2d4ff  CALL 0x007d84c0
00a8b21b  84c0  TEST AL,AL
00a8b21d  7444  JZ 0x00a8b263
00a8b21f  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00a8b222  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00a8b225  52  PUSH EDX
00a8b226  6a0d  PUSH 0xd
00a8b228  50  PUSH EAX
00a8b229  e8422da5ff  CALL 0x004ddf70
00a8b22e  83c40c  ADD ESP,0xc
00a8b231  8bce  MOV ECX,ESI
00a8b233  50  PUSH EAX
00a8b234  e8b7c7d4ff  CALL 0x007d79f0
00a8b239  8a8f14010000  MOV CL,byte ptr [EDI + 0x114]
00a8b23f  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00a8b242  884c2430  MOV byte ptr [ESP + 0x30],CL
00a8b246  8b542430  MOV EDX,dword ptr [ESP + 0x30]
00a8b24a  52  PUSH EDX
00a8b24b  50  PUSH EAX
00a8b24c  e8af2ba5ff  CALL 0x004dde00
00a8b251  83c408  ADD ESP,0x8
00a8b254  8bce  MOV ECX,ESI
00a8b256  50  PUSH EAX
00a8b257  e894c7d4ff  CALL 0x007d79f0
00a8b25c  8bce  MOV ECX,ESI
00a8b25e  e80dc8d4ff  CALL 0x007d7a70
00a8b263  807e1400  CMP byte ptr [ESI + 0x14],0x0
00a8b267  7445  JZ 0x00a8b2ae
00a8b269  8b4f24  MOV ECX,dword ptr [EDI + 0x24]
00a8b26c  55  PUSH EBP
00a8b26d  53  PUSH EBX
00a8b26e  68d4d69300  PUSH 0x93d6d4
00a8b273  56  PUSH ESI
00a8b274  e807261e00  CALL 0x00c6d880
00a8b279  807e1400  CMP byte ptr [ESI + 0x14],0x0
00a8b27d  7428  JZ 0x00a8b2a7
00a8b27f  8b4f24  MOV ECX,dword ptr [EDI + 0x24]
00a8b282  8b5110  MOV EDX,dword ptr [ECX + 0x10]
00a8b285  8b4114  MOV EAX,dword ptr [ECX + 0x14]
00a8b288  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00a8b28b  2bc2  SUB EAX,EDX
00a8b28d  51  PUSH ECX
00a8b28e  c1f802  SAR EAX,0x2
00a8b291  50  PUSH EAX
00a8b292  52  PUSH EDX
00a8b293  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00a8b296  52  PUSH EDX
00a8b297  e8142ea5ff  CALL 0x004de0b0
00a8b29c  83c410  ADD ESP,0x10
00a8b29f  8bce  MOV ECX,ESI
00a8b2a1  50  PUSH EAX
00a8b2a2  e849c7d4ff  CALL 0x007d79f0
00a8b2a7  8bce  MOV ECX,ESI
00a8b2a9  e8c2c7d4ff  CALL 0x007d7a70
00a8b2ae  8a4614  MOV AL,byte ptr [ESI + 0x14]
00a8b2b1  5f  POP EDI
00a8b2b2  5e  POP ESI
00a8b2b3  5d  POP EBP
00a8b2b4  5b  POP EBX
00a8b2b5  83c410  ADD ESP,0x10
00a8b2b8  c21000  RET 0x10
