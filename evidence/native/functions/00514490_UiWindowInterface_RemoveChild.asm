# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 00514490_UiWindowInterface_RemoveChild.c
Owned ranges: [[00514490, 005144cb]]

00514490  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00514494  85c0  TEST EAX,EAX
00514496  56  PUSH ESI
00514497  7405  JZ 0x0051449e
00514499  8d70fc  LEA ESI,[EAX + -0x4]
0051449c  eb02  JMP 0x005144a0
0051449e  33f6  XOR ESI,ESI
005144a0  8b460c  MOV EAX,dword ptr [ESI + 0xc]
005144a3  8b5608  MOV EDX,dword ptr [ESI + 0x8]
005144a6  8910  MOV dword ptr [EAX],EDX
005144a8  894204  MOV dword ptr [EDX + 0x4],EAX
005144ab  8b492c  MOV ECX,dword ptr [ECX + 0x2c]
005144ae  85c9  TEST ECX,ECX
005144b0  7406  JZ 0x005144b8
005144b2  56  PUSH ESI
005144b3  e80887ffff  CALL 0x0050cbc0
005144b8  8b06  MOV EAX,dword ptr [ESI]
005144ba  8b5004  MOV EDX,dword ptr [EAX + 0x4]
005144bd  8bce  MOV ECX,ESI
005144bf  c7462c00000000  MOV dword ptr [ESI + 0x2c],0x0
005144c6  ffd2  CALL EDX
005144c8  5e  POP ESI
005144c9  c20400  RET 0x4
