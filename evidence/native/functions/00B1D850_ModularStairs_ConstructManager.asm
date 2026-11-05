# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: ModularStairs_ConstructManager
Paired actual annotated Ghidra pseudocode: 00B1D850_ModularStairs_ConstructManager.c
Owned ranges: [[00b1d850, 00b1d975]]
Envelope bytes=294

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00b1d850  8bc1  MOV EAX,ECX
00b1d852  c70028bf0601  MOV dword ptr [EAX],0x106bf28
00b1d858  f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
00b1d860  f30f100d88fd0301  MOVSS XMM1,dword ptr [0x0103fd88]
00b1d868  33c9  XOR ECX,ECX
00b1d86a  894804  MOV dword ptr [EAX + 0x4],ECX
00b1d86d  894808  MOV dword ptr [EAX + 0x8],ECX
00b1d870  89480c  MOV dword ptr [EAX + 0xc],ECX
00b1d873  894810  MOV dword ptr [EAX + 0x10],ECX
00b1d876  894814  MOV dword ptr [EAX + 0x14],ECX
00b1d879  894818  MOV dword ptr [EAX + 0x18],ECX
00b1d87c  f30f11402c  MOVSS dword ptr [EAX + 0x2c],XMM0
00b1d881  f30f114830  MOVSS dword ptr [EAX + 0x30],XMM1
00b1d886  c7403888c00601  MOV dword ptr [EAX + 0x38],0x106c088
00b1d88d  894828  MOV dword ptr [EAX + 0x28],ECX
00b1d890  894834  MOV dword ptr [EAX + 0x34],ECX
00b1d893  ba00d91401  MOV EDX,0x114d900
00b1d898  895020  MOV dword ptr [EAX + 0x20],EDX
00b1d89b  56  PUSH ESI
00b1d89c  be01000000  MOV ESI,0x1
00b1d8a1  897024  MOV dword ptr [EAX + 0x24],ESI
00b1d8a4  f30f11404c  MOVSS dword ptr [EAX + 0x4c],XMM0
00b1d8a9  f30f114850  MOVSS dword ptr [EAX + 0x50],XMM1
00b1d8ae  c7405858c00601  MOV dword ptr [EAX + 0x58],0x106c058
00b1d8b5  897044  MOV dword ptr [EAX + 0x44],ESI
00b1d8b8  895040  MOV dword ptr [EAX + 0x40],EDX
00b1d8bb  894848  MOV dword ptr [EAX + 0x48],ECX
00b1d8be  894854  MOV dword ptr [EAX + 0x54],ECX
00b1d8c1  f30f11406c  MOVSS dword ptr [EAX + 0x6c],XMM0
00b1d8c6  f30f114870  MOVSS dword ptr [EAX + 0x70],XMM1
00b1d8cb  c7407820c00601  MOV dword ptr [EAX + 0x78],0x106c020
00b1d8d2  897064  MOV dword ptr [EAX + 0x64],ESI
00b1d8d5  895060  MOV dword ptr [EAX + 0x60],EDX
00b1d8d8  894868  MOV dword ptr [EAX + 0x68],ECX
00b1d8db  894874  MOV dword ptr [EAX + 0x74],ECX
00b1d8de  f30f11808c000000  MOVSS dword ptr [EAX + 0x8c],XMM0
00b1d8e6  f30f118890000000  MOVSS dword ptr [EAX + 0x90],XMM1
00b1d8ee  c78098000000e4bf0601  MOV dword ptr [EAX + 0x98],0x106bfe4
00b1d8f8  89b084000000  MOV dword ptr [EAX + 0x84],ESI
00b1d8fe  899080000000  MOV dword ptr [EAX + 0x80],EDX
00b1d904  898888000000  MOV dword ptr [EAX + 0x88],ECX
00b1d90a  898894000000  MOV dword ptr [EAX + 0x94],ECX
00b1d910  f30f1180ac000000  MOVSS dword ptr [EAX + 0xac],XMM0
00b1d918  f30f1188b0000000  MOVSS dword ptr [EAX + 0xb0],XMM1
00b1d920  c780b8000000a4bf0601  MOV dword ptr [EAX + 0xb8],0x106bfa4
00b1d92a  89b0a4000000  MOV dword ptr [EAX + 0xa4],ESI
00b1d930  8990a0000000  MOV dword ptr [EAX + 0xa0],EDX
00b1d936  8988a8000000  MOV dword ptr [EAX + 0xa8],ECX
00b1d93c  8988b4000000  MOV dword ptr [EAX + 0xb4],ECX
00b1d942  f30f1180cc000000  MOVSS dword ptr [EAX + 0xcc],XMM0
00b1d94a  f30f1188d0000000  MOVSS dword ptr [EAX + 0xd0],XMM1
00b1d952  c780d800000074bf0601  MOV dword ptr [EAX + 0xd8],0x106bf74
00b1d95c  89b0c4000000  MOV dword ptr [EAX + 0xc4],ESI
00b1d962  8990c0000000  MOV dword ptr [EAX + 0xc0],EDX
00b1d968  8988c8000000  MOV dword ptr [EAX + 0xc8],ECX
00b1d96e  8988d4000000  MOV dword ptr [EAX + 0xd4],ECX
00b1d974  5e  POP ESI
00b1d975  c3  RET
Owned instructions=58 owned bytes=294 gap/nonowned bytes=0
