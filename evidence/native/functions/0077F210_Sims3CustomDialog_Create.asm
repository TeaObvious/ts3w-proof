# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 0077F210_Sims3CustomDialog_Create.c
Owned ranges: [[0077f210, 0077f242]]

0077f210  8b442408  MOV EAX,dword ptr [ESP + 0x8]
0077f214  50  PUSH EAX
0077f215  683cf90001  PUSH 0x100f93c
0077f21a  6a10  PUSH 0x10
0077f21c  6890030000  PUSH 0x390
0077f221  e88a5ed8ff  CALL 0x005050b0
0077f226  83c410  ADD ESP,0x10
0077f229  85c0  TEST EAX,EAX
0077f22b  7411  JZ 0x0077f23e
0077f22d  8bc8  MOV ECX,EAX
0077f22f  e89cfdffff  CALL 0x0077efd0
0077f234  85c0  TEST EAX,EAX
0077f236  7406  JZ 0x0077f23e
0077f238  83c004  ADD EAX,0x4
0077f23b  c20800  RET 0x8
0077f23e  33c0  XOR EAX,EAX
0077f240  c20800  RET 0x8
