# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 0051F770_WinDialog_QueryInterface.c
Owned ranges: [[0051f770, 0051f795]]

0051f770  8b442404  MOV EAX,dword ptr [ESP + 0x4]
0051f774  3dc98a0b6f  CMP EAX,0x6f0b8ac9
0051f779  7409  JZ 0x0051f784
0051f77b  89442404  MOV dword ptr [ESP + 0x4],EAX
0051f77f  e98c42ffff  JMP 0x00513a10
0051f784  85c9  TEST ECX,ECX
0051f786  7409  JZ 0x0051f791
0051f788  8d8150020000  LEA EAX,[ECX + 0x250]
0051f78e  c20400  RET 0x4
0051f791  33c0  XOR EAX,EAX
0051f793  c20400  RET 0x4
