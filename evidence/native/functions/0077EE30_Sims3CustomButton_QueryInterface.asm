# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 0077EE30_Sims3CustomButton_QueryInterface.c
Owned ranges: [[0077ee30, 0077ee55]]

0077ee30  8b442404  MOV EAX,dword ptr [ESP + 0x4]
0077ee34  3dc89ff203  CMP EAX,0x3f29fc8
0077ee39  7409  JZ 0x0077ee44
0077ee3b  89442404  MOV dword ptr [ESP + 0x4],EAX
0077ee3f  e92c91d9ff  JMP 0x00517f70
0077ee44  85c9  TEST ECX,ECX
0077ee46  7409  JZ 0x0077ee51
0077ee48  8d81e0020000  LEA EAX,[ECX + 0x2e0]
0077ee4e  c20400  RET 0x4
0077ee51  33c0  XOR EAX,EAX
0077ee53  c20400  RET 0x4
