# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined TreeTemplate_ConstructDefault(undefined4 * param_1)
Owned ranges: [[007b76a0, 007b7768]]

007b76a0  55  PUSH EBP
007b76a1  8bec  MOV EBP,ESP
007b76a3  83e4f0  AND ESP,0xfffffff0
007b76a6  83ec10  SUB ESP,0x10
007b76a9  8bc1  MOV EAX,ECX
007b76ab  c700c0cffe00  MOV dword ptr [EAX],0xfecfc0
007b76b1  c74008143cfb00  MOV dword ptr [EAX + 0x8],0xfb3c14
007b76b8  33c9  XOR ECX,ECX
007b76ba  8d500c  LEA EDX,[EAX + 0xc]
007b76bd  870a  XCHG dword ptr [EDX],ECX
007b76bf  f30f100518b2fa00  MOVSS XMM0,dword ptr [0x00fab218]
007b76c7  33c9  XOR ECX,ECX
007b76c9  894810  MOV dword ptr [EAX + 0x10],ECX
007b76cc  894814  MOV dword ptr [EAX + 0x14],ECX
007b76cf  894818  MOV dword ptr [EAX + 0x18],ECX
007b76d2  89481c  MOV dword ptr [EAX + 0x1c],ECX
007b76d5  c740085841fc00  MOV dword ptr [EAX + 0x8],0xfc4158
007b76dc  894828  MOV dword ptr [EAX + 0x28],ECX
007b76df  89482c  MOV dword ptr [EAX + 0x2c],ECX
007b76e2  894824  MOV dword ptr [EAX + 0x24],ECX
007b76e5  894820  MOV dword ptr [EAX + 0x20],ECX
007b76e8  c7008c720101  MOV dword ptr [EAX],0x101728c
007b76ee  c7400874720101  MOV dword ptr [EAX + 0x8],0x1017274
007b76f5  f30f1144240c  MOVSS dword ptr [ESP + 0xc],XMM0
007b76fb  f30f11442408  MOVSS dword ptr [ESP + 0x8],XMM0
007b7701  f30f11442404  MOVSS dword ptr [ESP + 0x4],XMM0
007b7707  f30f110424  MOVSS dword ptr [ESP],XMM0
007b770c  0f280424  MOVAPS XMM0,xmmword ptr [ESP]
007b7710  0f294030  MOVAPS xmmword ptr [EAX + 0x30],XMM0
007b7714  f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
007b771c  f30f1144240c  MOVSS dword ptr [ESP + 0xc],XMM0
007b7722  f30f11442408  MOVSS dword ptr [ESP + 0x8],XMM0
007b7728  f30f11442404  MOVSS dword ptr [ESP + 0x4],XMM0
007b772e  f30f110424  MOVSS dword ptr [ESP],XMM0
007b7733  0f280c24  MOVAPS XMM1,xmmword ptr [ESP]
007b7737  0f294840  MOVAPS xmmword ptr [EAX + 0x40],XMM1
007b773b  0f57c9  XORPS XMM1,XMM1
007b773e  f30f114050  MOVSS dword ptr [EAX + 0x50],XMM0
007b7743  f30f114854  MOVSS dword ptr [EAX + 0x54],XMM1
007b7748  f30f114858  MOVSS dword ptr [EAX + 0x58],XMM1
007b774d  f30f11405c  MOVSS dword ptr [EAX + 0x5c],XMM0
007b7752  894860  MOV dword ptr [EAX + 0x60],ECX
007b7755  894864  MOV dword ptr [EAX + 0x64],ECX
007b7758  894868  MOV dword ptr [EAX + 0x68],ECX
007b775b  89486c  MOV dword ptr [EAX + 0x6c],ECX
007b775e  c740709c720101  MOV dword ptr [EAX + 0x70],0x101729c
007b7765  8be5  MOV ESP,EBP
007b7767  5d  POP EBP
007b7768  c3  RET
