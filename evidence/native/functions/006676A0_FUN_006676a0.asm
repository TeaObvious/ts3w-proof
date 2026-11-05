# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe; analyst display name FootprintQuadtree_GatherSegmentFootprints.
# Ghidra database name FUN_006676a0; no symbol/database edit.
# Bounding original-byte envelope [006676a0,00667713); bytes independently matched against the central original PE.
# Complete existing Ghidra-owned Listing below; envelope gaps are bytes, not owned instructions.
# Owned ranges (exclusive ends): [006676a0,00667713)
# Nonowned gap bytes: 0.

# Original bytes by virtual address:
006676a0: 56 8b f1 83 7e 48 00 57 7f 05 e8 31 f6 ff ff 83
006676b0: 46 48 01 80 7c 24 28 00 b8 20 32 66 00 75 05 b8
006676c0: 00 32 66 00 8b 7c 24 24 d9 44 24 20 57 6a 00 50
006676d0: 8b 44 24 18 83 ec 14 d9 5c 24 10 8b ce d9 44 24
006676e0: 3c d9 5c 24 0c d9 44 24 38 d9 5c 24 08 d9 44 24
006676f0: 34 d9 5c 24 04 d9 44 24 30 d9 1c 24 50 e8 4e c8
00667700: ff ff 83 46 48 ff 33 c0 39 47 14 5f 0f 95 c0 5e
00667710: c2 20 00

# Existing Ghidra-owned instruction Listing:
006676a0: PUSH ESI
006676a1: MOV ESI, ECX
006676a3: CMP dword ptr [ESI + 0x48], 0x0
006676a7: PUSH EDI
006676a8: JG 0x006676af
006676aa: CALL 0x00666ce0
006676af: ADD dword ptr [ESI + 0x48], 0x1
006676b3: CMP byte ptr [ESP + 0x28], 0x0
006676b8: MOV EAX, 0x663220
006676bd: JNZ 0x006676c4
006676bf: MOV EAX, 0x663200
006676c4: MOV EDI, dword ptr [ESP + 0x24]
006676c8: FLD float ptr [ESP + 0x20]
006676cc: PUSH EDI
006676cd: PUSH 0x0
006676cf: PUSH EAX
006676d0: MOV EAX, dword ptr [ESP + 0x18]
006676d4: SUB ESP, 0x14
006676d7: FSTP float ptr [ESP + 0x10]
006676db: MOV ECX, ESI
006676dd: FLD float ptr [ESP + 0x3c]
006676e1: FSTP float ptr [ESP + 0xc]
006676e5: FLD float ptr [ESP + 0x38]
006676e9: FSTP float ptr [ESP + 0x8]
006676ed: FLD float ptr [ESP + 0x34]
006676f1: FSTP float ptr [ESP + 0x4]
006676f5: FLD float ptr [ESP + 0x30]
006676f9: FSTP float ptr [ESP]
006676fc: PUSH EAX
006676fd: CALL 0x00663f50
00667702: ADD dword ptr [ESI + 0x48], -0x1
00667706: XOR EAX, EAX
00667708: CMP dword ptr [EDI + 0x14], EAX
0066770b: POP EDI
0066770c: SETNZ AL
0066770f: POP ESI
00667710: RET 0x20
