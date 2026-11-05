# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: uint LotTerrain_SelectLeastUsedPaint(void * this)
Owned ranges: [[00ae9f20, 00ae9f76]]

00ae9f20  8b5134  MOV EDX,dword ptr [ECX + 0x34]
00ae9f23  2b5130  SUB EDX,dword ptr [ECX + 0x30]
00ae9f26  b8abaaaa2a  MOV EAX,0x2aaaaaab
00ae9f2b  f7ea  IMUL EDX
00ae9f2d  53  PUSH EBX
00ae9f2e  56  PUSH ESI
00ae9f2f  c1fa02  SAR EDX,0x2
00ae9f32  8bf2  MOV ESI,EDX
00ae9f34  c1ee1f  SHR ESI,0x1f
00ae9f37  83cbff  OR EBX,0xffffffff
00ae9f3a  03f2  ADD ESI,EDX
00ae9f3c  57  PUSH EDI
00ae9f3d  bfffffff7f  MOV EDI,0x7fffffff
00ae9f42  b800000000  MOV EAX,0x0
00ae9f47  7428  JZ 0x00ae9f71
00ae9f49  55  PUSH EBP
00ae9f4a  8b6918  MOV EBP,dword ptr [ECX + 0x18]
00ae9f4d  8b4930  MOV ECX,dword ptr [ECX + 0x30]
00ae9f50  83c110  ADD ECX,0x10
00ae9f53  3bc5  CMP EAX,EBP
00ae9f55  7505  JNZ 0x00ae9f5c
00ae9f57  833900  CMP dword ptr [ECX],0x0
00ae9f5a  7f0a  JG 0x00ae9f66
00ae9f5c  8b11  MOV EDX,dword ptr [ECX]
00ae9f5e  3bd7  CMP EDX,EDI
00ae9f60  7d04  JGE 0x00ae9f66
00ae9f62  8bd8  MOV EBX,EAX
00ae9f64  8bfa  MOV EDI,EDX
00ae9f66  83c001  ADD EAX,0x1
00ae9f69  83c118  ADD ECX,0x18
00ae9f6c  3bc6  CMP EAX,ESI
00ae9f6e  72e3  JC 0x00ae9f53
00ae9f70  5d  POP EBP
00ae9f71  5f  POP EDI
00ae9f72  5e  POP ESI
00ae9f73  8bc3  MOV EAX,EBX
00ae9f75  5b  POP EBX
00ae9f76  c3  RET
