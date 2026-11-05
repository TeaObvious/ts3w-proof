# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; full owned Ghidra Listing.
Actual annotated Ghidra C: 00511F20_UiTransform_SetIdentity.c
Owned ranges: [[00511f20, 00511fb9]]

00511f20  55  PUSH EBP
00511f21  8bec  MOV EBP,ESP
00511f23  83e4f0  AND ESP,0xfffffff0
00511f26  83ec10  SUB ESP,0x10
00511f29  0f57c0  XORPS XMM0,XMM0
00511f2c  f30f100df898f900  MOVSS XMM1,dword ptr [0x00f998f8]
00511f34  f30f1144240c  MOVSS dword ptr [ESP + 0xc],XMM0
00511f3a  f30f11442408  MOVSS dword ptr [ESP + 0x8],XMM0
00511f40  f30f11442404  MOVSS dword ptr [ESP + 0x4],XMM0
00511f46  f30f110c24  MOVSS dword ptr [ESP],XMM1
00511f4b  0f281424  MOVAPS XMM2,xmmword ptr [ESP]
00511f4f  f30f1144240c  MOVSS dword ptr [ESP + 0xc],XMM0
00511f55  f30f11442408  MOVSS dword ptr [ESP + 0x8],XMM0
00511f5b  f30f114c2404  MOVSS dword ptr [ESP + 0x4],XMM1
00511f61  f30f110424  MOVSS dword ptr [ESP],XMM0
00511f66  0f2911  MOVAPS xmmword ptr [ECX],XMM2
00511f69  0f281424  MOVAPS XMM2,xmmword ptr [ESP]
00511f6d  f30f1144240c  MOVSS dword ptr [ESP + 0xc],XMM0
00511f73  f30f114c2408  MOVSS dword ptr [ESP + 0x8],XMM1
00511f79  f30f11442404  MOVSS dword ptr [ESP + 0x4],XMM0
00511f7f  f30f110424  MOVSS dword ptr [ESP],XMM0
00511f84  0f295110  MOVAPS xmmword ptr [ECX + 0x10],XMM2
00511f88  0f281424  MOVAPS XMM2,xmmword ptr [ESP]
00511f8c  f30f114c240c  MOVSS dword ptr [ESP + 0xc],XMM1
00511f92  f30f11442408  MOVSS dword ptr [ESP + 0x8],XMM0
00511f98  f30f11442404  MOVSS dword ptr [ESP + 0x4],XMM0
00511f9e  f30f110424  MOVSS dword ptr [ESP],XMM0
00511fa3  0f280424  MOVAPS XMM0,xmmword ptr [ESP]
00511fa7  c7414000000000  MOV dword ptr [ECX + 0x40],0x0
00511fae  0f295120  MOVAPS xmmword ptr [ECX + 0x20],XMM2
00511fb2  0f294130  MOVAPS xmmword ptr [ECX + 0x30],XMM0
00511fb6  8be5  MOV ESP,EBP
00511fb8  5d  POP EBP
00511fb9  c3  RET
