# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe; analyst display name RoutingRecord_GetOptionsField28OrNull.
# Ghidra database name FUN_00828f00; no symbol/database edit.
# Bounding original-byte envelope [00828f00,00828f13); bytes independently matched against the central original PE.
# Complete existing Ghidra-owned Listing below; envelope gaps are bytes, not owned instructions.
# Owned ranges (exclusive ends): [00828f00,00828f13)
# Nonowned gap bytes: 0.

# Original bytes by virtual address:
00828f00: 8b 44 24 04 85 c0 74 06 8b 40 28 c2 04 00 33 c0
00828f10: c2 04 00

# Existing Ghidra-owned instruction Listing:
00828f00: MOV EAX, dword ptr [ESP + 0x4]
00828f04: TEST EAX, EAX
00828f06: JZ 0x00828f0e
00828f08: MOV EAX, dword ptr [EAX + 0x28]
00828f0b: RET 0x4
00828f0e: XOR EAX, EAX
00828f10: RET 0x4
