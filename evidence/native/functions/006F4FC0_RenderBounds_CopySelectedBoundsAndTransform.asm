# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Analyst name: RenderBounds_CopySelectedBoundsAndTransform
Paired actual annotated Ghidra pseudocode: 006F4FC0_RenderBounds_CopySelectedBoundsAndTransform.c
Full Ghidra function-body envelope: 0x006f4fc0..0x006f5049
Owned ranges: [[006f4fc0, 006f5048]]
Envelope bytes=137

GHIDRA LISTING (original bytes)
006f4fc0  55  PUSH EBP
006f4fc1  8bec  MOV EBP,ESP
006f4fc3  83e4f0  AND ESP,0xfffffff0
006f4fc6  51  PUSH ECX
006f4fc7  8b450c  MOV EAX,dword ptr [EBP + 0xc]
006f4fca  53  PUSH EBX
006f4fcb  56  PUSH ESI
006f4fcc  8bf1  MOV ESI,ECX
006f4fce  0f284650  MOVAPS XMM0,xmmword ptr [ESI + 0x50]
006f4fd2  57  PUSH EDI
006f4fd3  8b7d08  MOV EDI,dword ptr [EBP + 0x8]
006f4fd6  0f2907  MOVAPS xmmword ptr [EDI],XMM0
006f4fd9  0f284660  MOVAPS XMM0,xmmword ptr [ESI + 0x60]
006f4fdd  0f294710  MOVAPS xmmword ptr [EDI + 0x10],XMM0
006f4fe1  0f288680000000  MOVAPS XMM0,xmmword ptr [ESI + 0x80]
006f4fe8  0f2900  MOVAPS xmmword ptr [EAX],XMM0
006f4feb  0f288690000000  MOVAPS XMM0,xmmword ptr [ESI + 0x90]
006f4ff2  0f294010  MOVAPS xmmword ptr [EAX + 0x10],XMM0
006f4ff6  0f2886a0000000  MOVAPS XMM0,xmmword ptr [ESI + 0xa0]
006f4ffd  0f294020  MOVAPS xmmword ptr [EAX + 0x20],XMM0
006f5001  0f2886b0000000  MOVAPS XMM0,xmmword ptr [ESI + 0xb0]
006f5008  8d8e10020000  LEA ECX,[ESI + 0x210]
006f500e  0f294030  MOVAPS xmmword ptr [EAX + 0x30],XMM0
006f5012  e8e964feff  CALL 0x006db500
006f5017  8bd8  MOV EBX,EAX
006f5019  85db  TEST EBX,EBX
006f501b  7423  JZ 0x006f5040
006f501d  8bce  MOV ECX,ESI
006f501f  e84cacf1ff  CALL 0x0060fc70
006f5024  a900002000  TEST EAX,0x200000
006f5029  7515  JNZ 0x006f5040
006f502b  8bcb  MOV ECX,EBX
006f502d  e89ef4e0ff  CALL 0x005044d0
006f5032  0f2800  MOVAPS XMM0,xmmword ptr [EAX]
006f5035  0f2907  MOVAPS xmmword ptr [EDI],XMM0
006f5038  0f284010  MOVAPS XMM0,xmmword ptr [EAX + 0x10]
006f503c  0f294710  MOVAPS xmmword ptr [EDI + 0x10],XMM0
006f5040  5f  POP EDI
006f5041  5e  POP ESI
006f5042  5b  POP EBX
006f5043  8be5  MOV ESP,EBP
006f5045  5d  POP EBP
006f5046  c20800  RET 0x8
