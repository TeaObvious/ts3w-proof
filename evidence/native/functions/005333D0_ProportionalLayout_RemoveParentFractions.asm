# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 005333D0_ProportionalLayout_RemoveParentFractions.c
Owned ranges: [[005333d0, 0053344c]]

005333d0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
005333d4  8b542408  MOV EDX,dword ptr [ESP + 0x8]
005333d8  f30f104008  MOVSS XMM0,dword ptr [EAX + 0x8]
005333dd  f30f5c00  SUBSS XMM0,dword ptr [EAX]
005333e1  f30f594104  MULSS XMM0,dword ptr [ECX + 0x4]
005333e6  f30f100a  MOVSS XMM1,dword ptr [EDX]
005333ea  f30f5cc8  SUBSS XMM1,XMM0
005333ee  f30f110a  MOVSS dword ptr [EDX],XMM1
005333f2  f30f104008  MOVSS XMM0,dword ptr [EAX + 0x8]
005333f7  f30f5c00  SUBSS XMM0,dword ptr [EAX]
005333fb  f30f59410c  MULSS XMM0,dword ptr [ECX + 0xc]
00533400  f30f104a08  MOVSS XMM1,dword ptr [EDX + 0x8]
00533405  f30f5cc8  SUBSS XMM1,XMM0
00533409  f30f114a08  MOVSS dword ptr [EDX + 0x8],XMM1
0053340e  f30f10400c  MOVSS XMM0,dword ptr [EAX + 0xc]
00533413  f30f5c4004  SUBSS XMM0,dword ptr [EAX + 0x4]
00533418  f30f594108  MULSS XMM0,dword ptr [ECX + 0x8]
0053341d  f30f104a04  MOVSS XMM1,dword ptr [EDX + 0x4]
00533422  f30f5cc8  SUBSS XMM1,XMM0
00533426  f30f114a04  MOVSS dword ptr [EDX + 0x4],XMM1
0053342b  f30f10400c  MOVSS XMM0,dword ptr [EAX + 0xc]
00533430  f30f5c4004  SUBSS XMM0,dword ptr [EAX + 0x4]
00533435  f30f594110  MULSS XMM0,dword ptr [ECX + 0x10]
0053343a  f30f104a0c  MOVSS XMM1,dword ptr [EDX + 0xc]
0053343f  f30f5cc8  SUBSS XMM1,XMM0
00533443  f30f114a0c  MOVSS dword ptr [EDX + 0xc],XMM1
00533448  b001  MOV AL,0x1
0053344a  c20800  RET 0x8
