# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 0053E700_UiStdDrawable_DeleteByFlags.c
Owned ranges: [[0053e700, 0053e71d]]

0053e700  56  PUSH ESI
0053e701  8bf1  MOV ESI,ECX
0053e703  e8a8fdffff  CALL 0x0053e4b0
0053e708  f644240801  TEST byte ptr [ESP + 0x8],0x1
0053e70d  7409  JZ 0x0053e718
0053e70f  56  PUSH ESI
0053e710  e86b69fcff  CALL 0x00505080
0053e715  83c404  ADD ESP,0x4
0053e718  8bc6  MOV EAX,ESI
0053e71a  5e  POP ESI
0053e71b  c20400  RET 0x4
