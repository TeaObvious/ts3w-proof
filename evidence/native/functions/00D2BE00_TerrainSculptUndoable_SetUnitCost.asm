# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void TerrainSculptUndoable_SetUnitCost(void * this, float unitCost)
Owned ranges: [[00d2be00, 00d2be10]]

00d2be00  f30f10442404  MOVSS XMM0,dword ptr [ESP + 0x4]
00d2be06  f30f118108010000  MOVSS dword ptr [ECX + 0x108],XMM0
00d2be0e  c20400  RET 0x4
