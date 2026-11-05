# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: pointer TerrainSculptUndoable_Initialize(void * this, pointer lot)
Owned ranges: [[00d2c130, 00d2c24c]]

00d2c130  56  PUSH ESI
00d2c131  57  PUSH EDI
00d2c132  8b7c240c  MOV EDI,dword ptr [ESP + 0xc]
00d2c136  57  PUSH EDI
00d2c137  8bf1  MOV ESI,ECX
00d2c139  e8d256ffff  CALL 0x00d21810
00d2c13e  f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
00d2c146  f30f100d88fd0301  MOVSS XMM1,dword ptr [0x0103fd88]
00d2c14e  89beb0000000  MOV dword ptr [ESI + 0xb0],EDI
00d2c154  c70698740801  MOV dword ptr [ESI],0x1087498
00d2c15a  c746088c700801  MOV dword ptr [ESI + 0x8],0x108708c
00d2c161  f30f1186c8000000  MOVSS dword ptr [ESI + 0xc8],XMM0
00d2c169  f30f118ecc000000  MOVSS dword ptr [ESI + 0xcc],XMM1
00d2c171  c786d400000068740801  MOV dword ptr [ESI + 0xd4],0x1087468
00d2c17b  33c0  XOR EAX,EAX
00d2c17d  8986c4000000  MOV dword ptr [ESI + 0xc4],EAX
00d2c183  8986d0000000  MOV dword ptr [ESI + 0xd0],EAX
00d2c189  b900d91401  MOV ECX,0x114d900
00d2c18e  898ebc000000  MOV dword ptr [ESI + 0xbc],ECX
00d2c194  ba01000000  MOV EDX,0x1
00d2c199  8996c0000000  MOV dword ptr [ESI + 0xc0],EDX
00d2c19f  f30f1186e8000000  MOVSS dword ptr [ESI + 0xe8],XMM0
00d2c1a7  f30f118eec000000  MOVSS dword ptr [ESI + 0xec],XMM1
00d2c1af  c786f400000034740801  MOV dword ptr [ESI + 0xf4],0x1087434
00d2c1b9  8996e0000000  MOV dword ptr [ESI + 0xe0],EDX
00d2c1bf  898edc000000  MOV dword ptr [ESI + 0xdc],ECX
00d2c1c5  8986e4000000  MOV dword ptr [ESI + 0xe4],EAX
00d2c1cb  8986f0000000  MOV dword ptr [ESI + 0xf0],EAX
00d2c1d1  f30f118608010000  MOVSS dword ptr [ESI + 0x108],XMM0
00d2c1d9  0f57c0  XORPS XMM0,XMM0
00d2c1dc  f30f11860c010000  MOVSS dword ptr [ESI + 0x10c],XMM0
00d2c1e4  f30f118610010000  MOVSS dword ptr [ESI + 0x110],XMM0
00d2c1ec  898614010000  MOV dword ptr [ESI + 0x114],EAX
00d2c1f2  898618010000  MOV dword ptr [ESI + 0x118],EAX
00d2c1f8  89861c010000  MOV dword ptr [ESI + 0x11c],EAX
00d2c1fe  c78620010000fc730801  MOV dword ptr [ESI + 0x120],0x10873fc
00d2c208  8b8f94020000  MOV ECX,dword ptr [EDI + 0x294]
00d2c20e  898eb4000000  MOV dword ptr [ESI + 0xb4],ECX
00d2c214  8b8eb0000000  MOV ECX,dword ptr [ESI + 0xb0]
00d2c21a  3bc8  CMP ECX,EAX
00d2c21c  7428  JZ 0x00d2c246
00d2c21e  8996f8000000  MOV dword ptr [ESI + 0xf8],EDX
00d2c224  8996fc000000  MOV dword ptr [ESI + 0xfc],EDX
00d2c22a  8b8174010000  MOV EAX,dword ptr [ECX + 0x174]
00d2c230  2bc2  SUB EAX,EDX
00d2c232  898600010000  MOV dword ptr [ESI + 0x100],EAX
00d2c238  8b8978010000  MOV ECX,dword ptr [ECX + 0x178]
00d2c23e  2bca  SUB ECX,EDX
00d2c240  898e04010000  MOV dword ptr [ESI + 0x104],ECX
00d2c246  5f  POP EDI
00d2c247  8bc6  MOV EAX,ESI
00d2c249  5e  POP ESI
00d2c24a  c20400  RET 0x4
