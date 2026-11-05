# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe; analyst display name FootprintSet_InsertUniquePointerForwarder.
# Ghidra database name FUN_00629850; no symbol/database edit.
# Bounding original-byte envelope [00629850,00629872); bytes independently matched against the central original PE.
# Complete existing Ghidra-owned Listing below; envelope gaps are bytes, not owned instructions.
# Owned ranges (exclusive ends): [00629850,00629872)
# Nonowned gap bytes: 0.

# Original bytes by virtual address:
00629850: 51 8b 54 24 0c 56 8b 74 24 0c c6 44 24 04 00 8b
00629860: 44 24 04 50 52 56 e8 35 f4 ff ff 8b c6 5e 59 c2
00629870: 08 00

# Existing Ghidra-owned instruction Listing:
00629850: PUSH ECX
00629851: MOV EDX, dword ptr [ESP + 0xc]
00629855: PUSH ESI
00629856: MOV ESI, dword ptr [ESP + 0xc]
0062985a: MOV byte ptr [ESP + 0x4], 0x0
0062985f: MOV EAX, dword ptr [ESP + 0x4]
00629863: PUSH EAX
00629864: PUSH EDX
00629865: PUSH ESI
00629866: CALL 0x00628ca0
0062986b: MOV EAX, ESI
0062986d: POP ESI
0062986e: POP ECX
0062986f: RET 0x8
