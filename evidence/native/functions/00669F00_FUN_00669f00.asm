# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe; analyst display name FootprintQueryCell_Initialize.
# Ghidra database name FUN_00669f00; no symbol/database edit.
# Bounding original-byte envelope [00669f00,00669f71); bytes independently matched against the central original PE.
# Complete existing Ghidra-owned Listing below; envelope gaps are bytes, not owned instructions.
# Owned ranges (exclusive ends): [00669f00,00669f71)
# Nonowned gap bytes: 0.

# Original bytes by virtual address:
00669f00: 8b 44 24 04 8b 54 24 08 89 41 04 8b 44 24 0c c1
00669f10: e0 08 33 41 20 f3 0f 10 44 24 10 25 00 03 00 00
00669f20: 31 41 20 8b 44 24 20 89 51 08 8b 54 24 18 c1 e0
00669f30: 0c 81 e2 ff 0f 00 00 0b d0 8b 44 24 1c 83 c0 04
00669f40: c1 e0 0c 25 00 f0 00 00 c1 e2 10 0b d0 8b 44 24
00669f50: 14 25 ff 0f 00 00 0b d0 8a 44 24 28 89 51 18 8b
00669f60: 54 24 24 f3 0f 11 41 14 89 51 0c 88 41 1c c2 28
00669f70: 00

# Existing Ghidra-owned instruction Listing:
00669f00: MOV EAX, dword ptr [ESP + 0x4]
00669f04: MOV EDX, dword ptr [ESP + 0x8]
00669f08: MOV dword ptr [ECX + 0x4], EAX
00669f0b: MOV EAX, dword ptr [ESP + 0xc]
00669f0f: SHL EAX, 0x8
00669f12: XOR EAX, dword ptr [ECX + 0x20]
00669f15: MOVSS XMM0, dword ptr [ESP + 0x10]
00669f1b: AND EAX, 0x300
00669f20: XOR dword ptr [ECX + 0x20], EAX
00669f23: MOV EAX, dword ptr [ESP + 0x20]
00669f27: MOV dword ptr [ECX + 0x8], EDX
00669f2a: MOV EDX, dword ptr [ESP + 0x18]
00669f2e: SHL EAX, 0xc
00669f31: AND EDX, 0xfff
00669f37: OR EDX, EAX
00669f39: MOV EAX, dword ptr [ESP + 0x1c]
00669f3d: ADD EAX, 0x4
00669f40: SHL EAX, 0xc
00669f43: AND EAX, 0xf000
00669f48: SHL EDX, 0x10
00669f4b: OR EDX, EAX
00669f4d: MOV EAX, dword ptr [ESP + 0x14]
00669f51: AND EAX, 0xfff
00669f56: OR EDX, EAX
00669f58: MOV AL, byte ptr [ESP + 0x28]
00669f5c: MOV dword ptr [ECX + 0x18], EDX
00669f5f: MOV EDX, dword ptr [ESP + 0x24]
00669f63: MOVSS dword ptr [ECX + 0x14], XMM0
00669f68: MOV dword ptr [ECX + 0xc], EDX
00669f6b: MOV byte ptr [ECX + 0x1c], AL
00669f6e: RET 0x28
