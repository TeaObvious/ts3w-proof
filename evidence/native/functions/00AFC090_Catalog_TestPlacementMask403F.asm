# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: uint Catalog_TestPlacementMask403F(void * catalog)
Owned ranges: [[00afc090, 00afc0a5]]

00afc090  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00afc094  8b80a4000000  MOV EAX,dword ptr [EAX + 0xa4]
00afc09a  253f400000  AND EAX,0x403f
00afc09f  f7d8  NEG EAX
00afc0a1  1bc0  SBB EAX,EAX
00afc0a3  f7d8  NEG EAX
00afc0a5  c3  RET
