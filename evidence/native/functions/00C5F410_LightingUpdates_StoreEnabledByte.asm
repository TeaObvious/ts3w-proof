# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Actual Ghidra function: LightingUpdates_StoreEnabledByte
Paired annotated actual pseudocode: 00C5F410_LightingUpdates_StoreEnabledByte.c
Owned ranges: [[00c5f410, 00c5f42c]]

GHIDRA LISTING (original bytes)
00c5f410  e85b8da8ff  CALL 0x006e8170
00c5f415  85c0  TEST EAX,EAX
00c5f417  7411  JZ 0x00c5f42a
00c5f419  8bc8  MOV ECX,EAX
00c5f41b  e8008ea8ff  CALL 0x006e8220
00c5f420  8a4c2404  MOV CL,byte ptr [ESP + 0x4]
00c5f424  888800010000  MOV byte ptr [EAX + 0x100],CL
00c5f42a  c20400  RET 0x4
Owned instructions=8 owned bytes=29
