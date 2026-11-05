# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 00542700_UiTextEdit_CreateWindow.c
Owned ranges: [[00542700, 00542732]]

00542700  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00542704  50  PUSH EAX
00542705  68d410fc00  PUSH 0xfc10d4
0054270a  6a10  PUSH 0x10
0054270c  6890060000  PUSH 0x690
00542711  e89a29fcff  CALL 0x005050b0
00542716  83c410  ADD ESP,0x10
00542719  85c0  TEST EAX,EAX
0054271b  7411  JZ 0x0054272e
0054271d  8bc8  MOV ECX,EAX
0054271f  e8fcf7ffff  CALL 0x00541f20
00542724  85c0  TEST EAX,EAX
00542726  7406  JZ 0x0054272e
00542728  83c004  ADD EAX,0x4
0054272b  c20800  RET 0x8
0054272e  33c0  XOR EAX,EAX
00542730  c20800  RET 0x8
