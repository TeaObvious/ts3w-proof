# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void LotLevels_ApplyRangeAndNotify(void * this, int minimumLevel, int maximumLevel)
Owned ranges: [[00ace0e0, 00ace1ac]]

00ace0e0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00ace0e4  56  PUSH ESI
00ace0e5  8bf1  MOV ESI,ECX
00ace0e7  3b867c010000  CMP EAX,dword ptr [ESI + 0x17c]
00ace0ed  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
00ace0f1  750c  JNZ 0x00ace0ff
00ace0f3  3b8e80010000  CMP ECX,dword ptr [ESI + 0x180]
00ace0f9  0f84a6000000  JZ 0x00ace1a5
00ace0ff  53  PUSH EBX
00ace100  51  PUSH ECX
00ace101  50  PUSH EAX
00ace102  8bce  MOV ECX,ESI
00ace104  e847ffffff  CALL 0x00ace050
00ace109  e8e2e397ff  CALL 0x0044c4f0
00ace10e  8bd8  MOV EBX,EAX
00ace110  85db  TEST EBX,EBX
00ace112  7471  JZ 0x00ace185
00ace114  57  PUSH EDI
00ace115  6a18  PUSH 0x18
00ace117  e834100100  CALL 0x00adf150
00ace11c  83c404  ADD ESP,0x4
00ace11f  85c0  TEST EAX,EAX
00ace121  0f8482000000  JZ 0x00ace1a9
00ace127  c7008c5f0601  MOV dword ptr [EAX],0x1065f8c
00ace12d  33c9  XOR ECX,ECX
00ace12f  8d5004  LEA EDX,[EAX + 0x4]
00ace132  870a  XCHG dword ptr [EDX],ECX
00ace134  c7008c5f0601  MOV dword ptr [EAX],0x1065f8c
00ace13a  8b10  MOV EDX,dword ptr [EAX]
00ace13c  8bf8  MOV EDI,EAX
00ace13e  8bc8  MOV ECX,EAX
00ace140  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00ace143  ffd0  CALL EAX
00ace145  8b4e48  MOV ECX,dword ptr [ESI + 0x48]
00ace148  894f08  MOV dword ptr [EDI + 0x8],ECX
00ace14b  8b564c  MOV EDX,dword ptr [ESI + 0x4c]
00ace14e  89570c  MOV dword ptr [EDI + 0xc],EDX
00ace151  8b867c010000  MOV EAX,dword ptr [ESI + 0x17c]
00ace157  894710  MOV dword ptr [EDI + 0x10],EAX
00ace15a  8b8e80010000  MOV ECX,dword ptr [ESI + 0x180]
00ace160  894f14  MOV dword ptr [EDI + 0x14],ECX
00ace163  8b8664030000  MOV EAX,dword ptr [ESI + 0x364]
00ace169  8b13  MOV EDX,dword ptr [EBX]
00ace16b  8b521c  MOV EDX,dword ptr [EDX + 0x1c]
00ace16e  50  PUSH EAX
00ace16f  6a00  PUSH 0x0
00ace171  57  PUSH EDI
00ace172  68249e1f04  PUSH 0x41f9e24
00ace177  8bcb  MOV ECX,EBX
00ace179  ffd2  CALL EDX
00ace17b  8b07  MOV EAX,dword ptr [EDI]
00ace17d  8b5008  MOV EDX,dword ptr [EAX + 0x8]
00ace180  8bcf  MOV ECX,EDI
00ace182  ffd2  CALL EDX
00ace184  5f  POP EDI
00ace185  8b8e90020000  MOV ECX,dword ptr [ESI + 0x290]
00ace18b  85c9  TEST ECX,ECX
00ace18d  5b  POP EBX
00ace18e  7405  JZ 0x00ace195
00ace190  e89b7dfcff  CALL 0x00a95f30
00ace195  8b464c  MOV EAX,dword ptr [ESI + 0x4c]
00ace198  8b4e48  MOV ECX,dword ptr [ESI + 0x48]
00ace19b  50  PUSH EAX
00ace19c  51  PUSH ECX
00ace19d  e8be42ccff  CALL 0x00792460
00ace1a2  83c408  ADD ESP,0x8
00ace1a5  5e  POP ESI
00ace1a6  c20800  RET 0x8
00ace1a9  33ff  XOR EDI,EDI
00ace1ab  eb98  JMP 0x00ace145
