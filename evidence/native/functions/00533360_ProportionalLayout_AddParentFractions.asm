# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 00533360_ProportionalLayout_AddParentFractions.c
Owned ranges: [[00533360, 005333ca]]

00533360  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00533364  8b542408  MOV EDX,dword ptr [ESP + 0x8]
00533368  f30f104008  MOVSS XMM0,dword ptr [EAX + 0x8]
0053336d  f30f5c00  SUBSS XMM0,dword ptr [EAX]
00533371  f30f594104  MULSS XMM0,dword ptr [ECX + 0x4]
00533376  f30f5802  ADDSS XMM0,dword ptr [EDX]
0053337a  f30f1102  MOVSS dword ptr [EDX],XMM0
0053337e  f30f104008  MOVSS XMM0,dword ptr [EAX + 0x8]
00533383  f30f5c00  SUBSS XMM0,dword ptr [EAX]
00533387  f30f59410c  MULSS XMM0,dword ptr [ECX + 0xc]
0053338c  f30f584208  ADDSS XMM0,dword ptr [EDX + 0x8]
00533391  f30f114208  MOVSS dword ptr [EDX + 0x8],XMM0
00533396  f30f10400c  MOVSS XMM0,dword ptr [EAX + 0xc]
0053339b  f30f5c4004  SUBSS XMM0,dword ptr [EAX + 0x4]
005333a0  f30f594108  MULSS XMM0,dword ptr [ECX + 0x8]
005333a5  f30f584204  ADDSS XMM0,dword ptr [EDX + 0x4]
005333aa  f30f114204  MOVSS dword ptr [EDX + 0x4],XMM0
005333af  f30f10400c  MOVSS XMM0,dword ptr [EAX + 0xc]
005333b4  f30f5c4004  SUBSS XMM0,dword ptr [EAX + 0x4]
005333b9  f30f594110  MULSS XMM0,dword ptr [ECX + 0x10]
005333be  f30f58420c  ADDSS XMM0,dword ptr [EDX + 0xc]
005333c3  f30f11420c  MOVSS dword ptr [EDX + 0xc],XMM0
005333c8  c20800  RET 0x8
