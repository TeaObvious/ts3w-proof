# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 00C948D0_FenceProduct_Construct.c
Owned ranges: [[00c948d0, 00c949f1]]

00c948d0  53  PUSH EBX
00c948d1  56  PUSH ESI
00c948d2  8bf1  MOV ESI,ECX
00c948d4  e807500000  CALL 0x00c998e0
00c948d9  f30f1005a0cb0701  MOVSS XMM0,dword ptr [0x0107cba0]
00c948e1  33db  XOR EBX,EBX
00c948e3  c706c4cb0701  MOV dword ptr [ESI],0x107cbc4
00c948e9  899ea8000000  MOV dword ptr [ESI + 0xa8],EBX
00c948ef  899eac000000  MOV dword ptr [ESI + 0xac],EBX
00c948f5  899eb0000000  MOV dword ptr [ESI + 0xb0],EBX
00c948fb  899eb4000000  MOV dword ptr [ESI + 0xb4],EBX
00c94901  899eb8000000  MOV dword ptr [ESI + 0xb8],EBX
00c94907  899ebc000000  MOV dword ptr [ESI + 0xbc],EBX
00c9490d  899ec0000000  MOV dword ptr [ESI + 0xc0],EBX
00c94913  899ec4000000  MOV dword ptr [ESI + 0xc4],EBX
00c94919  899ec8000000  MOV dword ptr [ESI + 0xc8],EBX
00c9491f  899ecc000000  MOV dword ptr [ESI + 0xcc],EBX
00c94925  899ed0000000  MOV dword ptr [ESI + 0xd0],EBX
00c9492b  899ed4000000  MOV dword ptr [ESI + 0xd4],EBX
00c94931  899ed8000000  MOV dword ptr [ESI + 0xd8],EBX
00c94937  899edc000000  MOV dword ptr [ESI + 0xdc],EBX
00c9493d  899ee0000000  MOV dword ptr [ESI + 0xe0],EBX
00c94943  899ee4000000  MOV dword ptr [ESI + 0xe4],EBX
00c94949  f30f118654010000  MOVSS dword ptr [ESI + 0x154],XMM0
00c94951  f30f118658010000  MOVSS dword ptr [ESI + 0x158],XMM0
00c94959  0f57c0  XORPS XMM0,XMM0
00c9495c  c786e800000001000000  MOV dword ptr [ESI + 0xe8],0x1
00c94966  889e50010000  MOV byte ptr [ESI + 0x150],BL
00c9496c  889e51010000  MOV byte ptr [ESI + 0x151],BL
00c94972  c6865201000001  MOV byte ptr [ESI + 0x152],0x1
00c94979  889e53010000  MOV byte ptr [ESI + 0x153],BL
00c9497f  f30f11865c010000  MOVSS dword ptr [ESI + 0x15c],XMM0
00c94987  f30f118660010000  MOVSS dword ptr [ESI + 0x160],XMM0
00c9498f  899e64010000  MOV dword ptr [ESI + 0x164],EBX
00c94995  899e68010000  MOV dword ptr [ESI + 0x168],EBX
00c9499b  899e6c010000  MOV dword ptr [ESI + 0x16c],EBX
00c949a1  6a01  PUSH 0x1
00c949a3  8bce  MOV ECX,ESI
00c949a5  c78670010000a8cb0701  MOV dword ptr [ESI + 0x170],0x107cba8
00c949af  e81c4d0000  CALL 0x00c996d0
00c949b4  53  PUSH EBX
00c949b5  8bce  MOV ECX,ESI
00c949b7  e8244d0000  CALL 0x00c996e0
00c949bc  6a0b  PUSH 0xb
00c949be  8bce  MOV ECX,ESI
00c949c0  e82b4d0000  CALL 0x00c996f0
00c949c5  8b8690000000  MOV EAX,dword ptr [ESI + 0x90]
00c949cb  25c2f9feff  AND EAX,0xfffef9c2
00c949d0  0d82090000  OR EAX,0x982
00c949d5  6a03  PUSH 0x3
00c949d7  8bce  MOV ECX,ESI
00c949d9  898690000000  MOV dword ptr [ESI + 0x90],EAX
00c949df  e8acf087ff  CALL 0x00513a90
00c949e4  6a01  PUSH 0x1
00c949e6  8bce  MOV ECX,ESI
00c949e8  e8234d0000  CALL 0x00c99710
00c949ed  8bc6  MOV EAX,ESI
00c949ef  5e  POP ESI
00c949f0  5b  POP EBX
00c949f1  c3  RET
