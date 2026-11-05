# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: float10 LotSettings_GetBasementTileCost(void * this, float10 * __return_storage_ptr__)
Owned ranges: [[00ab0ca0, 00ab0cb1]]

00ab0ca0  56  PUSH ESI
00ab0ca1  8bf1  MOV ESI,ECX
00ab0ca3  803e00  CMP byte ptr [ESI],0x0
00ab0ca6  7505  JNZ 0x00ab0cad
00ab0ca8  e8b3feffff  CALL 0x00ab0b60
00ab0cad  d94610  FLD float ptr [ESI + 0x10]
00ab0cb0  5e  POP ESI
00ab0cb1  c3  RET
