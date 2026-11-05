# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 0053E720_UiStdDrawable_CreateFromDescriptor.c
Owned ranges: [[0053e720, 0053e74b]]

0053e720  8b442408  MOV EAX,dword ptr [ESP + 0x8]
0053e724  50  PUSH EAX
0053e725  686008fc00  PUSH 0xfc0860
0053e72a  6a04  PUSH 0x4
0053e72c  6888000000  PUSH 0x88
0053e731  e87a69fcff  CALL 0x005050b0
0053e736  83c410  ADD ESP,0x10
0053e739  85c0  TEST EAX,EAX
0053e73b  740a  JZ 0x0053e747
0053e73d  8bc8  MOV ECX,EAX
0053e73f  e8fcfeffff  CALL 0x0053e640
0053e744  c20800  RET 0x8
0053e747  33c0  XOR EAX,EAX
0053e749  c20800  RET 0x8
