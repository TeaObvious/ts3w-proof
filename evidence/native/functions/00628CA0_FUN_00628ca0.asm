# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe; analyst display name FootprintSet_InsertUniquePointer.
# Ghidra database name FUN_00628ca0; no symbol/database edit.
# Bounding original-byte envelope [00628ca0,00628d27); bytes independently matched against the central original PE.
# Complete existing Ghidra-owned Listing below; envelope gaps are bytes, not owned instructions.
# Owned ranges (exclusive ends): [00628ca0,00628d27)
# Nonowned gap bytes: 0.

# Original bytes by virtual address:
00628ca0: 55 8b 6c 24 0c 56 8b f1 8b 4e 0c 85 c9 57 8d 46
00628cb0: 04 b2 01 74 1a 8b 7d 00 3b 79 10 8b c1 0f 92 c2
00628cc0: 84 d2 74 05 8b 49 04 eb 02 8b 09 85 c9 75 e9 84
00628cd0: d2 8b f8 74 0e 3b 46 08 74 17 50 e8 90 83 eb ff
00628ce0: 83 c4 04 8b 50 10 3b 55 00 73 2a 6a 00 55 57 eb
00628cf0: 04 6a 00 55 50 8d 44 24 20 50 8b ce e8 ff e6 ff
00628d00: ff 8b 44 24 10 8b 4c 24 14 5f 5e 89 08 c6 40 04
00628d10: 01 5d c2 0c 00 8b 4c 24 10 5f 5e 89 01 c6 41 04
00628d20: 00 8b c1 5d c2 0c 00

# Existing Ghidra-owned instruction Listing:
00628ca0: PUSH EBP
00628ca1: MOV EBP, dword ptr [ESP + 0xc]
00628ca5: PUSH ESI
00628ca6: MOV ESI, ECX
00628ca8: MOV ECX, dword ptr [ESI + 0xc]
00628cab: TEST ECX, ECX
00628cad: PUSH EDI
00628cae: LEA EAX, [ESI + 0x4]
00628cb1: MOV DL, 0x1
00628cb3: JZ 0x00628ccf
00628cb5: MOV EDI, dword ptr [EBP]
00628cb8: CMP EDI, dword ptr [ECX + 0x10]
00628cbb: MOV EAX, ECX
00628cbd: SETC DL
00628cc0: TEST DL, DL
00628cc2: JZ 0x00628cc9
00628cc4: MOV ECX, dword ptr [ECX + 0x4]
00628cc7: JMP 0x00628ccb
00628cc9: MOV ECX, dword ptr [ECX]
00628ccb: TEST ECX, ECX
00628ccd: JNZ 0x00628cb8
00628ccf: TEST DL, DL
00628cd1: MOV EDI, EAX
00628cd3: JZ 0x00628ce3
00628cd5: CMP EAX, dword ptr [ESI + 0x8]
00628cd8: JZ 0x00628cf1
00628cda: PUSH EAX
00628cdb: CALL 0x004e1070
00628ce0: ADD ESP, 0x4
00628ce3: MOV EDX, dword ptr [EAX + 0x10]
00628ce6: CMP EDX, dword ptr [EBP]
00628ce9: JNC 0x00628d15
00628ceb: PUSH 0x0
00628ced: PUSH EBP
00628cee: PUSH EDI
00628cef: JMP 0x00628cf5
00628cf1: PUSH 0x0
00628cf3: PUSH EBP
00628cf4: PUSH EAX
00628cf5: LEA EAX, [ESP + 0x20]
00628cf9: PUSH EAX
00628cfa: MOV ECX, ESI
00628cfc: CALL 0x00627400
00628d01: MOV EAX, dword ptr [ESP + 0x10]
00628d05: MOV ECX, dword ptr [ESP + 0x14]
00628d09: POP EDI
00628d0a: POP ESI
00628d0b: MOV dword ptr [EAX], ECX
00628d0d: MOV byte ptr [EAX + 0x4], 0x1
00628d11: POP EBP
00628d12: RET 0xc
00628d15: MOV ECX, dword ptr [ESP + 0x10]
00628d19: POP EDI
00628d1a: POP ESI
00628d1b: MOV dword ptr [ECX], EAX
00628d1d: MOV byte ptr [ECX + 0x4], 0x0
00628d21: MOV EAX, ECX
00628d23: POP EBP
00628d24: RET 0xc
