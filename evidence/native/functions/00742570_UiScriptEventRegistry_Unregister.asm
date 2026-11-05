# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 00742570_UiScriptEventRegistry_Unregister.c
Owned ranges: [[00742570, 007425bf]]

00742570  83ec08  SUB ESP,0x8
00742573  56  PUSH ESI
00742574  8d7104  LEA ESI,[ECX + 0x4]
00742577  8d442410  LEA EAX,[ESP + 0x10]
0074257b  50  PUSH EAX
0074257c  8d4c2408  LEA ECX,[ESP + 0x8]
00742580  51  PUSH ECX
00742581  8bce  MOV ECX,ESI
00742583  e828943100  CALL 0x00a5b9b0
00742588  8b5608  MOV EDX,dword ptr [ESI + 0x8]
0074258b  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
0074258e  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00742592  3b0491  CMP EAX,dword ptr [ECX + EDX*0x4]
00742595  7422  JZ 0x007425b9
00742597  8b7004  MOV ESI,dword ptr [EAX + 0x4]
0074259a  8b542414  MOV EDX,dword ptr [ESP + 0x14]
0074259e  52  PUSH EDX
0074259f  8bce  MOV ECX,ESI
007425a1  e85afeffff  CALL 0x00742400
007425a6  84c0  TEST AL,AL
007425a8  740f  JZ 0x007425b9
007425aa  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
007425ae  8b01  MOV EAX,dword ptr [ECX]
007425b0  8b900c010000  MOV EDX,dword ptr [EAX + 0x10c]
007425b6  56  PUSH ESI
007425b7  ffd2  CALL EDX
007425b9  5e  POP ESI
007425ba  83c408  ADD ESP,0x8
007425bd  c20800  RET 0x8
