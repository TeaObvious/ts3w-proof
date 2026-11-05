# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 007421D0_UiScriptEventRegistry_UnregisterAll.c
Owned ranges: [[007421d0, 00742215]]

007421d0  83ec08  SUB ESP,0x8
007421d3  56  PUSH ESI
007421d4  8d7104  LEA ESI,[ECX + 0x4]
007421d7  8d442410  LEA EAX,[ESP + 0x10]
007421db  50  PUSH EAX
007421dc  8d4c2408  LEA ECX,[ESP + 0x8]
007421e0  51  PUSH ECX
007421e1  8bce  MOV ECX,ESI
007421e3  e8c8973100  CALL 0x00a5b9b0
007421e8  8b5608  MOV EDX,dword ptr [ESI + 0x8]
007421eb  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
007421ee  8b442404  MOV EAX,dword ptr [ESP + 0x4]
007421f2  3b0491  CMP EAX,dword ptr [ECX + EDX*0x4]
007421f5  5e  POP ESI
007421f6  7418  JZ 0x00742210
007421f8  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
007421fc  8b11  MOV EDX,dword ptr [ECX]
007421fe  8b4004  MOV EAX,dword ptr [EAX + 0x4]
00742201  83c408  ADD ESP,0x8
00742204  89442404  MOV dword ptr [ESP + 0x4],EAX
00742208  8b920c010000  MOV EDX,dword ptr [EDX + 0x10c]
0074220e  ffe2  JMP EDX
00742210  83c408  ADD ESP,0x8
00742213  c20400  RET 0x4
