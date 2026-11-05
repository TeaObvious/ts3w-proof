# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 00549D20_UiLayout_NotifyCallbackPairs.c
Owned ranges: [[00549d20, 00549d48]]

00549d20  56  PUSH ESI
00549d21  57  PUSH EDI
00549d22  8bf9  MOV EDI,ECX
00549d24  8b7774  MOV ESI,dword ptr [EDI + 0x74]
00549d27  3b7778  CMP ESI,dword ptr [EDI + 0x78]
00549d2a  741a  JZ 0x00549d46
00549d2c  8d642400  LEA ESP,[ESP]
00549d30  8b4604  MOV EAX,dword ptr [ESI + 0x4]
00549d33  8b0e  MOV ECX,dword ptr [ESI]
00549d35  50  PUSH EAX
00549d36  57  PUSH EDI
00549d37  6a01  PUSH 0x1
00549d39  ffd1  CALL ECX
00549d3b  83c608  ADD ESI,0x8
00549d3e  83c40c  ADD ESP,0xc
00549d41  3b7778  CMP ESI,dword ptr [EDI + 0x78]
00549d44  75ea  JNZ 0x00549d30
00549d46  5f  POP EDI
00549d47  5e  POP ESI
00549d48  c3  RET
