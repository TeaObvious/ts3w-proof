# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 0077ECE0_Sims3CustomWindow_QueryInterface.c
Owned ranges: [[0077ece0, 0077ed05]]

0077ece0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
0077ece4  3dc89ff203  CMP EAX,0x3f29fc8
0077ece9  7409  JZ 0x0077ecf4
0077eceb  89442404  MOV dword ptr [ESP + 0x4],EAX
0077ecef  e91c4dd9ff  JMP 0x00513a10
0077ecf4  85c9  TEST ECX,ECX
0077ecf6  7409  JZ 0x0077ed01
0077ecf8  8d8150020000  LEA EAX,[ECX + 0x250]
0077ecfe  c20400  RET 0x4
0077ed01  33c0  XOR EAX,EAX
0077ed03  c20400  RET 0x4
