# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe; analyst display name FootprintGather_AppendDeferredReference.
# Ghidra database name FUN_006694c0; no symbol/database edit.
# Bounding original-byte envelope [006694c0,006694f9); bytes independently matched against the central original PE.
# Complete existing Ghidra-owned Listing below; envelope gaps are bytes, not owned instructions.
# Owned ranges (exclusive ends): [006694c0,006694f9)
# Nonowned gap bytes: 0.

# Original bytes by virtual address:
006694c0: 8b 41 04 3b 41 08 73 23 85 c0 8d 50 04 89 51 04
006694d0: 74 24 8b 4c 24 04 8b 09 85 c9 89 08 74 18 8b 11
006694e0: 8b 82 90 00 00 00 ff d0 c2 04 00 8b 54 24 04 52
006694f0: 50 e8 6a fe ff ff c2 04 00

# Existing Ghidra-owned instruction Listing:
006694c0: MOV EAX, dword ptr [ECX + 0x4]
006694c3: CMP EAX, dword ptr [ECX + 0x8]
006694c6: JNC 0x006694eb
006694c8: TEST EAX, EAX
006694ca: LEA EDX, [EAX + 0x4]
006694cd: MOV dword ptr [ECX + 0x4], EDX
006694d0: JZ 0x006694f6
006694d2: MOV ECX, dword ptr [ESP + 0x4]
006694d6: MOV ECX, dword ptr [ECX]
006694d8: TEST ECX, ECX
006694da: MOV dword ptr [EAX], ECX
006694dc: JZ 0x006694f6
006694de: MOV EDX, dword ptr [ECX]
006694e0: MOV EAX, dword ptr [EDX + 0x90]
006694e6: CALL EAX
006694e8: RET 0x4
006694eb: MOV EDX, dword ptr [ESP + 0x4]
006694ef: PUSH EDX
006694f0: PUSH EAX
006694f1: CALL 0x00669360
006694f6: RET 0x4
