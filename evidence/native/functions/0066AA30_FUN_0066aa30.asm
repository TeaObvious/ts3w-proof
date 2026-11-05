# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe; analyst display name FootprintQueryCell_IntersectsExpandedSegment.
# Ghidra database name FUN_0066aa30; no symbol/database edit.
# Bounding original-byte envelope [0066aa30,0066abad); bytes independently matched against the central original PE.
# Complete existing Ghidra-owned Listing below; envelope gaps are bytes, not owned instructions.
# Owned ranges (exclusive ends): [0066aa30,0066abad)
# Nonowned gap bytes: 0.

# Original bytes by virtual address:
0066aa30: 83 ec 10 8b 51 1c d9 44 24 14 f3 0f 10 49 14 d8
0066aa40: 44 24 1c 8b 41 18 d9 05 b4 b5 f9 00 f3 0f 10 54
0066aa50: 24 20 f3 0f 5c 54 24 18 dc c9 8b 49 04 81 e2 ff
0066aa60: 00 00 00 f3 0f 10 04 95 40 f4 fe 00 f3 0f 59 c1
0066aa70: f3 0f 11 0c 24 f3 0f 10 0d b4 b5 f9 00 f3 0f 59
0066aa80: c1 f3 0f 11 44 24 04 f3 0f 58 44 24 24 56 f3 0f
0066aa90: 11 44 24 0c f3 0f 10 44 24 20 f3 0f 5c 44 24 18
0066aaa0: 8b f0 81 e6 ff 0f 00 00 85 f6 89 74 24 18 db 44
0066aab0: 24 18 f3 0f 59 c1 f3 0f 59 d1 f3 0f 11 44 24 28
0066aac0: f3 0f 11 54 24 10 7d 06 d8 05 48 99 f9 00 d8 04
0066aad0: d5 98 f1 fe 00 c1 e8 10 d9 44 24 04 25 ff 0f 00
0066aae0: 00 85 c0 dc c9 89 44 24 18 d9 c9 d8 41 04 d9 44
0066aaf0: 24 08 dc c1 d9 cc de e1 d9 44 24 1c d8 44 24 24
0066ab00: de cb db 44 24 18 7d 06 d8 05 48 99 f9 00 d8 04
0066ab10: d5 9c f1 fe 00 f3 0f 10 0d f0 98 f9 00 f3 0f 5c
0066ab20: c8 f3 0f 11 4c 24 18 de ca 5e d9 c9 d8 41 08 de
0066ab30: c3 d9 c9 de e2 d9 c0 d9 e1 d9 44 24 24 d9 e1 d9
0066ab40: 44 24 08 dc c1 d9 ca df f1 dd d8 76 0e dd d9 dd
0066ab50: d9 dd d8 32 c0 83 c4 10 c2 14 00 d9 44 24 0c d9
0066ab60: c0 d9 e1 d9 c4 d9 e1 d9 c1 d8 c4 d9 c9 df f1 dd
0066ab70: d8 76 12 dd db 32 c0 dd db dd d8 dd d8 dd d8 83
0066ab80: c4 10 c2 14 00 d9 44 24 14 d9 c0 de ce d9 cc de
0066ab90: ca d9 cc de c1 d9 e1 d9 ca d9 e1 de c3 de ca df
0066aba0: f1 dd d8 77 ae b0 01 83 c4 10 c2 14 00

# Existing Ghidra-owned instruction Listing:
0066aa30: SUB ESP, 0x10
0066aa33: MOV EDX, dword ptr [ECX + 0x1c]
0066aa36: FLD float ptr [ESP + 0x14]
0066aa3a: MOVSS XMM1, dword ptr [ECX + 0x14]
0066aa3f: FADD float ptr [ESP + 0x1c]
0066aa43: MOV EAX, dword ptr [ECX + 0x18]
0066aa46: FLD float ptr [0x00f9b5b4]
0066aa4c: MOVSS XMM2, dword ptr [ESP + 0x20]
0066aa52: SUBSS XMM2, dword ptr [ESP + 0x18]
0066aa58: FMUL ST1
0066aa5a: MOV ECX, dword ptr [ECX + 0x4]
0066aa5d: AND EDX, 0xff
0066aa63: MOVSS XMM0, dword ptr [EDX*0x4 + 0xfef440]
0066aa6c: MULSS XMM0, XMM1
0066aa70: MOVSS dword ptr [ESP], XMM1
0066aa75: MOVSS XMM1, dword ptr [0x00f9b5b4]
0066aa7d: MULSS XMM0, XMM1
0066aa81: MOVSS dword ptr [ESP + 0x4], XMM0
0066aa87: ADDSS XMM0, dword ptr [ESP + 0x24]
0066aa8d: PUSH ESI
0066aa8e: MOVSS dword ptr [ESP + 0xc], XMM0
0066aa94: MOVSS XMM0, dword ptr [ESP + 0x20]
0066aa9a: SUBSS XMM0, dword ptr [ESP + 0x18]
0066aaa0: MOV ESI, EAX
0066aaa2: AND ESI, 0xfff
0066aaa8: TEST ESI, ESI
0066aaaa: MOV dword ptr [ESP + 0x18], ESI
0066aaae: FILD dword ptr [ESP + 0x18]
0066aab2: MULSS XMM0, XMM1
0066aab6: MULSS XMM2, XMM1
0066aaba: MOVSS dword ptr [ESP + 0x28], XMM0
0066aac0: MOVSS dword ptr [ESP + 0x10], XMM2
0066aac6: JGE 0x0066aace
0066aac8: FADD float ptr [0x00f99948]
0066aace: FADD float ptr [EDX*0x8 + 0xfef198]
0066aad5: SHR EAX, 0x10
0066aad8: FLD float ptr [ESP + 0x4]
0066aadc: AND EAX, 0xfff
0066aae1: TEST EAX, EAX
0066aae3: FMUL ST1
0066aae5: MOV dword ptr [ESP + 0x18], EAX
0066aae9: FXCH
0066aaeb: FADD float ptr [ECX + 0x4]
0066aaee: FLD float ptr [ESP + 0x8]
0066aaf2: FADD ST1, ST0
0066aaf4: FXCH ST4
0066aaf6: FSUBRP
0066aaf8: FLD float ptr [ESP + 0x1c]
0066aafc: FADD float ptr [ESP + 0x24]
0066ab00: FMULP ST3
0066ab02: FILD dword ptr [ESP + 0x18]
0066ab06: JGE 0x0066ab0e
0066ab08: FADD float ptr [0x00f99948]
0066ab0e: FADD float ptr [EDX*0x8 + 0xfef19c]
0066ab15: MOVSS XMM1, dword ptr [0x00f998f0]
0066ab1d: SUBSS XMM1, XMM0
0066ab21: MOVSS dword ptr [ESP + 0x18], XMM1
0066ab27: FMULP ST2
0066ab29: POP ESI
0066ab2a: FXCH
0066ab2c: FADD float ptr [ECX + 0x8]
0066ab2f: FADDP ST3, ST0
0066ab31: FXCH
0066ab33: FSUBRP ST2, ST0
0066ab35: FLD ST0
0066ab37: FABS
0066ab39: FLD float ptr [ESP + 0x24]
0066ab3d: FABS
0066ab3f: FLD float ptr [ESP + 0x8]
0066ab43: FADD ST1, ST0
0066ab45: FXCH ST2
0066ab47: FCOMIP ST0, ST1
0066ab49: FSTP ST0
0066ab4b: JBE 0x0066ab5b
0066ab4d: FSTP ST1
0066ab4f: FSTP ST1
0066ab51: FSTP ST0
0066ab53: XOR AL, AL
0066ab55: ADD ESP, 0x10
0066ab58: RET 0x14
0066ab5b: FLD float ptr [ESP + 0xc]
0066ab5f: FLD ST0
0066ab61: FABS
0066ab63: FLD ST4
0066ab65: FABS
0066ab67: FLD ST1
0066ab69: FADD ST0, ST4
0066ab6b: FXCH
0066ab6d: FCOMIP ST0, ST1
0066ab6f: FSTP ST0
0066ab71: JBE 0x0066ab85
0066ab73: FSTP ST3
0066ab75: XOR AL, AL
0066ab77: FSTP ST3
0066ab79: FSTP ST0
0066ab7b: FSTP ST0
0066ab7d: FSTP ST0
0066ab7f: ADD ESP, 0x10
0066ab82: RET 0x14
0066ab85: FLD float ptr [ESP + 0x14]
0066ab89: FLD ST0
0066ab8b: FMULP ST6
0066ab8d: FXCH ST4
0066ab8f: FMULP ST2
0066ab91: FXCH ST4
0066ab93: FADDP
0066ab95: FABS
0066ab97: FXCH ST2
0066ab99: FABS
0066ab9b: FADDP ST3, ST0
0066ab9d: FMULP ST2
0066ab9f: FCOMIP ST0, ST1
0066aba1: FSTP ST0
0066aba3: JA 0x0066ab53
0066aba5: MOV AL, 0x1
0066aba7: ADD ESP, 0x10
0066abaa: RET 0x14
