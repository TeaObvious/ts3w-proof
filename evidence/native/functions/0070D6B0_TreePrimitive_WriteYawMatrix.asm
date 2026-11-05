# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined TreePrimitive_WriteYawMatrix(void * this, undefined4 * param_1)
Owned ranges: [[0070d6b0, 0070d755]]

0070d6b0  55  PUSH EBP
0070d6b1  8bec  MOV EBP,ESP
0070d6b3  83e4f0  AND ESP,0xfffffff0
0070d6b6  83ec20  SUB ESP,0x20
0070d6b9  0f2801  MOVAPS XMM0,xmmword ptr [ECX]
0070d6bc  f30f105144  MOVSS XMM2,dword ptr [ECX + 0x44]
0070d6c1  f30f105940  MOVSS XMM3,dword ptr [ECX + 0x40]
0070d6c6  8b4508  MOV EAX,dword ptr [EBP + 0x8]
0070d6c9  f30f100df098f900  MOVSS XMM1,dword ptr [0x00f998f0]
0070d6d1  f30f1025f898f900  MOVSS XMM4,dword ptr [0x00f998f8]
0070d6d9  0f29442410  MOVAPS xmmword ptr [ESP + 0x10],XMM0
0070d6de  0f57c0  XORPS XMM0,XMM0
0070d6e1  f30f1144240c  MOVSS dword ptr [ESP + 0xc],XMM0
0070d6e7  f30f11442404  MOVSS dword ptr [ESP + 0x4],XMM0
0070d6ed  f30f11542408  MOVSS dword ptr [ESP + 0x8],XMM2
0070d6f3  f30f111c24  MOVSS dword ptr [ESP],XMM3
0070d6f8  f30f5cca  SUBSS XMM1,XMM2
0070d6fc  0f281424  MOVAPS XMM2,xmmword ptr [ESP]
0070d700  f30f1144240c  MOVSS dword ptr [ESP + 0xc],XMM0
0070d706  f30f11442408  MOVSS dword ptr [ESP + 0x8],XMM0
0070d70c  f30f110424  MOVSS dword ptr [ESP],XMM0
0070d711  0f2910  MOVAPS xmmword ptr [EAX],XMM2
0070d714  f30f11642404  MOVSS dword ptr [ESP + 0x4],XMM4
0070d71a  0f281424  MOVAPS XMM2,xmmword ptr [ESP]
0070d71e  f30f1144240c  MOVSS dword ptr [ESP + 0xc],XMM0
0070d724  f30f11442404  MOVSS dword ptr [ESP + 0x4],XMM0
0070d72a  f30f115c2408  MOVSS dword ptr [ESP + 0x8],XMM3
0070d730  f30f110c24  MOVSS dword ptr [ESP],XMM1
0070d735  0f280424  MOVAPS XMM0,xmmword ptr [ESP]
0070d739  0f295010  MOVAPS xmmword ptr [EAX + 0x10],XMM2
0070d73d  0f294020  MOVAPS xmmword ptr [EAX + 0x20],XMM0
0070d741  f30f1164241c  MOVSS dword ptr [ESP + 0x1c],XMM4
0070d747  0f28442410  MOVAPS XMM0,xmmword ptr [ESP + 0x10]
0070d74c  0f294030  MOVAPS xmmword ptr [EAX + 0x30],XMM0
0070d750  8be5  MOV ESP,EBP
0070d752  5d  POP EBP
0070d753  c20400  RET 0x4
