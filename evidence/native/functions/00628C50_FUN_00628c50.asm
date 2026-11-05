# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe; analyst display name FootprintSet_ReleaseSubtree.
# Ghidra database name FUN_00628c50; no symbol/database edit.
# Bounding original-byte envelope [00628c50,00628c93); bytes independently matched against the central original PE.
# Complete existing Ghidra-owned Listing below; envelope gaps are bytes, not owned instructions.
# Owned ranges (exclusive ends): [00628c50,00628c93)
# Nonowned gap bytes: 0.

# Original bytes by virtual address:
00628c50: 53 56 8b 74 24 0c 85 f6 8b d9 74 32 57 8d 49 00
00628c60: 8b 06 50 8b cb e8 e6 ff ff ff 8b 4e 10 85 c9 8b
00628c70: 7e 04 74 0a 8b 11 8b 82 94 00 00 00 ff d0 56 e8
00628c80: 5c b8 eb ff 83 c4 04 85 ff 8b f7 75 d3 5f 5e 5b
00628c90: c2 04 00

# Existing Ghidra-owned instruction Listing:
00628c50: PUSH EBX
00628c51: PUSH ESI
00628c52: MOV ESI, dword ptr [ESP + 0xc]
00628c56: TEST ESI, ESI
00628c58: MOV EBX, ECX
00628c5a: JZ 0x00628c8e
00628c5c: PUSH EDI
00628c5d: LEA ECX, [ECX]
00628c60: MOV EAX, dword ptr [ESI]
00628c62: PUSH EAX
00628c63: MOV ECX, EBX
00628c65: CALL 0x00628c50
00628c6a: MOV ECX, dword ptr [ESI + 0x10]
00628c6d: TEST ECX, ECX
00628c6f: MOV EDI, dword ptr [ESI + 0x4]
00628c72: JZ 0x00628c7e
00628c74: MOV EDX, dword ptr [ECX]
00628c76: MOV EAX, dword ptr [EDX + 0x94]
00628c7c: CALL EAX
00628c7e: PUSH ESI
00628c7f: CALL 0x004e44e0
00628c84: ADD ESP, 0x4
00628c87: TEST EDI, EDI
00628c89: MOV ESI, EDI
00628c8b: JNZ 0x00628c60
00628c8d: POP EDI
00628c8e: POP ESI
00628c8f: POP EBX
00628c90: RET 0x4
