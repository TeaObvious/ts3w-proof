# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe; analyst display name FootprintGather_IsDiscardedClassification.
# Ghidra database name FUN_00621220; no symbol/database edit.
# Bounding original-byte envelope [00621220,00621237); bytes independently matched against the central original PE.
# Complete existing Ghidra-owned Listing below; envelope gaps are bytes, not owned instructions.
# Owned ranges (exclusive ends): [00621220,00621237)
# Nonowned gap bytes: 0.

# Original bytes by virtual address:
00621220: 8b 44 24 04 83 f8 02 72 08 83 f8 0d 74 03 33 c0
00621230: c3 b8 01 00 00 00 c3

# Existing Ghidra-owned instruction Listing:
00621220: MOV EAX, dword ptr [ESP + 0x4]
00621224: CMP EAX, 0x2
00621227: JC 0x00621231
00621229: CMP EAX, 0xd
0062122c: JZ 0x00621231
0062122e: XOR EAX, EAX
00621230: RET
00621231: MOV EAX, 0x1
00621236: RET
