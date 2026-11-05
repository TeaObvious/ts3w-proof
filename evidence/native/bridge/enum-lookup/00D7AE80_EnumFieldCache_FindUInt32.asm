TS3W PC 1.67; original identity: evidence/reference.json.
Saved Ghidra evidence; current name: EnumFieldCache_FindUInt32.
Original instruction/byte blocks and ownership qualifications are unchanged.
Generated types and signatures remain projections; machine instructions are authoritative.

Original PC 1.67 TS3W.exe; final saved Ghidra Listing with original PE bytes.
Entry: 0x00D7AE80 (EnumFieldCache_FindUInt32)
Paired annotated Ghidra pseudocode: 00D7AE80_EnumFieldCache_FindUInt32.c
Owned half-open range: [0x00D7AE80,0x00D7B0F6)
Owned bytes: 630; Listing instructions: 213
Original identity: references/pc-167.md. GNU and LLVM independently agree on all instruction boundaries and bytes.
Function ownership and generated ABI remain unchanged; semantic name/comment were read back.
Analyst plate: Analyst PC1.67 UInt32 enum-field lookup. ECX receiver +0B4C locates the shared class-record-pointer-keyed cache; stored entry +4 is count, +8 packed 32-bit values, +0C parallel field pointers. Warm path calls 00B09680 then rejects end and query<candidate with unsigned ordering; only the low 32 value bits are read. Cold path enumerates E70470 fields, skips exact value__ and conditionally _Deleted under [field.type+4]&600h, lazily fills field+10/+18 through E6FAA0/E9CD80/E9B500/E9B3F0, then E9B5B0 supplies bytes read at width 32. Slot helper 00D791C0 returns the field-pointer location which is overwritten; each exact query match updates the cold result. Cache count is E6BA40(class)-1, not locally recomputed from copied pairs: duplicate/filter count invariants remain unresolved. Returns field pointer or zero; no flags composition, runtime behavior or alias/cache parity inferred.

SAVED GHIDRA LISTING WITH ORIGINAL BYTES
  00d7ae80: 83 ec 38                                     SUB ESP, 0x38
  00d7ae83: 53                                           PUSH EBX
  00d7ae84: 8b 5c 24 40                                  MOV EBX, dword ptr [ESP + 0x40]
  00d7ae88: 55                                           PUSH EBP
  00d7ae89: 56                                           PUSH ESI
  00d7ae8a: 57                                           PUSH EDI
  00d7ae8b: 8d b1 4c 0b 00 00                            LEA ESI, [ECX + 0xb4c]
  00d7ae91: 8d 44 24 1c                                  LEA EAX, [ESP + 0x1c]
  00d7ae95: 50                                           PUSH EAX
  00d7ae96: 8d 4c 24 2c                                  LEA ECX, [ESP + 0x2c]
  00d7ae9a: 51                                           PUSH ECX
  00d7ae9b: 33 ed                                        XOR EBP, EBP
  00d7ae9d: 8b ce                                        MOV ECX, ESI
  00d7ae9f: 89 6c 24 18                                  MOV dword ptr [ESP + 0x18], EBP
  00d7aea3: 89 5c 24 24                                  MOV dword ptr [ESP + 0x24], EBX
  00d7aea7: 89 74 24 2c                                  MOV dword ptr [ESP + 0x2c], ESI
  00d7aeab: e8 10 77 7b ff                               CALL 0x005325c0
  00d7aeb0: 8b 56 08                                     MOV EDX, dword ptr [ESI + 0x8]
  00d7aeb3: 8b 46 04                                     MOV EAX, dword ptr [ESI + 0x4]
  00d7aeb6: 8b 7c 24 28                                  MOV EDI, dword ptr [ESP + 0x28]
  00d7aeba: 3b 3c 90                                     CMP EDI, dword ptr [EAX + EDX*0x4]
  00d7aebd: 74 45                                        JZ 0x00d7af04
  00d7aebf: 8b 77 08                                     MOV ESI, dword ptr [EDI + 0x8]
  00d7aec2: 8b 4f 04                                     MOV ECX, dword ptr [EDI + 0x4]
  00d7aec5: 8d 54 24 50                                  LEA EDX, [ESP + 0x50]
  00d7aec9: 52                                           PUSH EDX
  00d7aeca: 8d 1c 8e                                     LEA EBX, [ESI + ECX*0x4]
  00d7aecd: 53                                           PUSH EBX
  00d7aece: 56                                           PUSH ESI
  00d7aecf: e8 ac e7 d8 ff                               CALL 0x00b09680
  00d7aed4: 83 c4 0c                                     ADD ESP, 0xc
  00d7aed7: 3b c3                                        CMP EAX, EBX
  00d7aed9: 0f 84 09 02 00 00                            JZ 0x00d7b0e8
  00d7aedf: 8b 4c 24 50                                  MOV ECX, dword ptr [ESP + 0x50]
  00d7aee3: 3b 08                                        CMP ECX, dword ptr [EAX]
  00d7aee5: 0f 82 fd 01 00 00                            JC 0x00d7b0e8
  00d7aeeb: 8b 57 0c                                     MOV EDX, dword ptr [EDI + 0xc]
  00d7aeee: 2b c6                                        SUB EAX, ESI
  00d7aef0: 5f                                           POP EDI
  00d7aef1: 5e                                           POP ESI
  00d7aef2: c1 f8 02                                     SAR EAX, 0x2
  00d7aef5: 8b 04 82                                     MOV EAX, dword ptr [EDX + EAX*0x4]
  00d7aef8: 5d                                           POP EBP
  00d7aef9: 89 44 24 04                                  MOV dword ptr [ESP + 0x4], EAX
  00d7aefd: 5b                                           POP EBX
  00d7aefe: 83 c4 38                                     ADD ESP, 0x38
  00d7af01: c2 08 00                                     RET 0x8
  00d7af04: 53                                           PUSH EBX
  00d7af05: 89 6c 24 38                                  MOV dword ptr [ESP + 0x38], EBP
  00d7af09: 89 6c 24 3c                                  MOV dword ptr [ESP + 0x3c], EBP
  00d7af0d: 89 6c 24 40                                  MOV dword ptr [ESP + 0x40], EBP
  00d7af11: c7 44 24 44 ac c5 08 01                      MOV dword ptr [ESP + 0x44], 0x108c5ac
  00d7af19: e8 22 0b 0f 00                               CALL 0x00e6ba40
  00d7af1e: 8b f8                                        MOV EDI, EAX
  00d7af20: 83 ef 01                                     SUB EDI, 0x1
  00d7af23: 83 c4 04                                     ADD ESP, 0x4
  00d7af26: 3b fd                                        CMP EDI, EBP
  00d7af28: 89 7c 24 28                                  MOV dword ptr [ESP + 0x28], EDI
  00d7af2c: 0f 8e 35 01 00 00                            JLE 0x00d7b067
  00d7af32: 57                                           PUSH EDI
  00d7af33: 8d 4c 24 38                                  LEA ECX, [ESP + 0x38]
  00d7af37: e8 e4 a3 ff ff                               CALL 0x00d75320
  00d7af3c: 8d 4c 24 18                                  LEA ECX, [ESP + 0x18]
  00d7af40: 51                                           PUSH ECX
  00d7af41: 53                                           PUSH EBX
  00d7af42: 89 6c 24 20                                  MOV dword ptr [ESP + 0x20], EBP
  00d7af46: c7 44 24 54 ff ff ff ff                      MOV dword ptr [ESP + 0x54], 0xffffffff
  00d7af4e: e8 1d 55 0f 00                               CALL 0x00e70470
  00d7af53: 8b e8                                        MOV EBP, EAX
  00d7af55: 83 c4 08                                     ADD ESP, 0x8
  00d7af58: 85 ed                                        TEST EBP, EBP
  00d7af5a: 0f 84 ee 00 00 00                            JZ 0x00d7b04e
  00d7af60: 8b 45 0c                                     MOV EAX, dword ptr [EBP + 0xc]
  00d7af63: 8b f8                                        MOV EDI, EAX
  00d7af65: be a4 c5 08 01                               MOV ESI, 0x108c5a4
  00d7af6a: b9 08 00 00 00                               MOV ECX, 0x8
  00d7af6f: 33 d2                                        XOR EDX, EDX
  00d7af71: f3 a6                                        CMPSB.REPE ES:EDI, ESI
  00d7af73: 0f 84 b5 00 00 00                            JZ 0x00d7b02e
  00d7af79: 8b 4d 00                                     MOV ECX, dword ptr [EBP]
  00d7af7c: f7 41 04 00 06 00 00                         TEST dword ptr [ECX + 0x4], 0x600
  00d7af83: 74 16                                        JZ 0x00d7af9b
  00d7af85: bf 98 c5 08 01                               MOV EDI, 0x108c598
  00d7af8a: 8b f0                                        MOV ESI, EAX
  00d7af8c: b9 09 00 00 00                               MOV ECX, 0x9
  00d7af91: 33 d2                                        XOR EDX, EDX
  00d7af93: f3 a6                                        CMPSB.REPE ES:EDI, ESI
  00d7af95: 0f 84 93 00 00 00                            JZ 0x00d7b02e
  00d7af9b: 83 7d 10 00                                  CMP dword ptr [EBP + 0x10], 0x0
  00d7af9f: 75 54                                        JNZ 0x00d7aff5
  00d7afa1: 8b 44 24 4c                                  MOV EAX, dword ptr [ESP + 0x4c]
  00d7afa5: 83 c0 01                                     ADD EAX, 0x1
  00d7afa8: 50                                           PUSH EAX
  00d7afa9: 55                                           PUSH EBP
  00d7afaa: e8 f1 4a 0f 00                               CALL 0x00e6faa0
  00d7afaf: 8b 0b                                        MOV ECX, dword ptr [EBX]
  00d7afb1: 83 c4 04                                     ADD ESP, 0x4
  00d7afb4: 50                                           PUSH EAX
  00d7afb5: 51                                           PUSH ECX
  00d7afb6: e8 c5 1d 12 00                               CALL 0x00e9cd80
  00d7afbb: 8b 13                                        MOV EDX, dword ptr [EBX]
  00d7afbd: 8d 70 ff                                     LEA ESI, [EAX + -0x1]
  00d7afc0: 6a 00                                        PUSH 0x0
  00d7afc2: 81 c2 e8 00 00 00                            ADD EDX, 0xe8
  00d7afc8: 56                                           PUSH ESI
  00d7afc9: 52                                           PUSH EDX
  00d7afca: e8 31 05 12 00                               CALL 0x00e9b500
  00d7afcf: 89 45 18                                     MOV dword ptr [EBP + 0x18], EAX
  00d7afd2: 8b 03                                        MOV EAX, dword ptr [EBX]
  00d7afd4: 6a 03                                        PUSH 0x3
  00d7afd6: 05 e8 00 00 00                               ADD EAX, 0xe8
  00d7afdb: 56                                           PUSH ESI
  00d7afdc: 50                                           PUSH EAX
  00d7afdd: e8 1e 05 12 00                               CALL 0x00e9b500
  00d7afe2: 8b 0b                                        MOV ECX, dword ptr [EBX]
  00d7afe4: 50                                           PUSH EAX
  00d7afe5: 51                                           PUSH ECX
  00d7afe6: 89 44 24 78                                  MOV dword ptr [ESP + 0x78], EAX
  00d7afea: e8 01 04 12 00                               CALL 0x00e9b3f0
  00d7afef: 83 c4 2c                                     ADD ESP, 0x2c
  00d7aff2: 89 45 10                                     MOV dword ptr [EBP + 0x10], EAX
  00d7aff5: 8b 45 10                                     MOV EAX, dword ptr [EBP + 0x10]
  00d7aff8: 8d 54 24 14                                  LEA EDX, [ESP + 0x14]
  00d7affc: 52                                           PUSH EDX
  00d7affd: 50                                           PUSH EAX
  00d7affe: 89 44 24 1c                                  MOV dword ptr [ESP + 0x1c], EAX
  00d7b002: e8 a9 05 12 00                               CALL 0x00e9b5b0
  00d7b007: 8b 44 24 1c                                  MOV EAX, dword ptr [ESP + 0x1c]
  00d7b00b: 8b 30                                        MOV ESI, dword ptr [EAX]
  00d7b00d: 83 c4 08                                     ADD ESP, 0x8
  00d7b010: 8d 4c 24 20                                  LEA ECX, [ESP + 0x20]
  00d7b014: 51                                           PUSH ECX
  00d7b015: 8d 4c 24 38                                  LEA ECX, [ESP + 0x38]
  00d7b019: 89 74 24 24                                  MOV dword ptr [ESP + 0x24], ESI
  00d7b01d: e8 9e e1 ff ff                               CALL 0x00d791c0
  00d7b022: 3b 74 24 50                                  CMP ESI, dword ptr [ESP + 0x50]
  00d7b026: 89 28                                        MOV dword ptr [EAX], EBP
  00d7b028: 75 04                                        JNZ 0x00d7b02e
  00d7b02a: 89 6c 24 10                                  MOV dword ptr [ESP + 0x10], EBP
  00d7b02e: 8d 54 24 18                                  LEA EDX, [ESP + 0x18]
  00d7b032: 52                                           PUSH EDX
  00d7b033: 53                                           PUSH EBX
  00d7b034: e8 37 54 0f 00                               CALL 0x00e70470
  00d7b039: 8b e8                                        MOV EBP, EAX
  00d7b03b: 83 c4 08                                     ADD ESP, 0x8
  00d7b03e: 85 ed                                        TEST EBP, EBP
  00d7b040: 0f 85 1a ff ff ff                            JNZ 0x00d7af60
  00d7b046: 8b 74 24 24                                  MOV ESI, dword ptr [ESP + 0x24]
  00d7b04a: 8b 7c 24 28                                  MOV EDI, dword ptr [ESP + 0x28]
  00d7b04e: 8b 5c 24 34                                  MOV EBX, dword ptr [ESP + 0x34]
  00d7b052: 8b 6c 24 38                                  MOV EBP, dword ptr [ESP + 0x38]
  00d7b056: 3b dd                                        CMP EBX, EBP
  00d7b058: 75 19                                        JNZ 0x00d7b073
  00d7b05a: 85 db                                        TEST EBX, EBX
  00d7b05c: 74 09                                        JZ 0x00d7b067
  00d7b05e: 53                                           PUSH EBX
  00d7b05f: e8 7c 94 76 ff                               CALL 0x004e44e0
  00d7b064: 83 c4 04                                     ADD ESP, 0x4
  00d7b067: 5f                                           POP EDI
  00d7b068: 5e                                           POP ESI
  00d7b069: 5d                                           POP EBP
  00d7b06a: 33 c0                                        XOR EAX, EAX
  00d7b06c: 5b                                           POP EBX
  00d7b06d: 83 c4 38                                     ADD ESP, 0x38
  00d7b070: c2 08 00                                     RET 0x8
  00d7b073: c6 44 24 50 00                               MOV byte ptr [ESP + 0x50], 0x0
  00d7b078: 8b 44 24 50                                  MOV EAX, dword ptr [ESP + 0x50]
  00d7b07c: 50                                           PUSH EAX
  00d7b07d: 8d 4c 24 20                                  LEA ECX, [ESP + 0x20]
  00d7b081: 51                                           PUSH ECX
  00d7b082: 8d 54 24 30                                  LEA EDX, [ESP + 0x30]
  00d7b086: 52                                           PUSH EDX
  00d7b087: 8b ce                                        MOV ECX, ESI
  00d7b089: e8 62 8a ff ff                               CALL 0x00d73af0
  00d7b08e: 8b 74 24 28                                  MOV ESI, dword ptr [ESP + 0x28]
  00d7b092: 89 7e 04                                     MOV dword ptr [ESI + 0x4], EDI
  00d7b095: 8b 0d 64 c8 1c 01                            MOV ECX, dword ptr [0x011cc864]
  00d7b09b: 03 ff                                        ADD EDI, EDI
  00d7b09d: 6a 00                                        PUSH 0x0
  00d7b09f: 03 ff                                        ADD EDI, EDI
  00d7b0a1: 57                                           PUSH EDI
  00d7b0a2: e8 79 be 76 ff                               CALL 0x004e6f20
  00d7b0a7: 6a 00                                        PUSH 0x0
  00d7b0a9: 89 46 0c                                     MOV dword ptr [ESI + 0xc], EAX
  00d7b0ac: 8b 0d 64 c8 1c 01                            MOV ECX, dword ptr [0x011cc864]
  00d7b0b2: 57                                           PUSH EDI
  00d7b0b3: e8 68 be 76 ff                               CALL 0x004e6f20
  00d7b0b8: 89 46 08                                     MOV dword ptr [ESI + 0x8], EAX
  00d7b0bb: 8b c3                                        MOV EAX, EBX
  00d7b0bd: 33 c9                                        XOR ECX, ECX
  00d7b0bf: 90                                           NOP
  00d7b0c0: 8b 38                                        MOV EDI, dword ptr [EAX]
  00d7b0c2: 8b 56 08                                     MOV EDX, dword ptr [ESI + 0x8]
  00d7b0c5: 89 3c 11                                     MOV dword ptr [ECX + EDX*0x1], EDI
  00d7b0c8: 8b 78 04                                     MOV EDI, dword ptr [EAX + 0x4]
  00d7b0cb: 8b 56 0c                                     MOV EDX, dword ptr [ESI + 0xc]
  00d7b0ce: 89 3c 11                                     MOV dword ptr [ECX + EDX*0x1], EDI
  00d7b0d1: 83 c0 08                                     ADD EAX, 0x8
  00d7b0d4: 83 c1 04                                     ADD ECX, 0x4
  00d7b0d7: 3b c5                                        CMP EAX, EBP
  00d7b0d9: 75 e5                                        JNZ 0x00d7b0c0
  00d7b0db: 85 db                                        TEST EBX, EBX
  00d7b0dd: 74 09                                        JZ 0x00d7b0e8
  00d7b0df: 53                                           PUSH EBX
  00d7b0e0: e8 fb 93 76 ff                               CALL 0x004e44e0
  00d7b0e5: 83 c4 04                                     ADD ESP, 0x4
  00d7b0e8: 8b 44 24 10                                  MOV EAX, dword ptr [ESP + 0x10]
  00d7b0ec: 5f                                           POP EDI
  00d7b0ed: 5e                                           POP ESI
  00d7b0ee: 5d                                           POP EBP
  00d7b0ef: 5b                                           POP EBX
  00d7b0f0: 83 c4 38                                     ADD ESP, 0x38
  00d7b0f3: c2 08 00                                     RET 0x8
