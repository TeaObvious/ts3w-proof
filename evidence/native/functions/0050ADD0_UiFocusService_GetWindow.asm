# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 0050ADD0_UiFocusService_GetWindow.c
Owned ranges: [[0050add0, 0050adec]]

0050add0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
0050add4  6bc02c  IMUL EAX,EAX,0x2c
0050add7  8b8408b0060000  MOV EAX,dword ptr [EAX + ECX*0x1 + 0x6b0]
0050adde  85c0  TEST EAX,EAX
0050ade0  7406  JZ 0x0050ade8
0050ade2  83c004  ADD EAX,0x4
0050ade5  c20400  RET 0x4
0050ade8  33c0  XOR EAX,EAX
0050adea  c20400  RET 0x4
