# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 005404D0_UiTextEdit_ReplaceSelection.c
Owned ranges: [[005404d0, 00540511]]

005404d0  56  PUSH ESI
005404d1  8b7178  MOV ESI,dword ptr [ECX + 0x78]
005404d4  3b7174  CMP ESI,dword ptr [ECX + 0x74]
005404d7  8d4178  LEA EAX,[ECX + 0x78]
005404da  8d5174  LEA EDX,[ECX + 0x74]
005404dd  57  PUSH EDI
005404de  8bf0  MOV ESI,EAX
005404e0  7202  JC 0x005404e4
005404e2  8bf2  MOV ESI,EDX
005404e4  8b3a  MOV EDI,dword ptr [EDX]
005404e6  3b38  CMP EDI,dword ptr [EAX]
005404e8  8b36  MOV ESI,dword ptr [ESI]
005404ea  7202  JC 0x005404ee
005404ec  8bc2  MOV EAX,EDX
005404ee  8b7c2414  MOV EDI,dword ptr [ESP + 0x14]
005404f2  8b00  MOV EAX,dword ptr [EAX]
005404f4  8b11  MOV EDX,dword ptr [ECX]
005404f6  57  PUSH EDI
005404f7  8b7c2414  MOV EDI,dword ptr [ESP + 0x14]
005404fb  57  PUSH EDI
005404fc  8b7c2414  MOV EDI,dword ptr [ESP + 0x14]
00540500  57  PUSH EDI
00540501  2bc6  SUB EAX,ESI
00540503  50  PUSH EAX
00540504  8b828c000000  MOV EAX,dword ptr [EDX + 0x8c]
0054050a  56  PUSH ESI
0054050b  ffd0  CALL EAX
0054050d  5f  POP EDI
0054050e  5e  POP ESI
0054050f  c20c00  RET 0xc
