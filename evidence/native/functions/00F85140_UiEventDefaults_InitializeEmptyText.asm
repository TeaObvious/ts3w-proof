# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 00F85140_UiEventDefaults_InitializeEmptyText.c
Owned ranges: [[00f85140, 00f851be]]

00f85140  83ec10  SUB ESP,0x10
00f85143  6a01  PUSH 0x1
00f85145  b8548e1c01  MOV EAX,0x11c8e54
00f8514a  6a10  PUSH 0x10
00f8514c  89442408  MOV dword ptr [ESP + 0x8],EAX
00f85150  8944240c  MOV dword ptr [ESP + 0xc],EAX
00f85154  8d442408  LEA EAX,[ESP + 0x8]
00f85158  50  PUSH EAX
00f85159  6a09  PUSH 0x9
00f8515b  6a13  PUSH 0x13
00f8515d  b9107a1d01  MOV ECX,0x11d7a10
00f85162  c744242004140101  MOV dword ptr [ESP + 0x20],0x1011404
00f8516a  c744241c568e1c01  MOV dword ptr [ESP + 0x1c],0x11c8e56
00f85172  c705107a1d01f4a6fb00  MOV dword ptr [0x011d7a10],0xfba6f4
00f8517c  66c705187a1d010000  MOV word ptr [0x011d7a18],0x0
00f85185  66c7051a7a1d010000  MOV word ptr [0x011d7a1a],0x0
00f8518e  e82d0857ff  CALL 0x004f59c0
00f85193  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
00f85197  8b0424  MOV EAX,dword ptr [ESP]
00f8519a  2bc8  SUB ECX,EAX
00f8519c  83e1fe  AND ECX,0xfffffffe
00f8519f  83f902  CMP ECX,0x2
00f851a2  7e0d  JLE 0x00f851b1
00f851a4  85c0  TEST EAX,EAX
00f851a6  7409  JZ 0x00f851b1
00f851a8  50  PUSH EAX
00f851a9  e832f355ff  CALL 0x004e44e0
00f851ae  83c404  ADD ESP,0x4
00f851b1  68f031f900  PUSH 0xf931f0
00f851b6  e8c6a1ffff  CALL 0x00f7f381
00f851bb  83c414  ADD ESP,0x14
00f851be  c3  RET
