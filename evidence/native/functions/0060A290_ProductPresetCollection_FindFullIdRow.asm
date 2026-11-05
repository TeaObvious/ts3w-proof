# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope.
Actual Ghidra function: ProductPresetCollection_FindFullIdRow
Paired actual annotated Ghidra pseudocode: 0060A290_ProductPresetCollection_FindFullIdRow.c
Owned ranges: [[0060a290, 0060a2e5]]
Envelope bytes=86

GHIDRA LISTING (original bytes; nonowned gaps/data explicit)
0060a290  8b442404  MOV EAX,dword ptr [ESP + 0x4]
0060a294  83f808  CMP EAX,0x8
0060a297  7c06  JL 0x0060a29f
0060a299  83c8ff  OR EAX,0xffffffff
0060a29c  c20800  RET 0x8
0060a29f  c1e004  SHL EAX,0x4
0060a2a2  8b540828  MOV EDX,dword ptr [EAX + ECX*0x1 + 0x28]
0060a2a6  8d4c0828  LEA ECX,[EAX + ECX*0x1 + 0x28]
0060a2aa  8b4904  MOV ECX,dword ptr [ECX + 0x4]
0060a2ad  8bc2  MOV EAX,EDX
0060a2af  3bc1  CMP EAX,ECX
0060a2b1  56  PUSH ESI
0060a2b2  7410  JZ 0x0060a2c4
0060a2b4  8b74240c  MOV ESI,dword ptr [ESP + 0xc]
0060a2b8  397010  CMP dword ptr [EAX + 0x10],ESI
0060a2bb  740e  JZ 0x0060a2cb
0060a2bd  83c01c  ADD EAX,0x1c
0060a2c0  3bc1  CMP EAX,ECX
0060a2c2  75f4  JNZ 0x0060a2b8
0060a2c4  83c8ff  OR EAX,0xffffffff
0060a2c7  5e  POP ESI
0060a2c8  c20800  RET 0x8
0060a2cb  2bc2  SUB EAX,EDX
0060a2cd  8bc8  MOV ECX,EAX
0060a2cf  b893244992  MOV EAX,0x92492493
0060a2d4  f7e9  IMUL ECX
0060a2d6  03d1  ADD EDX,ECX
0060a2d8  c1fa04  SAR EDX,0x4
0060a2db  8bc2  MOV EAX,EDX
0060a2dd  c1e81f  SHR EAX,0x1f
0060a2e0  03c2  ADD EAX,EDX
0060a2e2  5e  POP ESI
0060a2e3  c20800  RET 0x8
Owned instructions=33 owned bytes=86 nonowned bytes=0
