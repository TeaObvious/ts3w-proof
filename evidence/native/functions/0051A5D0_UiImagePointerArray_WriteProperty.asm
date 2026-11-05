# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 0051A5D0_UiImagePointerArray_WriteProperty.c
Owned ranges: [[0051a5d0, 0051a63b]]

0051a5d0  8b442408  MOV EAX,dword ptr [ESP + 0x8]
0051a5d4  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
0051a5d8  53  PUSH EBX
0051a5d9  55  PUSH EBP
0051a5da  8b6804  MOV EBP,dword ptr [EAX + 0x4]
0051a5dd  8b442414  MOV EAX,dword ptr [ESP + 0x14]
0051a5e1  57  PUSH EDI
0051a5e2  0fbf780e  MOVSX EDI,word ptr [EAX + 0xe]
0051a5e6  037904  ADD EDI,dword ptr [ECX + 0x4]
0051a5e9  33db  XOR EBX,EBX
0051a5eb  395810  CMP dword ptr [EAX + 0x10],EBX
0051a5ee  7646  JBE 0x0051a636
0051a5f0  56  PUSH ESI
0051a5f1  8b4d00  MOV ECX,dword ptr [EBP]
0051a5f4  33f6  XOR ESI,ESI
0051a5f6  85c9  TEST ECX,ECX
0051a5f8  741a  JZ 0x0051a614
0051a5fa  8b11  MOV EDX,dword ptr [ECX]
0051a5fc  8b420c  MOV EAX,dword ptr [EDX + 0xc]
0051a5ff  68b36abe01  PUSH 0x1be6ab3
0051a604  ffd0  CALL EAX
0051a606  8bf0  MOV ESI,EAX
0051a608  85f6  TEST ESI,ESI
0051a60a  7408  JZ 0x0051a614
0051a60c  8b16  MOV EDX,dword ptr [ESI]
0051a60e  8b02  MOV EAX,dword ptr [EDX]
0051a610  8bce  MOV ECX,ESI
0051a612  ffd0  CALL EAX
0051a614  8b0f  MOV ECX,dword ptr [EDI]
0051a616  85c9  TEST ECX,ECX
0051a618  7407  JZ 0x0051a621
0051a61a  8b11  MOV EDX,dword ptr [ECX]
0051a61c  8b4204  MOV EAX,dword ptr [EDX + 0x4]
0051a61f  ffd0  CALL EAX
0051a621  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
0051a625  8937  MOV dword ptr [EDI],ESI
0051a627  83c301  ADD EBX,0x1
0051a62a  83c704  ADD EDI,0x4
0051a62d  83c504  ADD EBP,0x4
0051a630  3b5910  CMP EBX,dword ptr [ECX + 0x10]
0051a633  72bc  JC 0x0051a5f1
0051a635  5e  POP ESI
0051a636  5f  POP EDI
0051a637  5d  POP EBP
0051a638  b001  MOV AL,0x1
0051a63a  5b  POP EBX
0051a63b  c3  RET
