# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; full owned Ghidra Listing.
Actual annotated Ghidra C: 005129F0_UiTransform_SetTranslationScale.c
Owned ranges: [[005129f0, 00512adf]]

005129f0  55  PUSH EBP
005129f1  8bec  MOV EBP,ESP
005129f3  83e4f0  AND ESP,0xfffffff0
005129f6  83ec40  SUB ESP,0x40
005129f9  8b450c  MOV EAX,dword ptr [EBP + 0xc]
005129fc  c7414001000000  MOV dword ptr [ECX + 0x40],0x1
00512a03  0f2800  MOVAPS XMM0,xmmword ptr [EAX]
00512a06  0f29442410  MOVAPS xmmword ptr [ESP + 0x10],XMM0
00512a0b  0f57c0  XORPS XMM0,XMM0
00512a0e  f30f104c2410  MOVSS XMM1,dword ptr [ESP + 0x10]
00512a14  f30f1144240c  MOVSS dword ptr [ESP + 0xc],XMM0
00512a1a  f30f11442408  MOVSS dword ptr [ESP + 0x8],XMM0
00512a20  f30f11442404  MOVSS dword ptr [ESP + 0x4],XMM0
00512a26  f30f110c24  MOVSS dword ptr [ESP],XMM1
00512a2b  0f280c24  MOVAPS XMM1,xmmword ptr [ESP]
00512a2f  0f2909  MOVAPS xmmword ptr [ECX],XMM1
00512a32  0f2808  MOVAPS XMM1,xmmword ptr [EAX]
00512a35  f30f1144240c  MOVSS dword ptr [ESP + 0xc],XMM0
00512a3b  f30f11442408  MOVSS dword ptr [ESP + 0x8],XMM0
00512a41  f30f110424  MOVSS dword ptr [ESP],XMM0
00512a46  0f294c2410  MOVAPS xmmword ptr [ESP + 0x10],XMM1
00512a4b  f30f104c2414  MOVSS XMM1,dword ptr [ESP + 0x14]
00512a51  f30f114c2404  MOVSS dword ptr [ESP + 0x4],XMM1
00512a57  0f280c24  MOVAPS XMM1,xmmword ptr [ESP]
00512a5b  0f294910  MOVAPS xmmword ptr [ECX + 0x10],XMM1
00512a5f  0f2808  MOVAPS XMM1,xmmword ptr [EAX]
00512a62  8b4508  MOV EAX,dword ptr [EBP + 0x8]
00512a65  f30f1144240c  MOVSS dword ptr [ESP + 0xc],XMM0
00512a6b  f30f11442404  MOVSS dword ptr [ESP + 0x4],XMM0
00512a71  f30f110424  MOVSS dword ptr [ESP],XMM0
00512a76  0f294c2410  MOVAPS xmmword ptr [ESP + 0x10],XMM1
00512a7b  f30f104c2418  MOVSS XMM1,dword ptr [ESP + 0x18]
00512a81  f30f114c2408  MOVSS dword ptr [ESP + 0x8],XMM1
00512a87  0f280424  MOVAPS XMM0,xmmword ptr [ESP]
00512a8b  0f294120  MOVAPS xmmword ptr [ECX + 0x20],XMM0
00512a8f  0f2800  MOVAPS XMM0,xmmword ptr [EAX]
00512a92  0f29442410  MOVAPS xmmword ptr [ESP + 0x10],XMM0
00512a97  0f29442420  MOVAPS xmmword ptr [ESP + 0x20],XMM0
00512a9c  0f29442430  MOVAPS xmmword ptr [ESP + 0x30],XMM0
00512aa1  f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
00512aa9  f30f1144240c  MOVSS dword ptr [ESP + 0xc],XMM0
00512aaf  f30f10442418  MOVSS XMM0,dword ptr [ESP + 0x18]
00512ab5  f30f11442408  MOVSS dword ptr [ESP + 0x8],XMM0
00512abb  f30f10442424  MOVSS XMM0,dword ptr [ESP + 0x24]
00512ac1  f30f11442404  MOVSS dword ptr [ESP + 0x4],XMM0
00512ac7  f30f10442430  MOVSS XMM0,dword ptr [ESP + 0x30]
00512acd  f30f110424  MOVSS dword ptr [ESP],XMM0
00512ad2  0f280424  MOVAPS XMM0,xmmword ptr [ESP]
00512ad6  0f294130  MOVAPS xmmword ptr [ECX + 0x30],XMM0
00512ada  8be5  MOV ESP,EBP
00512adc  5d  POP EBP
00512add  c20800  RET 0x8
