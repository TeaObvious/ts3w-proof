# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; full owned Ghidra Listing.
Actual annotated Ghidra C: 0053D700_StaticRotate_SetAxis.c
Owned ranges: [[0053d700, 0053d721]]

0053d700  55  PUSH EBP
0053d701  8bec  MOV EBP,ESP
0053d703  83e4f0  AND ESP,0xfffffff0
0053d706  83ec0c  SUB ESP,0xc
0053d709  56  PUSH ESI
0053d70a  8bf1  MOV ESI,ECX
0053d70c  e8effeffff  CALL 0x0053d600
0053d711  8b4508  MOV EAX,dword ptr [EBP + 0x8]
0053d714  0f2800  MOVAPS XMM0,xmmword ptr [EAX]
0053d717  0f294610  MOVAPS xmmword ptr [ESI + 0x10],XMM0
0053d71b  5e  POP ESI
0053d71c  8be5  MOV ESP,EBP
0053d71e  5d  POP EBP
0053d71f  c20400  RET 0x4
