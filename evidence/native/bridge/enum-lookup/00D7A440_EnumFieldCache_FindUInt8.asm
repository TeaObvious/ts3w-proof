TS3W PC 1.67; original identity: evidence/reference.json.
Saved Ghidra evidence; current name: EnumFieldCache_FindUInt8.
Original instruction/byte blocks and ownership qualifications are unchanged.
Generated types and signatures remain projections; machine instructions are authoritative.

Original PC 1.67 TS3W.exe; final saved Ghidra Listing with original PE bytes.
Entry: 0x00D7A440 (EnumFieldCache_FindUInt8)
Paired annotated Ghidra pseudocode: 00D7A440_EnumFieldCache_FindUInt8.c
Owned half-open range: [0x00D7A440,0x00D7A6C4)
Owned bytes: 644; Listing instructions: 215
Original identity: references/pc-167.md. GNU and LLVM independently agree on all instruction boundaries and bytes.
Function ownership and generated ABI remain unchanged; semantic name/comment were read back.
Analyst plate: Analyst PC1.67 UInt8 enum-field lookup. Value words are scalar stack storage; the preserved pointer-looking decompiler parameter is not dereferenced. ECX receiver +0B4C locates the shared class-record-pointer-keyed cache; stored entry +4 is count, +8 packed 8-bit values, +0C parallel field pointers. Warm path calls 00D73210 then rejects end and query<candidate with unsigned ordering; only the low 8 value bits are read. Cold path enumerates E70470 fields, skips exact value__ and conditionally _Deleted under [field.type+4]&600h, lazily fills field+10/+18 through E6FAA0/E9CD80/E9B500/E9B3F0, then E9B5B0 supplies bytes read at width 8. Slot helper 00D78F80 returns the field-pointer location which is overwritten; each exact query match updates the cold result. Cache count is E6BA40(class)-1, not locally recomputed from copied pairs: duplicate/filter count invariants remain unresolved. Returns field pointer or zero; no flags composition, runtime behavior or alias/cache parity inferred.

SAVED GHIDRA LISTING WITH ORIGINAL BYTES
  00d7a440: 83 ec 38                                     SUB ESP, 0x38
  00d7a443: 53                                           PUSH EBX
  00d7a444: 8b 5c 24 40                                  MOV EBX, dword ptr [ESP + 0x40]
  00d7a448: 55                                           PUSH EBP
  00d7a449: 56                                           PUSH ESI
  00d7a44a: 57                                           PUSH EDI
  00d7a44b: 8d b1 4c 0b 00 00                            LEA ESI, [ECX + 0xb4c]
  00d7a451: 8d 44 24 20                                  LEA EAX, [ESP + 0x20]
  00d7a455: 50                                           PUSH EAX
  00d7a456: 8d 4c 24 2c                                  LEA ECX, [ESP + 0x2c]
  00d7a45a: 51                                           PUSH ECX
  00d7a45b: 33 ed                                        XOR EBP, EBP
  00d7a45d: 8b ce                                        MOV ECX, ESI
  00d7a45f: 89 6c 24 18                                  MOV dword ptr [ESP + 0x18], EBP
  00d7a463: 89 5c 24 28                                  MOV dword ptr [ESP + 0x28], EBX
  00d7a467: 89 74 24 2c                                  MOV dword ptr [ESP + 0x2c], ESI
  00d7a46b: e8 50 81 7b ff                               CALL 0x005325c0
  00d7a470: 8b 56 08                                     MOV EDX, dword ptr [ESI + 0x8]
  00d7a473: 8b 46 04                                     MOV EAX, dword ptr [ESI + 0x4]
  00d7a476: 8b 7c 24 28                                  MOV EDI, dword ptr [ESP + 0x28]
  00d7a47a: 3b 3c 90                                     CMP EDI, dword ptr [EAX + EDX*0x4]
  00d7a47d: 74 43                                        JZ 0x00d7a4c2
  00d7a47f: 8b 5f 08                                     MOV EBX, dword ptr [EDI + 0x8]
  00d7a482: 8b 77 04                                     MOV ESI, dword ptr [EDI + 0x4]
  00d7a485: 8d 4c 24 50                                  LEA ECX, [ESP + 0x50]
  00d7a489: 51                                           PUSH ECX
  00d7a48a: 03 f3                                        ADD ESI, EBX
  00d7a48c: 56                                           PUSH ESI
  00d7a48d: 53                                           PUSH EBX
  00d7a48e: e8 7d 8d ff ff                               CALL 0x00d73210
  00d7a493: 83 c4 0c                                     ADD ESP, 0xc
  00d7a496: 3b c6                                        CMP EAX, ESI
  00d7a498: 0f 84 18 02 00 00                            JZ 0x00d7a6b6
  00d7a49e: 8a 54 24 50                                  MOV DL, byte ptr [ESP + 0x50]
  00d7a4a2: 3a 10                                        CMP DL, byte ptr [EAX]
  00d7a4a4: 0f 82 0c 02 00 00                            JC 0x00d7a6b6
  00d7a4aa: 8b 4f 0c                                     MOV ECX, dword ptr [EDI + 0xc]
  00d7a4ad: 5f                                           POP EDI
  00d7a4ae: 2b c3                                        SUB EAX, EBX
  00d7a4b0: 8b 14 81                                     MOV EDX, dword ptr [ECX + EAX*0x4]
  00d7a4b3: 5e                                           POP ESI
  00d7a4b4: 5d                                           POP EBP
  00d7a4b5: 89 54 24 04                                  MOV dword ptr [ESP + 0x4], EDX
  00d7a4b9: 8b c2                                        MOV EAX, EDX
  00d7a4bb: 5b                                           POP EBX
  00d7a4bc: 83 c4 38                                     ADD ESP, 0x38
  00d7a4bf: c2 08 00                                     RET 0x8
  00d7a4c2: 53                                           PUSH EBX
  00d7a4c3: 89 6c 24 38                                  MOV dword ptr [ESP + 0x38], EBP
  00d7a4c7: 89 6c 24 3c                                  MOV dword ptr [ESP + 0x3c], EBP
  00d7a4cb: 89 6c 24 40                                  MOV dword ptr [ESP + 0x40], EBP
  00d7a4cf: c7 44 24 44 ac c5 08 01                      MOV dword ptr [ESP + 0x44], 0x108c5ac
  00d7a4d7: e8 64 15 0f 00                               CALL 0x00e6ba40
  00d7a4dc: 8b f8                                        MOV EDI, EAX
  00d7a4de: 83 ef 01                                     SUB EDI, 0x1
  00d7a4e1: 83 c4 04                                     ADD ESP, 0x4
  00d7a4e4: 3b fd                                        CMP EDI, EBP
  00d7a4e6: 89 7c 24 28                                  MOV dword ptr [ESP + 0x28], EDI
  00d7a4ea: 0f 8e 3b 01 00 00                            JLE 0x00d7a62b
  00d7a4f0: 57                                           PUSH EDI
  00d7a4f1: 8d 4c 24 38                                  LEA ECX, [ESP + 0x38]
  00d7a4f5: e8 26 ae ff ff                               CALL 0x00d75320
  00d7a4fa: 8d 44 24 1c                                  LEA EAX, [ESP + 0x1c]
  00d7a4fe: 50                                           PUSH EAX
  00d7a4ff: 53                                           PUSH EBX
  00d7a500: 89 6c 24 24                                  MOV dword ptr [ESP + 0x24], EBP
  00d7a504: c7 44 24 1c ff ff ff ff                      MOV dword ptr [ESP + 0x1c], 0xffffffff
  00d7a50c: e8 5f 5f 0f 00                               CALL 0x00e70470
  00d7a511: 8b e8                                        MOV EBP, EAX
  00d7a513: 83 c4 08                                     ADD ESP, 0x8
  00d7a516: 85 ed                                        TEST EBP, EBP
  00d7a518: 0f 84 f4 00 00 00                            JZ 0x00d7a612
  00d7a51e: 8b ff                                        MOV EDI, EDI
  00d7a520: 8b 45 0c                                     MOV EAX, dword ptr [EBP + 0xc]
  00d7a523: 8b f8                                        MOV EDI, EAX
  00d7a525: be a4 c5 08 01                               MOV ESI, 0x108c5a4
  00d7a52a: b9 08 00 00 00                               MOV ECX, 0x8
  00d7a52f: 33 d2                                        XOR EDX, EDX
  00d7a531: f3 a6                                        CMPSB.REPE ES:EDI, ESI
  00d7a533: 0f 84 b9 00 00 00                            JZ 0x00d7a5f2
  00d7a539: 8b 4d 00                                     MOV ECX, dword ptr [EBP]
  00d7a53c: f7 41 04 00 06 00 00                         TEST dword ptr [ECX + 0x4], 0x600
  00d7a543: 74 16                                        JZ 0x00d7a55b
  00d7a545: bf 98 c5 08 01                               MOV EDI, 0x108c598
  00d7a54a: 8b f0                                        MOV ESI, EAX
  00d7a54c: b9 09 00 00 00                               MOV ECX, 0x9
  00d7a551: 33 d2                                        XOR EDX, EDX
  00d7a553: f3 a6                                        CMPSB.REPE ES:EDI, ESI
  00d7a555: 0f 84 97 00 00 00                            JZ 0x00d7a5f2
  00d7a55b: 83 7d 10 00                                  CMP dword ptr [EBP + 0x10], 0x0
  00d7a55f: 75 54                                        JNZ 0x00d7a5b5
  00d7a561: 8b 44 24 14                                  MOV EAX, dword ptr [ESP + 0x14]
  00d7a565: 83 c0 01                                     ADD EAX, 0x1
  00d7a568: 50                                           PUSH EAX
  00d7a569: 55                                           PUSH EBP
  00d7a56a: e8 31 55 0f 00                               CALL 0x00e6faa0
  00d7a56f: 8b 0b                                        MOV ECX, dword ptr [EBX]
  00d7a571: 83 c4 04                                     ADD ESP, 0x4
  00d7a574: 50                                           PUSH EAX
  00d7a575: 51                                           PUSH ECX
  00d7a576: e8 05 28 12 00                               CALL 0x00e9cd80
  00d7a57b: 8b 13                                        MOV EDX, dword ptr [EBX]
  00d7a57d: 8d 70 ff                                     LEA ESI, [EAX + -0x1]
  00d7a580: 6a 00                                        PUSH 0x0
  00d7a582: 81 c2 e8 00 00 00                            ADD EDX, 0xe8
  00d7a588: 56                                           PUSH ESI
  00d7a589: 52                                           PUSH EDX
  00d7a58a: e8 71 0f 12 00                               CALL 0x00e9b500
  00d7a58f: 89 45 18                                     MOV dword ptr [EBP + 0x18], EAX
  00d7a592: 8b 03                                        MOV EAX, dword ptr [EBX]
  00d7a594: 6a 03                                        PUSH 0x3
  00d7a596: 05 e8 00 00 00                               ADD EAX, 0xe8
  00d7a59b: 56                                           PUSH ESI
  00d7a59c: 50                                           PUSH EAX
  00d7a59d: e8 5e 0f 12 00                               CALL 0x00e9b500
  00d7a5a2: 8b 0b                                        MOV ECX, dword ptr [EBX]
  00d7a5a4: 50                                           PUSH EAX
  00d7a5a5: 51                                           PUSH ECX
  00d7a5a6: 89 44 24 40                                  MOV dword ptr [ESP + 0x40], EAX
  00d7a5aa: e8 41 0e 12 00                               CALL 0x00e9b3f0
  00d7a5af: 83 c4 2c                                     ADD ESP, 0x2c
  00d7a5b2: 89 45 10                                     MOV dword ptr [EBP + 0x10], EAX
  00d7a5b5: 8b 45 10                                     MOV EAX, dword ptr [EBP + 0x10]
  00d7a5b8: 8d 54 24 18                                  LEA EDX, [ESP + 0x18]
  00d7a5bc: 52                                           PUSH EDX
  00d7a5bd: 50                                           PUSH EAX
  00d7a5be: 89 44 24 20                                  MOV dword ptr [ESP + 0x20], EAX
  00d7a5c2: e8 e9 0f 12 00                               CALL 0x00e9b5b0
  00d7a5c7: 8b 44 24 20                                  MOV EAX, dword ptr [ESP + 0x20]
  00d7a5cb: 8a 08                                        MOV CL, byte ptr [EAX]
  00d7a5cd: 83 c4 08                                     ADD ESP, 0x8
  00d7a5d0: 8d 54 24 4c                                  LEA EDX, [ESP + 0x4c]
  00d7a5d4: 88 4c 24 4c                                  MOV byte ptr [ESP + 0x4c], CL
  00d7a5d8: 52                                           PUSH EDX
  00d7a5d9: 8d 4c 24 38                                  LEA ECX, [ESP + 0x38]
  00d7a5dd: e8 9e e9 ff ff                               CALL 0x00d78f80
  00d7a5e2: 89 28                                        MOV dword ptr [EAX], EBP
  00d7a5e4: 8a 44 24 50                                  MOV AL, byte ptr [ESP + 0x50]
  00d7a5e8: 38 44 24 4c                                  CMP byte ptr [ESP + 0x4c], AL
  00d7a5ec: 75 04                                        JNZ 0x00d7a5f2
  00d7a5ee: 89 6c 24 10                                  MOV dword ptr [ESP + 0x10], EBP
  00d7a5f2: 8d 4c 24 1c                                  LEA ECX, [ESP + 0x1c]
  00d7a5f6: 51                                           PUSH ECX
  00d7a5f7: 53                                           PUSH EBX
  00d7a5f8: e8 73 5e 0f 00                               CALL 0x00e70470
  00d7a5fd: 8b e8                                        MOV EBP, EAX
  00d7a5ff: 83 c4 08                                     ADD ESP, 0x8
  00d7a602: 85 ed                                        TEST EBP, EBP
  00d7a604: 0f 85 16 ff ff ff                            JNZ 0x00d7a520
  00d7a60a: 8b 74 24 24                                  MOV ESI, dword ptr [ESP + 0x24]
  00d7a60e: 8b 7c 24 28                                  MOV EDI, dword ptr [ESP + 0x28]
  00d7a612: 8b 5c 24 34                                  MOV EBX, dword ptr [ESP + 0x34]
  00d7a616: 8b 6c 24 38                                  MOV EBP, dword ptr [ESP + 0x38]
  00d7a61a: 3b dd                                        CMP EBX, EBP
  00d7a61c: 75 19                                        JNZ 0x00d7a637
  00d7a61e: 85 db                                        TEST EBX, EBX
  00d7a620: 74 09                                        JZ 0x00d7a62b
  00d7a622: 53                                           PUSH EBX
  00d7a623: e8 b8 9e 76 ff                               CALL 0x004e44e0
  00d7a628: 83 c4 04                                     ADD ESP, 0x4
  00d7a62b: 5f                                           POP EDI
  00d7a62c: 5e                                           POP ESI
  00d7a62d: 5d                                           POP EBP
  00d7a62e: 33 c0                                        XOR EAX, EAX
  00d7a630: 5b                                           POP EBX
  00d7a631: 83 c4 38                                     ADD ESP, 0x38
  00d7a634: c2 08 00                                     RET 0x8
  00d7a637: c6 44 24 50 00                               MOV byte ptr [ESP + 0x50], 0x0
  00d7a63c: 8b 54 24 50                                  MOV EDX, dword ptr [ESP + 0x50]
  00d7a640: 52                                           PUSH EDX
  00d7a641: 8d 44 24 24                                  LEA EAX, [ESP + 0x24]
  00d7a645: 50                                           PUSH EAX
  00d7a646: 8d 4c 24 30                                  LEA ECX, [ESP + 0x30]
  00d7a64a: 51                                           PUSH ECX
  00d7a64b: 8b ce                                        MOV ECX, ESI
  00d7a64d: e8 9e 94 ff ff                               CALL 0x00d73af0
  00d7a652: 8b 74 24 28                                  MOV ESI, dword ptr [ESP + 0x28]
  00d7a656: 6a 00                                        PUSH 0x0
  00d7a658: 8d 14 bd 00 00 00 00                         LEA EDX, [EDI*0x4 + 0x0]
  00d7a65f: 89 7e 04                                     MOV dword ptr [ESI + 0x4], EDI
  00d7a662: 8b 0d 64 c8 1c 01                            MOV ECX, dword ptr [0x011cc864]
  00d7a668: 52                                           PUSH EDX
  00d7a669: e8 b2 c8 76 ff                               CALL 0x004e6f20
  00d7a66e: 6a 00                                        PUSH 0x0
  00d7a670: 89 46 0c                                     MOV dword ptr [ESI + 0xc], EAX
  00d7a673: 8b 0d 64 c8 1c 01                            MOV ECX, dword ptr [0x011cc864]
  00d7a679: 57                                           PUSH EDI
  00d7a67a: e8 a1 c8 76 ff                               CALL 0x004e6f20
  00d7a67f: 89 46 08                                     MOV dword ptr [ESI + 0x8], EAX
  00d7a682: 33 c9                                        XOR ECX, ECX
  00d7a684: 8b c3                                        MOV EAX, EBX
  00d7a686: 8b 56 08                                     MOV EDX, dword ptr [ESI + 0x8]
  00d7a689: 89 5c 24 50                                  MOV dword ptr [ESP + 0x50], EBX
  00d7a68d: 8a 18                                        MOV BL, byte ptr [EAX]
  00d7a68f: 88 1c 11                                     MOV byte ptr [ECX + EDX*0x1], BL
  00d7a692: 8b 78 04                                     MOV EDI, dword ptr [EAX + 0x4]
  00d7a695: 8b 56 0c                                     MOV EDX, dword ptr [ESI + 0xc]
  00d7a698: 8b 5c 24 50                                  MOV EBX, dword ptr [ESP + 0x50]
  00d7a69c: 89 3c 8a                                     MOV dword ptr [EDX + ECX*0x4], EDI
  00d7a69f: 83 c0 08                                     ADD EAX, 0x8
  00d7a6a2: 83 c1 01                                     ADD ECX, 0x1
  00d7a6a5: 3b c5                                        CMP EAX, EBP
  00d7a6a7: 75 dd                                        JNZ 0x00d7a686
  00d7a6a9: 85 db                                        TEST EBX, EBX
  00d7a6ab: 74 09                                        JZ 0x00d7a6b6
  00d7a6ad: 53                                           PUSH EBX
  00d7a6ae: e8 2d 9e 76 ff                               CALL 0x004e44e0
  00d7a6b3: 83 c4 04                                     ADD ESP, 0x4
  00d7a6b6: 8b 44 24 10                                  MOV EAX, dword ptr [ESP + 0x10]
  00d7a6ba: 5f                                           POP EDI
  00d7a6bb: 5e                                           POP ESI
  00d7a6bc: 5d                                           POP EBP
  00d7a6bd: 5b                                           POP EBX
  00d7a6be: 83 c4 38                                     ADD ESP, 0x38
  00d7a6c1: c2 08 00                                     RET 0x8
