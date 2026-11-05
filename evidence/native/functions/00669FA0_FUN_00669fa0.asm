# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe; analyst display name FootprintQueryCell_CollectCandidates.
# Ghidra database name FUN_00669fa0; no symbol/database edit.
# Bounding original-byte envelope [00669fa0,0066a003); bytes independently matched against the central original PE.
# Complete existing Ghidra-owned Listing below; envelope gaps are bytes, not owned instructions.
# Owned ranges (exclusive ends): [00669fa0,0066a003)
# Nonowned gap bytes: 0.

# Original bytes by virtual address:
00669fa0: 8b c1 8b 48 0c 85 c9 74 57 8b 40 1c 25 ff 00 00
00669fb0: 00 76 18 8b 54 24 0c 52 8b 54 24 0c 52 50 8b 44
00669fc0: 24 10 50 e8 38 f5 ff ff c2 0c 00 f6 41 04 03 6a
00669fd0: 00 6a 01 75 17 8b 54 24 14 8b 44 24 10 52 8b 54
00669fe0: 24 10 50 52 e8 37 fb ff ff c2 0c 00 8b 44 24 14
00669ff0: 8b 54 24 10 50 8b 44 24 10 52 50 e8 60 fe ff ff
0066a000: c2 0c 00

# Existing Ghidra-owned instruction Listing:
00669fa0: MOV EAX, ECX
00669fa2: MOV ECX, dword ptr [EAX + 0xc]
00669fa5: TEST ECX, ECX
00669fa7: JZ 0x0066a000
00669fa9: MOV EAX, dword ptr [EAX + 0x1c]
00669fac: AND EAX, 0xff
00669fb1: JBE 0x00669fcb
00669fb3: MOV EDX, dword ptr [ESP + 0xc]
00669fb7: PUSH EDX
00669fb8: MOV EDX, dword ptr [ESP + 0xc]
00669fbc: PUSH EDX
00669fbd: PUSH EAX
00669fbe: MOV EAX, dword ptr [ESP + 0x10]
00669fc2: PUSH EAX
00669fc3: CALL 0x00669500
00669fc8: RET 0xc
00669fcb: TEST byte ptr [ECX + 0x4], 0x3
00669fcf: PUSH 0x0
00669fd1: PUSH 0x1
00669fd3: JNZ 0x00669fec
00669fd5: MOV EDX, dword ptr [ESP + 0x14]
00669fd9: MOV EAX, dword ptr [ESP + 0x10]
00669fdd: PUSH EDX
00669fde: MOV EDX, dword ptr [ESP + 0x10]
00669fe2: PUSH EAX
00669fe3: PUSH EDX
00669fe4: CALL 0x00669b20
00669fe9: RET 0xc
00669fec: MOV EAX, dword ptr [ESP + 0x14]
00669ff0: MOV EDX, dword ptr [ESP + 0x10]
00669ff4: PUSH EAX
00669ff5: MOV EAX, dword ptr [ESP + 0x10]
00669ff9: PUSH EDX
00669ffa: PUSH EAX
00669ffb: CALL 0x00669e60
0066a000: RET 0xc
