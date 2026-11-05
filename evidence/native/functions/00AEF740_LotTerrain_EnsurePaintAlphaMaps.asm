# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined LotTerrain_EnsurePaintAlphaMaps(void * this, int param_1)
Owned ranges: [[00aef740, 00aef827]]

00aef740  51  PUSH ECX
00aef741  53  PUSH EBX
00aef742  8b5c240c  MOV EBX,dword ptr [ESP + 0xc]
00aef746  55  PUSH EBP
00aef747  56  PUSH ESI
00aef748  8b7164  MOV ESI,dword ptr [ECX + 0x64]
00aef74b  2b7160  SUB ESI,dword ptr [ECX + 0x60]
00aef74e  8d6960  LEA EBP,[ECX + 0x60]
00aef751  83c301  ADD EBX,0x1
00aef754  c1fe02  SAR ESI,0x2
00aef757  3bf3  CMP ESI,EBX
00aef759  57  PUSH EDI
00aef75a  894c2410  MOV dword ptr [ESP + 0x10],ECX
00aef75e  895c2418  MOV dword ptr [ESP + 0x18],EBX
00aef762  7308  JNC 0x00aef76c
00aef764  53  PUSH EBX
00aef765  8bcd  MOV ECX,EBP
00aef767  e8842a1300  CALL 0x00c221f0
00aef76c  3bf3  CMP ESI,EBX
00aef76e  8bfe  MOV EDI,ESI
00aef770  0f83aa000000  JNC 0x00aef820
00aef776  33db  XOR EBX,EBX
00aef778  53  PUSH EBX
00aef779  53  PUSH EBX
00aef77a  53  PUSH EBX
00aef77b  53  PUSH EBX
00aef77c  befca70601  MOV ESI,0x106a7fc
00aef781  56  PUSH ESI
00aef782  6a44  PUSH 0x44
00aef784  e8774d9fff  CALL 0x004e4500
00aef789  83c418  ADD ESP,0x18
00aef78c  3bc3  CMP EAX,EBX
00aef78e  7436  JZ 0x00aef7c6
00aef790  8918  MOV dword ptr [EAX],EBX
00aef792  895804  MOV dword ptr [EAX + 0x4],EBX
00aef795  895808  MOV dword ptr [EAX + 0x8],EBX
00aef798  89580c  MOV dword ptr [EAX + 0xc],EBX
00aef79b  895810  MOV dword ptr [EAX + 0x10],EBX
00aef79e  895814  MOV dword ptr [EAX + 0x14],EBX
00aef7a1  895818  MOV dword ptr [EAX + 0x18],EBX
00aef7a4  89701c  MOV dword ptr [EAX + 0x1c],ESI
00aef7a7  895820  MOV dword ptr [EAX + 0x20],EBX
00aef7aa  895824  MOV dword ptr [EAX + 0x24],EBX
00aef7ad  895828  MOV dword ptr [EAX + 0x28],EBX
00aef7b0  89702c  MOV dword ptr [EAX + 0x2c],ESI
00aef7b3  895830  MOV dword ptr [EAX + 0x30],EBX
00aef7b6  895834  MOV dword ptr [EAX + 0x34],EBX
00aef7b9  895838  MOV dword ptr [EAX + 0x38],EBX
00aef7bc  89703c  MOV dword ptr [EAX + 0x3c],ESI
00aef7bf  885840  MOV byte ptr [EAX + 0x40],BL
00aef7c2  8bf0  MOV ESI,EAX
00aef7c4  eb02  JMP 0x00aef7c8
00aef7c6  33f6  XOR ESI,ESI
00aef7c8  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00aef7cc  8b4820  MOV ECX,dword ptr [EAX + 0x20]
00aef7cf  8b501c  MOV EDX,dword ptr [EAX + 0x1c]
00aef7d2  51  PUSH ECX
00aef7d3  52  PUSH EDX
00aef7d4  8bce  MOV ECX,ESI
00aef7d6  e865efffff  CALL 0x00aee740
00aef7db  8b4e34  MOV ECX,dword ptr [ESI + 0x34]
00aef7de  8b4630  MOV EAX,dword ptr [ESI + 0x30]
00aef7e1  3bc1  CMP EAX,ECX
00aef7e3  740c  JZ 0x00aef7f1
00aef7e5  66c7000080  MOV word ptr [EAX],0x8000
00aef7ea  83c002  ADD EAX,0x2
00aef7ed  3bc1  CMP EAX,ECX
00aef7ef  75f4  JNZ 0x00aef7e5
00aef7f1  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00aef7f4  8b4e14  MOV ECX,dword ptr [ESI + 0x14]
00aef7f7  2bc8  SUB ECX,EAX
00aef7f9  51  PUSH ECX
00aef7fa  53  PUSH EBX
00aef7fb  50  PUSH EAX
00aef7fc  e897fa4800  CALL 0x00f7f298
00aef801  8b5620  MOV EDX,dword ptr [ESI + 0x20]
00aef804  895624  MOV dword ptr [ESI + 0x24],EDX
00aef807  885e40  MOV byte ptr [ESI + 0x40],BL
00aef80a  8b4500  MOV EAX,dword ptr [EBP]
00aef80d  8934b8  MOV dword ptr [EAX + EDI*0x4],ESI
00aef810  83c701  ADD EDI,0x1
00aef813  83c40c  ADD ESP,0xc
00aef816  3b7c2418  CMP EDI,dword ptr [ESP + 0x18]
00aef81a  0f8258ffffff  JC 0x00aef778
00aef820  5f  POP EDI
00aef821  5e  POP ESI
00aef822  5d  POP EBP
00aef823  5b  POP EBX
00aef824  59  POP ECX
00aef825  c20400  RET 0x4
