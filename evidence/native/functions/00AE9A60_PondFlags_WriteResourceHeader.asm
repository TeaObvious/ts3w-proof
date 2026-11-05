# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: PondFlags_WriteResourceHeader
Paired actual annotated Ghidra pseudocode: 00AE9A60_PondFlags_WriteResourceHeader.c
Owned ranges: [[00ae9a60, 00ae9b06]]
Envelope bytes=167

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00ae9a60  83ec10  SUB ESP,0x10
00ae9a63  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
00ae9a67  8b542418  MOV EDX,dword ptr [ESP + 0x18]
00ae9a6b  56  PUSH ESI
00ae9a6c  8b742418  MOV ESI,dword ptr [ESP + 0x18]
00ae9a70  57  PUSH EDI
00ae9a71  8bf9  MOV EDI,ECX
00ae9a73  8b4c2428  MOV ECX,dword ptr [ESP + 0x28]
00ae9a77  89442408  MOV dword ptr [ESP + 0x8],EAX
00ae9a7b  6a01  PUSH 0x1
00ae9a7d  8d44240c  LEA EAX,[ESP + 0xc]
00ae9a81  894c2410  MOV dword ptr [ESP + 0x10],ECX
00ae9a85  50  PUSH EAX
00ae9a86  8bce  MOV ECX,ESI
00ae9a88  c74424184935ff05  MOV dword ptr [ESP + 0x18],0x5ff3549
00ae9a90  8954241c  MOV dword ptr [ESP + 0x1c],EDX
00ae9a94  e827eaceff  CALL 0x007d84c0
00ae9a99  84c0  TEST AL,AL
00ae9a9b  745f  JZ 0x00ae9afc
00ae9a9d  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00ae9aa0  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00ae9aa3  51  PUSH ECX
00ae9aa4  6a01  PUSH 0x1
00ae9aa6  52  PUSH EDX
00ae9aa7  e8c4449fff  CALL 0x004ddf70
00ae9aac  83c40c  ADD ESP,0xc
00ae9aaf  8bce  MOV ECX,ESI
00ae9ab1  50  PUSH EAX
00ae9ab2  e839dfceff  CALL 0x007d79f0
00ae9ab7  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00ae9aba  8b4704  MOV EAX,dword ptr [EDI + 0x4]
00ae9abd  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00ae9ac0  51  PUSH ECX
00ae9ac1  50  PUSH EAX
00ae9ac2  52  PUSH EDX
00ae9ac3  e898459fff  CALL 0x004de060
00ae9ac8  83c40c  ADD ESP,0xc
00ae9acb  8bce  MOV ECX,ESI
00ae9acd  50  PUSH EAX
00ae9ace  e81ddfceff  CALL 0x007d79f0
00ae9ad3  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00ae9ad6  8b7f08  MOV EDI,dword ptr [EDI + 0x8]
00ae9ad9  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00ae9adc  50  PUSH EAX
00ae9add  57  PUSH EDI
00ae9ade  51  PUSH ECX
00ae9adf  e87c459fff  CALL 0x004de060
00ae9ae4  83c40c  ADD ESP,0xc
00ae9ae7  8bce  MOV ECX,ESI
00ae9ae9  50  PUSH EAX
00ae9aea  e801dfceff  CALL 0x007d79f0
00ae9aef  807e1400  CMP byte ptr [ESI + 0x14],0x0
00ae9af3  7507  JNZ 0x00ae9afc
00ae9af5  8bce  MOV ECX,ESI
00ae9af7  e874dfceff  CALL 0x007d7a70
00ae9afc  8a4614  MOV AL,byte ptr [ESI + 0x14]
00ae9aff  5f  POP EDI
00ae9b00  5e  POP ESI
00ae9b01  83c410  ADD ESP,0x10
00ae9b04  c21000  RET 0x10
Owned instructions=60 owned bytes=167 gap/nonowned bytes=0
