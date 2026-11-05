# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: KeyNameMap_FindTextByKey
Paired actual annotated Ghidra pseudocode: 0072F230_KeyNameMap_FindTextByKey.c
Owned ranges: [[0072f230, 0072f268]]
Envelope bytes=57

GHIDRA LISTING (original bytes; nonowned alignment explicit)
0072f230  8b442404  MOV EAX,dword ptr [ESP + 0x4]
0072f234  83ec08  SUB ESP,0x8
0072f237  56  PUSH ESI
0072f238  8d7128  LEA ESI,[ECX + 0x28]
0072f23b  50  PUSH EAX
0072f23c  8d4c2408  LEA ECX,[ESP + 0x8]
0072f240  51  PUSH ECX
0072f241  8bce  MOV ECX,ESI
0072f243  e838f4feff  CALL 0x0071e680
0072f248  8b5608  MOV EDX,dword ptr [ESI + 0x8]
0072f24b  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
0072f24e  8b442404  MOV EAX,dword ptr [ESP + 0x4]
0072f252  3b0491  CMP EAX,dword ptr [ECX + EDX*0x4]
0072f255  5e  POP ESI
0072f256  7508  JNZ 0x0072f260
0072f258  33c0  XOR EAX,EAX
0072f25a  83c408  ADD ESP,0x8
0072f25d  c20400  RET 0x4
0072f260  8b4008  MOV EAX,dword ptr [EAX + 0x8]
0072f263  83c408  ADD ESP,0x8
0072f266  c20400  RET 0x4
Owned instructions=21 owned bytes=57 gap/nonowned bytes=0
