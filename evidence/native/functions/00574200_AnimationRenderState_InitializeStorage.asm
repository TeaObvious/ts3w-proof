# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Actual Ghidra function: AnimationRenderState_InitializeStorage
Paired annotated actual pseudocode: 00574200_AnimationRenderState_InitializeStorage.c
Owned ranges: [[00574200, 00574229]]

GHIDRA LISTING (original bytes)
00574200  8bc1  MOV EAX,ECX
00574202  33c9  XOR ECX,ECX
00574204  c700903dfc00  MOV dword ptr [EAX],0xfc3d90
0057420a  894810  MOV dword ptr [EAX + 0x10],ECX
0057420d  894818  MOV dword ptr [EAX + 0x18],ECX
00574210  894820  MOV dword ptr [EAX + 0x20],ECX
00574213  894824  MOV dword ptr [EAX + 0x24],ECX
00574216  894828  MOV dword ptr [EAX + 0x28],ECX
00574219  89482c  MOV dword ptr [EAX + 0x2c],ECX
0057421c  894830  MOV dword ptr [EAX + 0x30],ECX
0057421f  894834  MOV dword ptr [EAX + 0x34],ECX
00574222  0f57c0  XORPS XMM0,XMM0
00574225  0f294040  MOVAPS xmmword ptr [EAX + 0x40],XMM0
00574229  c3  RET
Owned instructions=14 owned bytes=42 envelope bytes=42
