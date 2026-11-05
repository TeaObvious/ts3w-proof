# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool FloorElevationUndoable_HasBaseChanges(void * this)
Owned ranges: [[00d213a0, 00d213a8]]

00d213a0  33c0  XOR EAX,EAX
00d213a2  394168  CMP dword ptr [ECX + 0x68],EAX
00d213a5  0f95c0  SETNZ AL
00d213a8  c3  RET
