# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 00549DD0_UiLayout_ShutdownBaseState.c
Owned ranges: [[00549dd0, 00549e0d]]

00549dd0  56  PUSH ESI
00549dd1  57  PUSH EDI
00549dd2  8bf9  MOV EDI,ECX
00549dd4  e8a7ffffff  CALL 0x00549d80
00549dd9  8b472c  MOV EAX,dword ptr [EDI + 0x2c]
00549ddc  8b4f28  MOV ECX,dword ptr [EDI + 0x28]
00549ddf  8d7724  LEA ESI,[EDI + 0x24]
00549de2  50  PUSH EAX
00549de3  51  PUSH ECX
00549de4  8bce  MOV ECX,ESI
00549de6  e8058f0900  CALL 0x005e2cf0
00549deb  c7460c00000000  MOV dword ptr [ESI + 0xc],0x0
00549df2  8b574c  MOV EDX,dword ptr [EDI + 0x4c]
00549df5  8b4748  MOV EAX,dword ptr [EDI + 0x48]
00549df8  8d7744  LEA ESI,[EDI + 0x44]
00549dfb  52  PUSH EDX
00549dfc  50  PUSH EAX
00549dfd  8bce  MOV ECX,ESI
00549dff  e8ec8e0900  CALL 0x005e2cf0
00549e04  5f  POP EDI
00549e05  c7460c00000000  MOV dword ptr [ESI + 0xc],0x0
00549e0c  5e  POP ESI
00549e0d  c3  RET
