# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void LotTerrain_NormalizePaintAtSample(void * this, uint x, uint z, uint nonCliffSum)
Owned ranges: [[00aef830, 00aef8ac] [00aef8b0, 00aef90b]]

00aef830  51  PUSH ECX
00aef831  53  PUSH EBX
00aef832  8b5c2410  MOV EBX,dword ptr [ESP + 0x10]
00aef836  55  PUSH EBP
00aef837  8b6c2410  MOV EBP,dword ptr [ESP + 0x10]
00aef83b  56  PUSH ESI
00aef83c  8bf1  MOV ESI,ECX
00aef83e  8b4618  MOV EAX,dword ptr [ESI + 0x18]
00aef841  83f8ff  CMP EAX,-0x1
00aef844  7421  JZ 0x00aef867
00aef846  53  PUSH EBX
00aef847  55  PUSH EBP
00aef848  50  PUSH EAX
00aef849  e8b2aaffff  CALL 0x00aea300
00aef84e  0fb6c8  MOVZX ECX,AL
00aef851  81f9ff000000  CMP ECX,0xff
00aef857  894c2414  MOV dword ptr [ESP + 0x14],ECX
00aef85b  7216  JC 0x00aef873
00aef85d  c744241800000000  MOV dword ptr [ESP + 0x18],0x0
00aef865  eb17  JMP 0x00aef87e
00aef867  c744241400000000  MOV dword ptr [ESP + 0x14],0x0
00aef86f  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00aef873  b8ff000000  MOV EAX,0xff
00aef878  2bc1  SUB EAX,ECX
00aef87a  89442418  MOV dword ptr [ESP + 0x18],EAX
00aef87e  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
00aef882  3b442418  CMP EAX,dword ptr [ESP + 0x18]
00aef886  7668  JBE 0x00aef8f0
00aef888  8b4e34  MOV ECX,dword ptr [ESI + 0x34]
00aef88b  2b4e30  SUB ECX,dword ptr [ESI + 0x30]
00aef88e  b8abaaaa2a  MOV EAX,0x2aaaaaab
00aef893  f7e9  IMUL ECX
00aef895  c1fa02  SAR EDX,0x2
00aef898  8bc2  MOV EAX,EDX
00aef89a  c1e81f  SHR EAX,0x1f
00aef89d  03c2  ADD EAX,EDX
00aef89f  57  PUSH EDI
00aef8a0  89442410  MOV dword ptr [ESP + 0x10],EAX
00aef8a4  bf00000000  MOV EDI,0x0
00aef8a9  743c  JZ 0x00aef8e7
00aef8ab  eb03  JMP 0x00aef8b0
00aef8ad  8d4900  .byte 8d4900 ; NONOWNED envelope gap bytes
00aef8b0  3b7e18  CMP EDI,dword ptr [ESI + 0x18]
00aef8b3  742b  JZ 0x00aef8e0
00aef8b5  53  PUSH EBX
00aef8b6  55  PUSH EBP
00aef8b7  57  PUSH EDI
00aef8b8  8bce  MOV ECX,ESI
00aef8ba  e841aaffff  CALL 0x00aea300
00aef8bf  0fb6c0  MOVZX EAX,AL
00aef8c2  85c0  TEST EAX,EAX
00aef8c4  7416  JZ 0x00aef8dc
00aef8c6  0faf44241c  IMUL EAX,dword ptr [ESP + 0x1c]
00aef8cb  33d2  XOR EDX,EDX
00aef8cd  f7742420  DIV dword ptr [ESP + 0x20]
00aef8d1  8bce  MOV ECX,ESI
00aef8d3  50  PUSH EAX
00aef8d4  53  PUSH EBX
00aef8d5  55  PUSH EBP
00aef8d6  57  PUSH EDI
00aef8d7  e834f2ffff  CALL 0x00aeeb10
00aef8dc  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00aef8e0  83c701  ADD EDI,0x1
00aef8e3  3bf8  CMP EDI,EAX
00aef8e5  72c9  JC 0x00aef8b0
00aef8e7  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
00aef8eb  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
00aef8ef  5f  POP EDI
00aef8f0  53  PUSH EBX
00aef8f1  03c1  ADD EAX,ECX
00aef8f3  55  PUSH EBP
00aef8f4  8d542424  LEA EDX,[ESP + 0x24]
00aef8f8  52  PUSH EDX
00aef8f9  8d4e70  LEA ECX,[ESI + 0x70]
00aef8fc  88442428  MOV byte ptr [ESP + 0x28],AL
00aef900  e80beaffff  CALL 0x00aee310
00aef905  5e  POP ESI
00aef906  5d  POP EBP
00aef907  5b  POP EBX
00aef908  59  POP ECX
00aef909  c20c00  RET 0xc
