# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 0053FA30_UiTextEdit_EmitError.c
Owned ranges: [[0053fa30, 0053fa68]]

0053fa30  83ec1c  SUB ESP,0x1c
0053fa33  8b413c  MOV EAX,dword ptr [ECX + 0x3c]
0053fa36  85c0  TEST EAX,EAX
0053fa38  c7442408db52159b  MOV dword ptr [ESP + 0x8],0x9b1552db
0053fa40  7503  JNZ 0x0053fa45
0053fa42  8b4138  MOV EAX,dword ptr [ECX + 0x38]
0053fa45  8b542420  MOV EDX,dword ptr [ESP + 0x20]
0053fa49  8944240c  MOV dword ptr [ESP + 0xc],EAX
0053fa4d  8b4104  MOV EAX,dword ptr [ECX + 0x4]
0053fa50  8b8018010000  MOV EAX,dword ptr [EAX + 0x118]
0053fa56  83c104  ADD ECX,0x4
0053fa59  89542410  MOV dword ptr [ESP + 0x10],EDX
0053fa5d  8d1424  LEA EDX,[ESP]
0053fa60  52  PUSH EDX
0053fa61  ffd0  CALL EAX
0053fa63  83c41c  ADD ESP,0x1c
0053fa66  c20400  RET 0x4
