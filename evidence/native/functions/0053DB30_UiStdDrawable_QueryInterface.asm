# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 0053DB30_UiStdDrawable_QueryInterface.c
Owned ranges: [[0053db30, 0053db63]]

0053db30  8b442404  MOV EAX,dword ptr [ESP + 0x4]
0053db34  3d08193c10  CMP EAX,0x103c1908
0053db39  741a  JZ 0x0053db55
0053db3b  3d8283c5ee  CMP EAX,0xeec58382
0053db40  7409  JZ 0x0053db4b
0053db42  89442404  MOV dword ptr [ESP + 0x4],EAX
0053db46  e98574fcff  JMP 0x00504fd0
0053db4b  85c9  TEST ECX,ECX
0053db4d  7410  JZ 0x0053db5f
0053db4f  8d4104  LEA EAX,[ECX + 0x4]
0053db52  c20400  RET 0x4
0053db55  85c9  TEST ECX,ECX
0053db57  7406  JZ 0x0053db5f
0053db59  8d410c  LEA EAX,[ECX + 0xc]
0053db5c  c20400  RET 0x4
0053db5f  33c0  XOR EAX,EAX
0053db61  c20400  RET 0x4
