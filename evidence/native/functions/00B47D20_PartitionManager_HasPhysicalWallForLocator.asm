# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete existing owned Listing.
; Analyst-assigned name: PartitionManager_HasPhysicalWallForLocator
; Owned ranges: [[00b47d20, 00b47d35]]
; Actual entry PLATE: Static PC1.67: ECX partition owner, stack+4 locator pointer, RET4. Loads physical graph at owner+64, calls C418D0, normalizes any nonzero returned EAX wall pointer to full EAX1 else0 using NEG/SBB/NEG. Pointer presence, not serialized section ID or unique-row cardinality.

00b47d20  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00b47d24  8b4964  MOV ECX,dword ptr [ECX + 0x64]
00b47d27  50  PUSH EAX
00b47d28  e8a39b0f00  CALL 0x00c418d0
00b47d2d  f7d8  NEG EAX
00b47d2f  1bc0  SBB EAX,EAX
00b47d31  f7d8  NEG EAX
00b47d33  c20400  RET 0x4
