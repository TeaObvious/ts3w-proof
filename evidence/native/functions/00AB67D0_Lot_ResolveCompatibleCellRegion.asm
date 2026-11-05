# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe, complete existing Ghidra owned ranges: [00ab67d0,00ab68a1]. 210owned bytes/83instructions; 0nonowned envelope bytes excluded. Readonly GhidrAssist metadata/Listing and independent original-PE byte/start comparison. No DB/body/prototype repair, analysis, save or original-byte mutation.

ECX lot, packedcell pointer and lowbyte allowPartial, RET8 EAXrawID/-1. Bounds check X/Z and signedlevels; selected missingFFFFFFFF rejects when strict. B02820 compares compatible catalog kinds, not only exact product identity. Partial mode returns prior valid ID at incompatibility. Child pointers/initialization/failure lifetime remain open.

ORIGINAL OWNED BYTES
00ab67d0: 56
00ab67d1: 8b 74 24 08
00ab67d5: 8a 46 02
00ab67d8: 84 c0
00ab67da: 74 1a
00ab67dc: 0f be d0
00ab67df: 3b 91 80 01 00 00
00ab67e5: 7f 08
00ab67e7: 3b 91 7c 01 00 00
00ab67ed: 7d 07
00ab67ef: 83 c8 ff
00ab67f2: 5e
00ab67f3: c2 08 00
00ab67f6: 57
00ab67f7: 0f be 7e 01
00ab67fb: 0f be 36
00ab67fe: 85 f6
00ab6800: 7c 29
00ab6802: 3b b1 74 01 00 00
00ab6808: 7d 21
00ab680a: 85 ff
00ab680c: 7c 1d
00ab680e: 3b b9 78 01 00 00
00ab6814: 7d 15
00ab6816: 8b 91 7c 01 00 00
00ab681c: 0f be c0
00ab681f: 3b c2
00ab6821: 7c 08
00ab6823: 3b 81 80 01 00 00
00ab6829: 7e 08
00ab682b: 5f
00ab682c: 83 c8 ff
00ab682f: 5e
00ab6830: c2 08 00
00ab6833: 8b 89 a4 02 00 00
00ab6839: 53
00ab683a: 55
00ab683b: 2b c2
00ab683d: 50
00ab683e: 57
00ab683f: 56
00ab6840: e8 0b d6 ff ff
00ab6845: 8a 5c 24 18
00ab6849: 83 cf ff
00ab684c: 8b e8
00ab684e: 33 f6
00ab6850: 8b ce
00ab6852: b0 01
00ab6854: d2 e0
00ab6856: 8b 4c 24 14
00ab685a: 84 41 03
00ab685d: 74 24
00ab685f: 8b 44 b5 00
00ab6863: 83 f8 ff
00ab6866: 75 04
00ab6868: 84 db
00ab686a: 74 2c
00ab686c: 83 ff ff
00ab686f: 74 0e
00ab6871: 50
00ab6872: 57
00ab6873: e8 a8 bf 04 00
00ab6878: 83 c4 08
00ab687b: 84 c0
00ab687d: 74 15
00ab687f: 8b 7c b5 00
00ab6883: 83 c6 01
00ab6886: 83 fe 04
00ab6889: 7c c5
00ab688b: 5d
00ab688c: 5b
00ab688d: 8b c7
00ab688f: 5f
00ab6890: 5e
00ab6891: c2 08 00
00ab6894: 84 db
00ab6896: 75 f3
00ab6898: 5d
00ab6899: 5b
00ab689a: 5f
00ab689b: 83 c8 ff
00ab689e: 5e
00ab689f: c2 08 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: Lot_ResolveCompatibleCellRegion
Entry Point: 00ab67d0

00ab67d0: PUSH ESI
00ab67d1: MOV ESI, dword ptr [ESP + 0x8]
00ab67d5: MOV AL, byte ptr [ESI + 0x2]
00ab67d8: TEST AL, AL
00ab67da: JZ 0x00ab67f6
00ab67dc: MOVSX EDX, AL
00ab67df: CMP EDX, dword ptr [ECX + 0x180]
00ab67e5: JG 0x00ab67ef
00ab67e7: CMP EDX, dword ptr [ECX + 0x17c]
00ab67ed: JGE 0x00ab67f6
00ab67ef: OR EAX, 0xffffffff
00ab67f2: POP ESI
00ab67f3: RET 0x8
00ab67f6: PUSH EDI
00ab67f7: MOVSX EDI, byte ptr [ESI + 0x1]
00ab67fb: MOVSX ESI, byte ptr [ESI]
00ab67fe: TEST ESI, ESI
00ab6800: JL 0x00ab682b
00ab6802: CMP ESI, dword ptr [ECX + 0x174]
00ab6808: JGE 0x00ab682b
00ab680a: TEST EDI, EDI
00ab680c: JL 0x00ab682b
00ab680e: CMP EDI, dword ptr [ECX + 0x178]
00ab6814: JGE 0x00ab682b
00ab6816: MOV EDX, dword ptr [ECX + 0x17c]
00ab681c: MOVSX EAX, AL
00ab681f: CMP EAX, EDX
00ab6821: JL 0x00ab682b
00ab6823: CMP EAX, dword ptr [ECX + 0x180]
00ab6829: JLE 0x00ab6833
00ab682b: POP EDI
00ab682c: OR EAX, 0xffffffff
00ab682f: POP ESI
00ab6830: RET 0x8
00ab6833: MOV ECX, dword ptr [ECX + 0x2a4]
00ab6839: PUSH EBX
00ab683a: PUSH EBP
00ab683b: SUB EAX, EDX
00ab683d: PUSH EAX
00ab683e: PUSH EDI
00ab683f: PUSH ESI
00ab6840: CALL 0x00ab3e50
00ab6845: MOV BL, byte ptr [ESP + 0x18]
00ab6849: OR EDI, 0xffffffff
00ab684c: MOV EBP, EAX
00ab684e: XOR ESI, ESI
00ab6850: MOV ECX, ESI
00ab6852: MOV AL, 0x1
00ab6854: SHL AL, CL
00ab6856: MOV ECX, dword ptr [ESP + 0x14]
00ab685a: TEST byte ptr [ECX + 0x3], AL
00ab685d: JZ 0x00ab6883
00ab685f: MOV EAX, dword ptr [EBP + ESI*0x4]
00ab6863: CMP EAX, -0x1
00ab6866: JNZ 0x00ab686c
00ab6868: TEST BL, BL
00ab686a: JZ 0x00ab6898
00ab686c: CMP EDI, -0x1
00ab686f: JZ 0x00ab687f
00ab6871: PUSH EAX
00ab6872: PUSH EDI
00ab6873: CALL 0x00b02820
00ab6878: ADD ESP, 0x8
00ab687b: TEST AL, AL
00ab687d: JZ 0x00ab6894
00ab687f: MOV EDI, dword ptr [EBP + ESI*0x4]
00ab6883: ADD ESI, 0x1
00ab6886: CMP ESI, 0x4
00ab6889: JL 0x00ab6850
00ab688b: POP EBP
00ab688c: POP EBX
00ab688d: MOV EAX, EDI
00ab688f: POP EDI
00ab6890: POP ESI
00ab6891: RET 0x8
00ab6894: TEST BL, BL
00ab6896: JNZ 0x00ab688b
00ab6898: POP EBP
00ab6899: POP EBX
00ab689a: POP EDI
00ab689b: OR EAX, 0xffffffff
00ab689e: POP ESI
00ab689f: RET 0x8

Total instructions: 83