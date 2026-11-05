# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe; analyst display name FootprintSet_InsertRetainedNode.
# Ghidra database name FUN_00627400; no symbol/database edit.
# Bounding original-byte envelope [00627400,00627487); bytes independently matched against the central original PE.
# Complete existing Ghidra-owned Listing below; envelope gaps are bytes, not owned instructions.
# Owned ranges (exclusive ends): [00627400,00627487)
# Nonowned gap bytes: 0.

# Original bytes by virtual address:
00627400: 80 7c 24 10 00 53 55 8b 6c 24 10 56 57 8b f1 75
00627410: 19 8d 46 04 3b e8 74 12 8b 4c 24 1c 8b 11 3b 55
00627420: 10 72 07 bb 01 00 00 00 eb 02 33 db 8b 46 18 68
00627430: e7 00 00 00 68 88 99 f9 00 6a 00 6a 00 50 6a 14
00627440: e8 bb d0 eb ff 8b f8 8d 47 10 83 c4 18 85 c0 74
00627450: 16 8b 4c 24 1c 8b 09 85 c9 89 08 74 0a 8b 11 8b
00627460: 82 90 00 00 00 ff d0 53 8d 4e 04 51 55 57 e8 dd
00627470: 9c eb ff 8b 44 24 24 83 46 14 01 83 c4 10 89 38
00627480: 5f 5e 5d 5b c2 10 00

# Existing Ghidra-owned instruction Listing:
00627400: CMP byte ptr [ESP + 0x10], 0x0
00627405: PUSH EBX
00627406: PUSH EBP
00627407: MOV EBP, dword ptr [ESP + 0x10]
0062740b: PUSH ESI
0062740c: PUSH EDI
0062740d: MOV ESI, ECX
0062740f: JNZ 0x0062742a
00627411: LEA EAX, [ESI + 0x4]
00627414: CMP EBP, EAX
00627416: JZ 0x0062742a
00627418: MOV ECX, dword ptr [ESP + 0x1c]
0062741c: MOV EDX, dword ptr [ECX]
0062741e: CMP EDX, dword ptr [EBP + 0x10]
00627421: JC 0x0062742a
00627423: MOV EBX, 0x1
00627428: JMP 0x0062742c
0062742a: XOR EBX, EBX
0062742c: MOV EAX, dword ptr [ESI + 0x18]
0062742f: PUSH 0xe7
00627434: PUSH 0xf99988
00627439: PUSH 0x0
0062743b: PUSH 0x0
0062743d: PUSH EAX
0062743e: PUSH 0x14
00627440: CALL 0x004e4500
00627445: MOV EDI, EAX
00627447: LEA EAX, [EDI + 0x10]
0062744a: ADD ESP, 0x18
0062744d: TEST EAX, EAX
0062744f: JZ 0x00627467
00627451: MOV ECX, dword ptr [ESP + 0x1c]
00627455: MOV ECX, dword ptr [ECX]
00627457: TEST ECX, ECX
00627459: MOV dword ptr [EAX], ECX
0062745b: JZ 0x00627467
0062745d: MOV EDX, dword ptr [ECX]
0062745f: MOV EAX, dword ptr [EDX + 0x90]
00627465: CALL EAX
00627467: PUSH EBX
00627468: LEA ECX, [ESI + 0x4]
0062746b: PUSH ECX
0062746c: PUSH EBP
0062746d: PUSH EDI
0062746e: CALL 0x004e1150
00627473: MOV EAX, dword ptr [ESP + 0x24]
00627477: ADD dword ptr [ESI + 0x14], 0x1
0062747b: ADD ESP, 0x10
0062747e: MOV dword ptr [EAX], EDI
00627480: POP EDI
00627481: POP ESI
00627482: POP EBP
00627483: POP EBX
00627484: RET 0x10
