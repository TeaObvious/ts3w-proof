# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 0054A8A0_UiHostedLayout_DestroyRoots.c
Owned ranges: [[0054a8a0, 0054a8f1]]

0054a8a0  57  PUSH EDI
0054a8a1  8bf9  MOV EDI,ECX
0054a8a3  e878f4ffff  CALL 0x00549d20
0054a8a8  83bf9800000000  CMP dword ptr [EDI + 0x98],0x0
0054a8af  743f  JZ 0x0054a8f0
0054a8b1  53  PUSH EBX
0054a8b2  8b5f68  MOV EBX,dword ptr [EDI + 0x68]
0054a8b5  56  PUSH ESI
0054a8b6  8b7764  MOV ESI,dword ptr [EDI + 0x64]
0054a8b9  3bf3  CMP ESI,EBX
0054a8bb  7431  JZ 0x0054a8ee
0054a8bd  8d4900  LEA ECX,[ECX]
0054a8c0  8b0e  MOV ECX,dword ptr [ESI]
0054a8c2  85c9  TEST ECX,ECX
0054a8c4  7421  JZ 0x0054a8e7
0054a8c6  8b01  MOV EAX,dword ptr [ECX]
0054a8c8  8b500c  MOV EDX,dword ptr [EAX + 0xc]
0054a8cb  681882eeee  PUSH 0xeeee8218
0054a8d0  ffd2  CALL EDX
0054a8d2  85c0  TEST EAX,EAX
0054a8d4  7411  JZ 0x0054a8e7
0054a8d6  8b8f98000000  MOV ECX,dword ptr [EDI + 0x98]
0054a8dc  8b11  MOV EDX,dword ptr [ECX]
0054a8de  50  PUSH EAX
0054a8df  8b82e4000000  MOV EAX,dword ptr [EDX + 0xe4]
0054a8e5  ffd0  CALL EAX
0054a8e7  83c604  ADD ESI,0x4
0054a8ea  3bf3  CMP ESI,EBX
0054a8ec  75d2  JNZ 0x0054a8c0
0054a8ee  5e  POP ESI
0054a8ef  5b  POP EBX
0054a8f0  5f  POP EDI
0054a8f1  c3  RET
