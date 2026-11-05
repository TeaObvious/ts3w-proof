# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: Camera_SetHorizontalFieldOfViewDegrees
Paired actual annotated Ghidra pseudocode: 00960E30_Camera_SetHorizontalFieldOfViewDegrees.c
Owned ranges: [[00960e30, 00960eea]]
Envelope bytes=187

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00960e30  55  PUSH EBP
00960e31  8bec  MOV EBP,ESP
00960e33  83e4f0  AND ESP,0xfffffff0
00960e36  83ec20  SUB ESP,0x20
00960e39  f30f100d145b0401  MOVSS XMM1,dword ptr [0x01045b14]
00960e41  f30f104508  MOVSS XMM0,dword ptr [EBP + 0x8]
00960e46  f30f1015b4b5f900  MOVSS XMM2,dword ptr [0x00f9b5b4]
00960e4e  0fc6c000  SHUFPS XMM0,XMM0,0x0
00960e52  0fc6c900  SHUFPS XMM1,XMM1,0x0
00960e56  0f59c1  MULPS XMM0,XMM1
00960e59  f30f10ca  MOVSS XMM1,XMM2
00960e5d  0fc6c900  SHUFPS XMM1,XMM1,0x0
00960e61  0f59c1  MULPS XMM0,XMM1
00960e64  0f29442410  MOVAPS xmmword ptr [ESP + 0x10],XMM0
00960e69  d9442410  FLD float ptr [ESP + 0x10]
00960e6d  f30f100d88fd0301  MOVSS XMM1,dword ptr [0x0103fd88]
00960e75  d9f2  FPTAN
00960e77  0fc6c900  SHUFPS XMM1,XMM1,0x0
00960e7b  ddd8  FSTP ST0
00960e7d  d95c240c  FSTP float ptr [ESP + 0xc]
00960e81  f30f1044240c  MOVSS XMM0,dword ptr [ESP + 0xc]
00960e87  0fc6c000  SHUFPS XMM0,XMM0,0x0
00960e8b  0f59c1  MULPS XMM0,XMM1
00960e8e  0f29442410  MOVAPS xmmword ptr [ESP + 0x10],XMM0
00960e93  f30f10442410  MOVSS XMM0,dword ptr [ESP + 0x10]
00960e99  f30f11410c  MOVSS dword ptr [ECX + 0xc],XMM0
00960e9e  0f28d8  MOVAPS XMM3,XMM0
00960ea1  f30f59c2  MULSS XMM0,XMM2
00960ea5  f30f10c0  MOVSS XMM0,XMM0
00960ea9  0fc6c000  SHUFPS XMM0,XMM0,0x0
00960ead  0f29442410  MOVAPS xmmword ptr [ESP + 0x10],XMM0
00960eb2  d9442410  FLD float ptr [ESP + 0x10]
00960eb6  f30f5e5918  DIVSS XMM3,dword ptr [ECX + 0x18]
00960ebb  d9e8  FLD1
00960ebd  f30f115910  MOVSS dword ptr [ECX + 0x10],XMM3
00960ec2  d9f3  FPATAN
00960ec4  d95c240c  FSTP float ptr [ESP + 0xc]
00960ec8  f30f1044240c  MOVSS XMM0,dword ptr [ESP + 0xc]
00960ece  0fc6c000  SHUFPS XMM0,XMM0,0x0
00960ed2  0f59c1  MULPS XMM0,XMM1
00960ed5  0f29442410  MOVAPS xmmword ptr [ESP + 0x10],XMM0
00960eda  f30f10442410  MOVSS XMM0,dword ptr [ESP + 0x10]
00960ee0  f30f114114  MOVSS dword ptr [ECX + 0x14],XMM0
00960ee5  8be5  MOV ESP,EBP
00960ee7  5d  POP EBP
00960ee8  c20400  RET 0x4
Owned instructions=46 owned bytes=187 gap/nonowned bytes=0
