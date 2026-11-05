# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 0077F1D0_Sims3CustomButton_Create.c
Owned ranges: [[0077f1d0, 0077f202]]

0077f1d0  8b442408  MOV EAX,dword ptr [ESP + 0x8]
0077f1d4  50  PUSH EAX
0077f1d5  6814f90001  PUSH 0x100f914
0077f1da  6a10  PUSH 0x10
0077f1dc  68f0020000  PUSH 0x2f0
0077f1e1  e8ca5ed8ff  CALL 0x005050b0
0077f1e6  83c410  ADD ESP,0x10
0077f1e9  85c0  TEST EAX,EAX
0077f1eb  7411  JZ 0x0077f1fe
0077f1ed  8bc8  MOV ECX,EAX
0077f1ef  e8ccfbffff  CALL 0x0077edc0
0077f1f4  85c0  TEST EAX,EAX
0077f1f6  7406  JZ 0x0077f1fe
0077f1f8  83c004  ADD EAX,0x4
0077f1fb  c20800  RET 0x8
0077f1fe  33c0  XOR EAX,EAX
0077f200  c20800  RET 0x8
