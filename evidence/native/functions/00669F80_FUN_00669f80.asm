# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe; analyst display name FootprintQueryCell_IsTerminal.
# Ghidra database name FUN_00669f80; no symbol/database edit.
# Bounding original-byte envelope [00669f80,00669f98); bytes independently matched against the central original PE.
# Complete existing Ghidra-owned Listing below; envelope gaps are bytes, not owned instructions.
# Owned ranges (exclusive ends): [00669f80,00669f98)
# Nonowned gap bytes: 0.

# Original bytes by virtual address:
00669f80: 83 79 0c 00 74 0c 0f b6 41 1c 83 f8 15 73 03 33
00669f90: c0 c3 b8 01 00 00 00 c3

# Existing Ghidra-owned instruction Listing:
00669f80: CMP dword ptr [ECX + 0xc], 0x0
00669f84: JZ 0x00669f92
00669f86: MOVZX EAX, byte ptr [ECX + 0x1c]
00669f8a: CMP EAX, 0x15
00669f8d: JNC 0x00669f92
00669f8f: XOR EAX, EAX
00669f91: RET
00669f92: MOV EAX, 0x1
00669f97: RET
