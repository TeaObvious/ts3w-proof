# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; full owned Ghidra Listing.
Actual annotated Ghidra C: 0053D9E0_StaticRotate_Initialize.c
Owned ranges: [[0053d9e0, 0053da47]]

0053d9e0  55  PUSH EBP
0053d9e1  8bec  MOV EBP,ESP
0053d9e3  83e4f0  AND ESP,0xfffffff0
0053d9e6  83ec1c  SUB ESP,0x1c
0053d9e9  0f57c0  XORPS XMM0,XMM0
0053d9ec  f30f100df898f900  MOVSS XMM1,dword ptr [0x00f998f8]
0053d9f4  56  PUSH ESI
0053d9f5  8bf1  MOV ESI,ECX
0053d9f7  c74604fcb1fb00  MOV dword ptr [ESI + 0x4],0xfbb1fc
0053d9fe  33c0  XOR EAX,EAX
0053da00  f30f1144241c  MOVSS dword ptr [ESP + 0x1c],XMM0
0053da06  f30f11442418  MOVSS dword ptr [ESP + 0x18],XMM0
0053da0c  f30f114c2414  MOVSS dword ptr [ESP + 0x14],XMM1
0053da12  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
0053da18  0f284c2410  MOVAPS XMM1,xmmword ptr [ESP + 0x10]
0053da1d  894608  MOV dword ptr [ESI + 0x8],EAX
0053da20  88460c  MOV byte ptr [ESI + 0xc],AL
0053da23  c7064006fc00  MOV dword ptr [ESI],0xfc0640
0053da29  c746042806fc00  MOV dword ptr [ESI + 0x4],0xfc0628
0053da30  0f294e10  MOVAPS xmmword ptr [ESI + 0x10],XMM1
0053da34  8d4e24  LEA ECX,[ESI + 0x24]
0053da37  f30f114620  MOVSS dword ptr [ESI + 0x20],XMM0
0053da3c  e8cffdffff  CALL 0x0053d810
0053da41  8bc6  MOV EAX,ESI
0053da43  5e  POP ESI
0053da44  8be5  MOV ESP,EBP
0053da46  5d  POP EBP
0053da47  c3  RET
