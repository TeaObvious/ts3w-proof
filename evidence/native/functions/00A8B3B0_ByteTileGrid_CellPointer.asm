# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: byte * ByteTileGrid_CellPointer(void * this, int x, int z, int relativeLevel)
Owned ranges: [[00a8b3b0, 00a8b405]]

00a8b3b0  8b5120  MOV EDX,dword ptr [ECX + 0x20]
00a8b3b3  0faf54240c  IMUL EDX,dword ptr [ESP + 0xc]
00a8b3b8  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00a8b3bc  56  PUSH ESI
00a8b3bd  8bf0  MOV ESI,EAX
00a8b3bf  c1fe02  SAR ESI,0x2
00a8b3c2  03d6  ADD EDX,ESI
00a8b3c4  0faf5124  IMUL EDX,dword ptr [ECX + 0x24]
00a8b3c8  8b74240c  MOV ESI,dword ptr [ESP + 0xc]
00a8b3cc  57  PUSH EDI
00a8b3cd  8bfe  MOV EDI,ESI
00a8b3cf  c1ff02  SAR EDI,0x2
00a8b3d2  03d7  ADD EDX,EDI
00a8b3d4  8b7948  MOV EDI,dword ptr [ECX + 0x48]
00a8b3d7  0fb73c57  MOVZX EDI,word ptr [EDI + EDX*0x2]
00a8b3db  f7c700800000  TEST EDI,0x8000
00a8b3e1  740a  JZ 0x00a8b3ed
00a8b3e3  8b4138  MOV EAX,dword ptr [ECX + 0x38]
00a8b3e6  5f  POP EDI
00a8b3e7  03c2  ADD EAX,EDX
00a8b3e9  5e  POP ESI
00a8b3ea  c20c00  RET 0xc
00a8b3ed  8b4928  MOV ECX,dword ptr [ECX + 0x28]
00a8b3f0  0fb7d7  MOVZX EDX,DI
00a8b3f3  83e003  AND EAX,0x3
00a8b3f6  8d0490  LEA EAX,[EAX + EDX*0x4]
00a8b3f9  83e603  AND ESI,0x3
00a8b3fc  8d0481  LEA EAX,[ECX + EAX*0x4]
00a8b3ff  5f  POP EDI
00a8b400  03c6  ADD EAX,ESI
00a8b402  5e  POP ESI
00a8b403  c20c00  RET 0xc
