# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: uint FootprintComponent_IsRegisteredBit(pointer component)
Owned ranges: [[00944980, 00944987]]

00944980  0fb64140  MOVZX EAX,byte ptr [ECX + 0x40]
00944984  83e001  AND EAX,0x1
00944987  c3  RET
