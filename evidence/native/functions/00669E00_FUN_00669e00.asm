# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe; analyst display name FootprintCell_CollectRecordsRecursive.
# Ghidra database name FUN_00669e00; no symbol/database edit.
# Bounding original-byte envelope [00669e00,00669e5a); bytes independently matched against the central original PE.
# Complete existing Ghidra-owned Listing below; envelope gaps are bytes, not owned instructions.
# Owned ranges (exclusive ends): [00669e00,00669e5a)
# Nonowned gap bytes: 0.

# Original bytes by virtual address:
00669e00: 51 f6 41 04 03 75 08 83 c4 04 e9 11 fd ff ff 53
00669e10: 8b 5c 24 0c 55 8b 6c 24 18 56 57 8b 7c 24 1c 8d
00669e20: 71 0c c7 44 24 10 04 00 00 00 8d 9b 00 00 00 00
00669e30: 8b 0e 85 c9 74 12 8b 54 24 28 8b 44 24 24 52 50
00669e40: 55 57 53 e8 b8 ff ff ff 83 c6 04 83 6c 24 10 01
00669e50: 75 de 5f 5e 5d 5b 59 c2 14 00

# Existing Ghidra-owned instruction Listing:
00669e00: PUSH ECX
00669e01: TEST byte ptr [ECX + 0x4], 0x3
00669e05: JNZ 0x00669e0f
00669e07: ADD ESP, 0x4
00669e0a: JMP 0x00669b20
00669e0f: PUSH EBX
00669e10: MOV EBX, dword ptr [ESP + 0xc]
00669e14: PUSH EBP
00669e15: MOV EBP, dword ptr [ESP + 0x18]
00669e19: PUSH ESI
00669e1a: PUSH EDI
00669e1b: MOV EDI, dword ptr [ESP + 0x1c]
00669e1f: LEA ESI, [ECX + 0xc]
00669e22: MOV dword ptr [ESP + 0x10], 0x4
00669e2a: LEA EBX, [EBX]
00669e30: MOV ECX, dword ptr [ESI]
00669e32: TEST ECX, ECX
00669e34: JZ 0x00669e48
00669e36: MOV EDX, dword ptr [ESP + 0x28]
00669e3a: MOV EAX, dword ptr [ESP + 0x24]
00669e3e: PUSH EDX
00669e3f: PUSH EAX
00669e40: PUSH EBP
00669e41: PUSH EDI
00669e42: PUSH EBX
00669e43: CALL 0x00669e00
00669e48: ADD ESI, 0x4
00669e4b: SUB dword ptr [ESP + 0x10], 0x1
00669e50: JNZ 0x00669e30
00669e52: POP EDI
00669e53: POP ESI
00669e54: POP EBP
00669e55: POP EBX
00669e56: POP ECX
00669e57: RET 0x14
