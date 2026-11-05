# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete actual Ghidra function envelope.
Actual Ghidra function: Bounds_WriteCenterAndHalfDiagonalRadius
Paired annotated actual pseudocode: 0069D730_Bounds_WriteCenterAndHalfDiagonalRadius.c
Owned ranges: [[0069d730, 0069d789]]

GHIDRA LISTING (original bytes; non-owned alignment explicit)
0069d730  55  PUSH EBP
0069d731  8bec  MOV EBP,ESP
0069d733  83e4f0  AND ESP,0xfffffff0
0069d736  8b4508  MOV EAX,dword ptr [EBP + 0x8]
0069d739  0f286010  MOVAPS XMM4,xmmword ptr [EAX + 0x10]
0069d73d  0f2810  MOVAPS XMM2,xmmword ptr [EAX]
0069d740  f30f101db4b5f900  MOVSS XMM3,dword ptr [0x00f9b5b4]
0069d748  0f28c4  MOVAPS XMM0,XMM4
0069d74b  0f5cc2  SUBPS XMM0,XMM2
0069d74e  0f59c0  MULPS XMM0,XMM0
0069d751  0f28c8  MOVAPS XMM1,XMM0
0069d754  0fc6c102  SHUFPS XMM0,XMM1,0x2
0069d758  0f28e9  MOVAPS XMM5,XMM1
0069d75b  0fc6e901  SHUFPS XMM5,XMM1,0x1
0069d75f  0f58c5  ADDPS XMM0,XMM5
0069d762  0f58c1  ADDPS XMM0,XMM1
0069d765  0f58d4  ADDPS XMM2,XMM4
0069d768  0f28ca  MOVAPS XMM1,XMM2
0069d76b  0fc6c000  SHUFPS XMM0,XMM0,0x0
0069d76f  0f51c0  SQRTPS XMM0,XMM0
0069d772  0fc6c8fa  SHUFPS XMM1,XMM0,0xfa
0069d776  0fc6db00  SHUFPS XMM3,XMM3,0x0
0069d77a  0fc6d184  SHUFPS XMM2,XMM1,0x84
0069d77e  0f59d3  MULPS XMM2,XMM3
0069d781  0f2911  MOVAPS xmmword ptr [ECX],XMM2
0069d784  8be5  MOV ESP,EBP
0069d786  5d  POP EBP
0069d787  c20400  RET 0x4
Owned instructions=28 owned bytes=90 envelope bytes=90
