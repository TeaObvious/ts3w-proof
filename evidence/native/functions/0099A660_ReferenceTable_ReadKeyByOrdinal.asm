# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: ReferenceTable_ReadKeyByOrdinal
Paired actual annotated Ghidra pseudocode: 0099A660_ReferenceTable_ReadKeyByOrdinal.c
Owned ranges: [[0099a660, 0099a6cd]]
Envelope bytes=110

GHIDRA LISTING (original bytes; nonowned alignment explicit)
0099a660  51  PUSH ECX
0099a661  53  PUSH EBX
0099a662  8b5c240c  MOV EBX,dword ptr [ESP + 0xc]
0099a666  8b4310  MOV EAX,dword ptr [EBX + 0x10]
0099a669  8b5308  MOV EDX,dword ptr [EBX + 0x8]
0099a66c  56  PUSH ESI
0099a66d  57  PUSH EDI
0099a66e  8b7c2418  MOV EDI,dword ptr [ESP + 0x18]
0099a672  8b7704  MOV ESI,dword ptr [EDI + 0x4]
0099a675  2b37  SUB ESI,dword ptr [EDI]
0099a677  50  PUSH EAX
0099a678  8d4c2410  LEA ECX,[ESP + 0x10]
0099a67c  51  PUSH ECX
0099a67d  52  PUSH EDX
0099a67e  c744241800000000  MOV dword ptr [ESP + 0x18],0x0
0099a686  c1fe04  SAR ESI,0x4
0099a689  e8f232b4ff  CALL 0x004dd980
0099a68e  83c40c  ADD ESP,0xc
0099a691  8bcb  MOV ECX,EBX
0099a693  50  PUSH EAX
0099a694  e857d3e3ff  CALL 0x007d79f0
0099a699  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
0099a69d  3bc6  CMP EAX,ESI
0099a69f  7326  JNC 0x0099a6c7
0099a6a1  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
0099a6a5  c1e004  SHL EAX,0x4
0099a6a8  0307  ADD EAX,dword ptr [EDI]
0099a6aa  5f  POP EDI
0099a6ab  8b10  MOV EDX,dword ptr [EAX]
0099a6ad  8911  MOV dword ptr [ECX],EDX
0099a6af  8b5004  MOV EDX,dword ptr [EAX + 0x4]
0099a6b2  895104  MOV dword ptr [ECX + 0x4],EDX
0099a6b5  8b5008  MOV EDX,dword ptr [EAX + 0x8]
0099a6b8  895108  MOV dword ptr [ECX + 0x8],EDX
0099a6bb  8b400c  MOV EAX,dword ptr [EAX + 0xc]
0099a6be  5e  POP ESI
0099a6bf  89410c  MOV dword ptr [ECX + 0xc],EAX
0099a6c2  b001  MOV AL,0x1
0099a6c4  5b  POP EBX
0099a6c5  59  POP ECX
0099a6c6  c3  RET
0099a6c7  5f  POP EDI
0099a6c8  5e  POP ESI
0099a6c9  32c0  XOR AL,AL
0099a6cb  5b  POP EBX
0099a6cc  59  POP ECX
0099a6cd  c3  RET
Owned instructions=47 owned bytes=110 gap/nonowned bytes=0
