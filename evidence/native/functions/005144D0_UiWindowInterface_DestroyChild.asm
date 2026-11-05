# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 005144D0_UiWindowInterface_DestroyChild.c
Owned ranges: [[005144d0, 00514517]]

005144d0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
005144d4  85c0  TEST EAX,EAX
005144d6  56  PUSH ESI
005144d7  57  PUSH EDI
005144d8  8bf9  MOV EDI,ECX
005144da  7414  JZ 0x005144f0
005144dc  8d70fc  LEA ESI,[EAX + -0x4]
005144df  85f6  TEST ESI,ESI
005144e1  740f  JZ 0x005144f2
005144e3  8b06  MOV EAX,dword ptr [ESI]
005144e5  8b10  MOV EDX,dword ptr [EAX]
005144e7  8bce  MOV ECX,ESI
005144e9  ffd2  CALL EDX
005144eb  8d4604  LEA EAX,[ESI + 0x4]
005144ee  eb04  JMP 0x005144f4
005144f0  33f6  XOR ESI,ESI
005144f2  33c0  XOR EAX,EAX
005144f4  8b17  MOV EDX,dword ptr [EDI]
005144f6  50  PUSH EAX
005144f7  8b82e0000000  MOV EAX,dword ptr [EDX + 0xe0]
005144fd  8bcf  MOV ECX,EDI
005144ff  ffd0  CALL EAX
00514501  8b16  MOV EDX,dword ptr [ESI]
00514503  8b421c  MOV EAX,dword ptr [EDX + 0x1c]
00514506  8bce  MOV ECX,ESI
00514508  ffd0  CALL EAX
0051450a  8b16  MOV EDX,dword ptr [ESI]
0051450c  8b4204  MOV EAX,dword ptr [EDX + 0x4]
0051450f  8bce  MOV ECX,ESI
00514511  ffd0  CALL EAX
00514513  5f  POP EDI
00514514  5e  POP ESI
00514515  c20400  RET 0x4
