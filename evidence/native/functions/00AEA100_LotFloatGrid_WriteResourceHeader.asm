# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: LotFloatGrid_WriteResourceHeader
Paired actual annotated Ghidra pseudocode: 00AEA100_LotFloatGrid_WriteResourceHeader.c
Owned ranges: [[00aea100, 00aea1a6]]
Envelope bytes=167

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00aea100  83ec10  SUB ESP,0x10
00aea103  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
00aea107  8b542418  MOV EDX,dword ptr [ESP + 0x18]
00aea10b  56  PUSH ESI
00aea10c  8b742418  MOV ESI,dword ptr [ESP + 0x18]
00aea110  57  PUSH EDI
00aea111  8bf9  MOV EDI,ECX
00aea113  8b4c2428  MOV ECX,dword ptr [ESP + 0x28]
00aea117  89442408  MOV dword ptr [ESP + 0x8],EAX
00aea11b  6a01  PUSH 0x1
00aea11d  8d44240c  LEA EAX,[ESP + 0xc]
00aea121  894c2410  MOV dword ptr [ESP + 0x10],ECX
00aea125  50  PUSH EAX
00aea126  8bce  MOV ECX,ESI
00aea128  c7442418a46bff05  MOV dword ptr [ESP + 0x18],0x5ff6ba4
00aea130  8954241c  MOV dword ptr [ESP + 0x1c],EDX
00aea134  e887e3ceff  CALL 0x007d84c0
00aea139  84c0  TEST AL,AL
00aea13b  745f  JZ 0x00aea19c
00aea13d  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00aea140  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00aea143  51  PUSH ECX
00aea144  6a01  PUSH 0x1
00aea146  52  PUSH EDX
00aea147  e8243e9fff  CALL 0x004ddf70
00aea14c  83c40c  ADD ESP,0xc
00aea14f  8bce  MOV ECX,ESI
00aea151  50  PUSH EAX
00aea152  e899d8ceff  CALL 0x007d79f0
00aea157  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00aea15a  8b4704  MOV EAX,dword ptr [EDI + 0x4]
00aea15d  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00aea160  51  PUSH ECX
00aea161  50  PUSH EAX
00aea162  52  PUSH EDX
00aea163  e8f83e9fff  CALL 0x004de060
00aea168  83c40c  ADD ESP,0xc
00aea16b  8bce  MOV ECX,ESI
00aea16d  50  PUSH EAX
00aea16e  e87dd8ceff  CALL 0x007d79f0
00aea173  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00aea176  8b7f08  MOV EDI,dword ptr [EDI + 0x8]
00aea179  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00aea17c  50  PUSH EAX
00aea17d  57  PUSH EDI
00aea17e  51  PUSH ECX
00aea17f  e8dc3e9fff  CALL 0x004de060
00aea184  83c40c  ADD ESP,0xc
00aea187  8bce  MOV ECX,ESI
00aea189  50  PUSH EAX
00aea18a  e861d8ceff  CALL 0x007d79f0
00aea18f  807e1400  CMP byte ptr [ESI + 0x14],0x0
00aea193  7507  JNZ 0x00aea19c
00aea195  8bce  MOV ECX,ESI
00aea197  e8d4d8ceff  CALL 0x007d7a70
00aea19c  8a4614  MOV AL,byte ptr [ESI + 0x14]
00aea19f  5f  POP EDI
00aea1a0  5e  POP ESI
00aea1a1  83c410  ADD ESP,0x10
00aea1a4  c21000  RET 0x10
Owned instructions=60 owned bytes=167 gap/nonowned bytes=0
