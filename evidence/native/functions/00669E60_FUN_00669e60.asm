# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe; analyst display name FootprintCell_CollectChildren.
# Ghidra database name FUN_00669e60; no symbol/database edit.
# Bounding original-byte envelope [00669e60,00669eaa); bytes independently matched against the central original PE.
# Complete existing Ghidra-owned Listing below; envelope gaps are bytes, not owned instructions.
# Owned ranges (exclusive ends): [00669e60,00669eaa)
# Nonowned gap bytes: 0.

# Original bytes by virtual address:
00669e60: 51 53 8b 5c 24 0c 55 8b 6c 24 1c 56 57 8b 7c 24
00669e70: 1c 8d 71 0c c7 44 24 10 04 00 00 00 8d 64 24 00
00669e80: 8b 0e 85 c9 74 12 8b 44 24 28 8b 54 24 20 50 55
00669e90: 52 57 53 e8 68 ff ff ff 83 c6 04 83 6c 24 10 01
00669ea0: 75 de 5f 5e 5d 5b 59 c2 14 00

# Existing Ghidra-owned instruction Listing:
00669e60: PUSH ECX
00669e61: PUSH EBX
00669e62: MOV EBX, dword ptr [ESP + 0xc]
00669e66: PUSH EBP
00669e67: MOV EBP, dword ptr [ESP + 0x1c]
00669e6b: PUSH ESI
00669e6c: PUSH EDI
00669e6d: MOV EDI, dword ptr [ESP + 0x1c]
00669e71: LEA ESI, [ECX + 0xc]
00669e74: MOV dword ptr [ESP + 0x10], 0x4
00669e7c: LEA ESP, [ESP]
00669e80: MOV ECX, dword ptr [ESI]
00669e82: TEST ECX, ECX
00669e84: JZ 0x00669e98
00669e86: MOV EAX, dword ptr [ESP + 0x28]
00669e8a: MOV EDX, dword ptr [ESP + 0x20]
00669e8e: PUSH EAX
00669e8f: PUSH EBP
00669e90: PUSH EDX
00669e91: PUSH EDI
00669e92: PUSH EBX
00669e93: CALL 0x00669e00
00669e98: ADD ESI, 0x4
00669e9b: SUB dword ptr [ESP + 0x10], 0x1
00669ea0: JNZ 0x00669e80
00669ea2: POP EDI
00669ea3: POP ESI
00669ea4: POP EBP
00669ea5: POP EBX
00669ea6: POP ECX
00669ea7: RET 0x14
