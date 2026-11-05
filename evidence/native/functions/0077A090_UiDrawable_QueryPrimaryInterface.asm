# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 0077A090_UiDrawable_QueryPrimaryInterface.c
Owned ranges: [[0077a090, 0077a0a7]]

0077a090  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
0077a094  85c9  TEST ECX,ECX
0077a096  740d  JZ 0x0077a0a5
0077a098  8b01  MOV EAX,dword ptr [ECX]
0077a09a  8b500c  MOV EDX,dword ptr [EAX + 0xc]
0077a09d  68fd81c56e  PUSH 0x6ec581fd
0077a0a2  ffd2  CALL EDX
0077a0a4  c3  RET
0077a0a5  33c0  XOR EAX,EAX
0077a0a7  c3  RET
