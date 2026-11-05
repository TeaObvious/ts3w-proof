# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Analyst name: WorldObjects_FindGuidInSubtree
Paired actual annotated Ghidra pseudocode: 00C5F4C0_WorldObjects_FindGuidInSubtree.c
Owned ranges: [[00c5f4c0, 00c5f554]]
Envelope bytes=149

GHIDRA LISTING (original bytes; nonowned gaps explicit)
00c5f4c0  53  PUSH EBX
00c5f4c1  55  PUSH EBP
00c5f4c2  56  PUSH ESI
00c5f4c3  8b742410  MOV ESI,dword ptr [ESP + 0x10]
00c5f4c7  85f6  TEST ESI,ESI
00c5f4c9  0f8480000000  JZ 0x00c5f54f
00c5f4cf  8b4648  MOV EAX,dword ptr [ESI + 0x48]
00c5f4d2  8b5c2414  MOV EBX,dword ptr [ESP + 0x14]
00c5f4d6  3bc3  CMP EAX,EBX
00c5f4d8  8b6c2418  MOV EBP,dword ptr [ESP + 0x18]
00c5f4dc  7507  JNZ 0x00c5f4e5
00c5f4de  8b4e4c  MOV ECX,dword ptr [ESI + 0x4c]
00c5f4e1  3bcd  CMP ECX,EBP
00c5f4e3  746a  JZ 0x00c5f54f
00c5f4e5  57  PUSH EDI
00c5f4e6  8b7c2420  MOV EDI,dword ptr [ESP + 0x20]
00c5f4ea  85ff  TEST EDI,EDI
00c5f4ec  7403  JZ 0x00c5f4f1
00c5f4ee  830701  ADD dword ptr [EDI],0x1
00c5f4f1  8b16  MOV EDX,dword ptr [ESI]
00c5f4f3  8b4240  MOV EAX,dword ptr [EDX + 0x40]
00c5f4f6  8bce  MOV ECX,ESI
00c5f4f8  ffd0  CALL EAX
00c5f4fa  83f802  CMP EAX,0x2
00c5f4fd  7549  JNZ 0x00c5f548
00c5f4ff  8b16  MOV EDX,dword ptr [ESI]
00c5f501  8b4258  MOV EAX,dword ptr [EDX + 0x58]
00c5f504  8bce  MOV ECX,ESI
00c5f506  c744241400000000  MOV dword ptr [ESP + 0x14],0x0
00c5f50e  ffd0  CALL EAX
00c5f510  39442414  CMP dword ptr [ESP + 0x14],EAX
00c5f514  7332  JNC 0x00c5f548
00c5f516  8b16  MOV EDX,dword ptr [ESI]
00c5f518  8b524c  MOV EDX,dword ptr [EDX + 0x4c]
00c5f51b  57  PUSH EDI
00c5f51c  55  PUSH EBP
00c5f51d  53  PUSH EBX
00c5f51e  8d442420  LEA EAX,[ESP + 0x20]
00c5f522  50  PUSH EAX
00c5f523  8bce  MOV ECX,ESI
00c5f525  ffd2  CALL EDX
00c5f527  50  PUSH EAX
00c5f528  e893ffffff  CALL 0x00c5f4c0
00c5f52d  83c410  ADD ESP,0x10
00c5f530  85c0  TEST EAX,EAX
00c5f532  7516  JNZ 0x00c5f54a
00c5f534  8b06  MOV EAX,dword ptr [ESI]
00c5f536  8b5058  MOV EDX,dword ptr [EAX + 0x58]
00c5f539  8344241401  ADD dword ptr [ESP + 0x14],0x1
00c5f53e  8bce  MOV ECX,ESI
00c5f540  ffd2  CALL EDX
00c5f542  39442414  CMP dword ptr [ESP + 0x14],EAX
00c5f546  72ce  JC 0x00c5f516
00c5f548  33c0  XOR EAX,EAX
00c5f54a  5f  POP EDI
00c5f54b  5e  POP ESI
00c5f54c  5d  POP EBP
00c5f54d  5b  POP EBX
00c5f54e  c3  RET
00c5f54f  8bc6  MOV EAX,ESI
00c5f551  5e  POP ESI
00c5f552  5d  POP EBP
00c5f553  5b  POP EBX
00c5f554  c3  RET
Owned instructions=64 owned bytes=149 nonowned bytes=0
