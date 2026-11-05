# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; actual Ghidra Listing and preserved non-owned envelope gaps.
Owned ranges: [[00c9b0c0, 00c9b0d1]]
Signature: undefined4 * TerrainSculptProduct_Construct(undefined4 * param_1)

00c9b0c0  56  PUSH ESI
00c9b0c1  8bf1  MOV ESI,ECX
00c9b0c3  e83885ffff  CALL 0x00c93600
00c9b0c8  c7066cd30701  MOV dword ptr [ESI],0x107d36c
00c9b0ce  8bc6  MOV EAX,ESI
00c9b0d0  5e  POP ESI
00c9b0d1  c3  RET
