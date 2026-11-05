# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined4 ObjectManager_AdmitAndNotify(void * this, void * param_1)
Owned ranges: [[00c71160, 00c711d2]]

00c71160  56  PUSH ESI
00c71161  8b742408  MOV ESI,dword ptr [ESP + 0x8]
00c71165  57  PUSH EDI
00c71166  8bf9  MOV EDI,ECX
00c71168  8bce  MOV ECX,ESI
00c7116a  e8c1dfa1ff  CALL 0x0068f130
00c7116f  85c0  TEST EAX,EAX
00c71171  7407  JZ 0x00c7117a
00c71173  5f  POP EDI
00c71174  32c0  XOR AL,AL
00c71176  5e  POP ESI
00c71177  c20400  RET 0x4
00c7117a  57  PUSH EDI
00c7117b  8bce  MOV ECX,ESI
00c7117d  e8ce30ccff  CALL 0x00934250
00c71182  8d4604  LEA EAX,[ESI + 0x4]
00c71185  b901000000  MOV ECX,0x1
00c7118a  f00fc108  XADD.LOCK dword ptr [EAX],ECX
00c7118e  8b4718  MOV EAX,dword ptr [EDI + 0x18]
00c71191  3b471c  CMP EAX,dword ptr [EDI + 0x1c]
00c71194  8d4f14  LEA ECX,[EDI + 0x14]
00c71197  730e  JNC 0x00c711a7
00c71199  85c0  TEST EAX,EAX
00c7119b  8d5004  LEA EDX,[EAX + 0x4]
00c7119e  895104  MOV dword ptr [ECX + 0x4],EDX
00c711a1  7413  JZ 0x00c711b6
00c711a3  8930  MOV dword ptr [EAX],ESI
00c711a5  eb0f  JMP 0x00c711b6
00c711a7  8d54240c  LEA EDX,[ESP + 0xc]
00c711ab  52  PUSH EDX
00c711ac  50  PUSH EAX
00c711ad  e86e12d1ff  CALL 0x00982420
00c711b2  8b74240c  MOV ESI,dword ptr [ESP + 0xc]
00c711b6  8b07  MOV EAX,dword ptr [EDI]
00c711b8  8b506c  MOV EDX,dword ptr [EAX + 0x6c]
00c711bb  56  PUSH ESI
00c711bc  8bcf  MOV ECX,EDI
00c711be  ffd2  CALL EDX
00c711c0  50  PUSH EAX
00c711c1  56  PUSH ESI
00c711c2  6a15  PUSH 0x15
00c711c4  e8f744ccff  CALL 0x009356c0
00c711c9  83c40c  ADD ESP,0xc
00c711cc  5f  POP EDI
00c711cd  b001  MOV AL,0x1
00c711cf  5e  POP ESI
00c711d0  c20400  RET 0x4
