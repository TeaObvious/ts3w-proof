# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 0077F020_Sims3CustomDialog_QueryInterface.c
Owned ranges: [[0077f020, 0077f045]]

0077f020  8b442404  MOV EAX,dword ptr [ESP + 0x4]
0077f024  3dc89ff203  CMP EAX,0x3f29fc8
0077f029  7409  JZ 0x0077f034
0077f02b  89442404  MOV dword ptr [ESP + 0x4],EAX
0077f02f  e93c07daff  JMP 0x0051f770
0077f034  85c9  TEST ECX,ECX
0077f036  7409  JZ 0x0077f041
0077f038  8d8180030000  LEA EAX,[ECX + 0x380]
0077f03e  c20400  RET 0x4
0077f041  33c0  XOR EAX,EAX
0077f043  c20400  RET 0x4
