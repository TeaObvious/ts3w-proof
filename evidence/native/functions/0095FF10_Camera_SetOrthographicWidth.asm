# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: Camera_SetOrthographicWidth
Paired actual annotated Ghidra pseudocode: 0095FF10_Camera_SetOrthographicWidth.c
Owned ranges: [[0095ff10, 0095ff7f]]
Envelope bytes=112

GHIDRA LISTING (original bytes; nonowned alignment explicit)
0095ff10  55  PUSH EBP
0095ff11  8bec  MOV EBP,ESP
0095ff13  83e4f0  AND ESP,0xfffffff0
0095ff16  83ec20  SUB ESP,0x20
0095ff19  f30f104508  MOVSS XMM0,dword ptr [EBP + 0x8]
0095ff1e  0f28c8  MOVAPS XMM1,XMM0
0095ff21  f30f11410c  MOVSS dword ptr [ECX + 0xc],XMM0
0095ff26  f30f5905b4b5f900  MULSS XMM0,dword ptr [0x00f9b5b4]
0095ff2e  f30f10c0  MOVSS XMM0,XMM0
0095ff32  0fc6c000  SHUFPS XMM0,XMM0,0x0
0095ff36  0f29442410  MOVAPS xmmword ptr [ESP + 0x10],XMM0
0095ff3b  d9442410  FLD float ptr [ESP + 0x10]
0095ff3f  f30f5e4918  DIVSS XMM1,dword ptr [ECX + 0x18]
0095ff44  d9e8  FLD1
0095ff46  f30f114910  MOVSS dword ptr [ECX + 0x10],XMM1
0095ff4b  d9f3  FPATAN
0095ff4d  f30f100d88fd0301  MOVSS XMM1,dword ptr [0x0103fd88]
0095ff55  0fc6c900  SHUFPS XMM1,XMM1,0x0
0095ff59  d95c240c  FSTP float ptr [ESP + 0xc]
0095ff5d  f30f1044240c  MOVSS XMM0,dword ptr [ESP + 0xc]
0095ff63  0fc6c000  SHUFPS XMM0,XMM0,0x0
0095ff67  0f59c1  MULPS XMM0,XMM1
0095ff6a  0f29442410  MOVAPS xmmword ptr [ESP + 0x10],XMM0
0095ff6f  f30f10442410  MOVSS XMM0,dword ptr [ESP + 0x10]
0095ff75  f30f114114  MOVSS dword ptr [ECX + 0x14],XMM0
0095ff7a  8be5  MOV ESP,EBP
0095ff7c  5d  POP EBP
0095ff7d  c20400  RET 0x4
Owned instructions=28 owned bytes=112 gap/nonowned bytes=0
