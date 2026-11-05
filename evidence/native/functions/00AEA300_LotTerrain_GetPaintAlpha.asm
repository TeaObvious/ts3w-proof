# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: uchar LotTerrain_GetPaintAlpha(void * this, int layerIndex, uint x, uint z)
Owned ranges: [[00aea300, 00aea360]]

00aea300  8b4160  MOV EAX,dword ptr [ECX + 0x60]
00aea303  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
00aea307  8b0c88  MOV ECX,dword ptr [EAX + ECX*0x4]
00aea30a  55  PUSH EBP
00aea30b  56  PUSH ESI
00aea30c  8b742414  MOV ESI,dword ptr [ESP + 0x14]
00aea310  8bd6  MOV EDX,ESI
00aea312  c1fa02  SAR EDX,0x2
00aea315  8bc2  MOV EAX,EDX
00aea317  0faf4108  IMUL EAX,dword ptr [ECX + 0x8]
00aea31b  57  PUSH EDI
00aea31c  8b7c2414  MOV EDI,dword ptr [ESP + 0x14]
00aea320  8bd7  MOV EDX,EDI
00aea322  c1fa02  SAR EDX,0x2
00aea325  03c2  ADD EAX,EDX
00aea327  8b5130  MOV EDX,dword ptr [ECX + 0x30]
00aea32a  0fb72c42  MOVZX EBP,word ptr [EDX + EAX*0x2]
00aea32e  8bd5  MOV EDX,EBP
00aea330  c1ea0f  SHR EDX,0xf
00aea333  f6c201  TEST DL,0x1
00aea336  740d  JZ 0x00aea345
00aea338  8b4910  MOV ECX,dword ptr [ECX + 0x10]
00aea33b  5f  POP EDI
00aea33c  03c8  ADD ECX,EAX
00aea33e  8a01  MOV AL,byte ptr [ECX]
00aea340  5e  POP ESI
00aea341  5d  POP EBP
00aea342  c20c00  RET 0xc
00aea345  0fb7c5  MOVZX EAX,BP
00aea348  83e603  AND ESI,0x3
00aea34b  8d1486  LEA EDX,[ESI + EAX*0x4]
00aea34e  8b4120  MOV EAX,dword ptr [ECX + 0x20]
00aea351  8d0490  LEA EAX,[EAX + EDX*0x4]
00aea354  83e703  AND EDI,0x3
00aea357  03c7  ADD EAX,EDI
00aea359  8a00  MOV AL,byte ptr [EAX]
00aea35b  5f  POP EDI
00aea35c  5e  POP ESI
00aea35d  5d  POP EBP
00aea35e  c20c00  RET 0xc
