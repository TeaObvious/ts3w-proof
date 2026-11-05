# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; full owned Ghidra Listing.
Actual annotated Ghidra C: 0053D730_StaticRotate_SetAngle.c
Owned ranges: [[0053d730, 0053d746]]

0053d730  56  PUSH ESI
0053d731  8bf1  MOV ESI,ECX
0053d733  e8c8feffff  CALL 0x0053d600
0053d738  f30f10442408  MOVSS XMM0,dword ptr [ESP + 0x8]
0053d73e  f30f114620  MOVSS dword ptr [ESI + 0x20],XMM0
0053d743  5e  POP ESI
0053d744  c20400  RET 0x4
