# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: ThumbnailCamera_FindByHash
Paired actual annotated Ghidra pseudocode: 00D4EF30_ThumbnailCamera_FindByHash.c
Owned ranges: [[00d4ef30, 00d4ef9a]]
Envelope bytes=107

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00d4ef30  83ec08  SUB ESP,0x8
00d4ef33  56  PUSH ESI
00d4ef34  8bf1  MOV ESI,ECX
00d4ef36  57  PUSH EDI
00d4ef37  8dbe98000000  LEA EDI,[ESI + 0x98]
00d4ef3d  6870930801  PUSH 0x1089370
00d4ef42  8bcf  MOV ECX,EDI
00d4ef44  e8b72c79ff  CALL 0x004e1c00
00d4ef49  8d442414  LEA EAX,[ESP + 0x14]
00d4ef4d  50  PUSH EAX
00d4ef4e  8d4c240c  LEA ECX,[ESP + 0xc]
00d4ef52  83c618  ADD ESI,0x18
00d4ef55  51  PUSH ECX
00d4ef56  8bce  MOV ECX,ESI
00d4ef58  e8f37095ff  CALL 0x006a6050
00d4ef5d  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00d4ef60  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
00d4ef63  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00d4ef67  3b0491  CMP EAX,dword ptr [ECX + EDX*0x4]
00d4ef6a  741e  JZ 0x00d4ef8a
00d4ef6c  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
00d4ef70  83c010  ADD EAX,0x10
00d4ef73  50  PUSH EAX
00d4ef74  e897c5ffff  CALL 0x00d4b510
00d4ef79  8bcf  MOV ECX,EDI
00d4ef7b  e8402d79ff  CALL 0x004e1cc0
00d4ef80  5f  POP EDI
00d4ef81  b001  MOV AL,0x1
00d4ef83  5e  POP ESI
00d4ef84  83c408  ADD ESP,0x8
00d4ef87  c20800  RET 0x8
00d4ef8a  8bcf  MOV ECX,EDI
00d4ef8c  e82f2d79ff  CALL 0x004e1cc0
00d4ef91  5f  POP EDI
00d4ef92  32c0  XOR AL,AL
00d4ef94  5e  POP ESI
00d4ef95  83c408  ADD ESP,0x8
00d4ef98  c20800  RET 0x8
Owned instructions=38 owned bytes=107 gap/nonowned bytes=0
