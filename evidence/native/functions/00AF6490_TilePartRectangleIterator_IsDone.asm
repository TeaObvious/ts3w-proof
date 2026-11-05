# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool TilePartRectangleIterator_IsDone(int param_1)
Owned ranges: [[00af6490, 00af649d]]

00af6490  8a4108  MOV AL,byte ptr [ECX + 0x8]
00af6493  33d2  XOR EDX,EDX
00af6495  3a4105  CMP AL,byte ptr [ECX + 0x5]
00af6498  0f9fc2  SETG DL
00af649b  8ac2  MOV AL,DL
00af649d  c3  RET
