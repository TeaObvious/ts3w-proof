TS3W PC 1.67; original identity: evidence/reference.json.
Saved Ghidra evidence; current name: EnumFieldCache_FindInt32.
Original instruction/byte blocks and ownership qualifications are unchanged.
Generated types and signatures remain projections; machine instructions are authoritative.

Original PC 1.67 TS3W.exe; final saved Ghidra Listing with original PE bytes.
Entry: 0x00D7B100 (EnumFieldCache_FindInt32)
Paired annotated Ghidra pseudocode: 00D7B100_EnumFieldCache_FindInt32.c
Owned half-open range: [0x00D7B100,0x00D7B376)
Owned bytes: 630; Listing instructions: 213
Original identity: references/pc-167.md. GNU and LLVM independently agree on all instruction boundaries and bytes.
Function ownership and generated ABI remain unchanged; semantic name/comment were read back.
Analyst plate: Analyst PC1.67 Int32 enum-field lookup. ECX receiver +0B4C locates the shared class-record-pointer-keyed cache; stored entry +4 is count, +8 packed 32-bit values, +0C parallel field pointers. Warm path calls 0082A5E0 then rejects end and query<candidate with signed ordering; only the low 32 value bits are read. Cold path enumerates E70470 fields, skips exact value__ and conditionally _Deleted under [field.type+4]&600h, lazily fills field+10/+18 through E6FAA0/E9CD80/E9B500/E9B3F0, then E9B5B0 supplies bytes read at width 32. Slot helper 00D79250 returns the field-pointer location which is overwritten; each exact query match updates the cold result. Cache count is E6BA40(class)-1, not locally recomputed from copied pairs: duplicate/filter count invariants remain unresolved. Returns field pointer or zero; no flags composition, runtime behavior or alias/cache parity inferred.

SAVED GHIDRA LISTING WITH ORIGINAL BYTES
  00d7b100: 83 ec 38                                     SUB ESP, 0x38
  00d7b103: 53                                           PUSH EBX
  00d7b104: 8b 5c 24 40                                  MOV EBX, dword ptr [ESP + 0x40]
  00d7b108: 55                                           PUSH EBP
  00d7b109: 56                                           PUSH ESI
  00d7b10a: 57                                           PUSH EDI
  00d7b10b: 8d b1 4c 0b 00 00                            LEA ESI, [ECX + 0xb4c]
  00d7b111: 8d 44 24 1c                                  LEA EAX, [ESP + 0x1c]
  00d7b115: 50                                           PUSH EAX
  00d7b116: 8d 4c 24 2c                                  LEA ECX, [ESP + 0x2c]
  00d7b11a: 51                                           PUSH ECX
  00d7b11b: 33 ed                                        XOR EBP, EBP
  00d7b11d: 8b ce                                        MOV ECX, ESI
  00d7b11f: 89 6c 24 18                                  MOV dword ptr [ESP + 0x18], EBP
  00d7b123: 89 5c 24 24                                  MOV dword ptr [ESP + 0x24], EBX
  00d7b127: 89 74 24 2c                                  MOV dword ptr [ESP + 0x2c], ESI
  00d7b12b: e8 90 74 7b ff                               CALL 0x005325c0
  00d7b130: 8b 56 08                                     MOV EDX, dword ptr [ESI + 0x8]
  00d7b133: 8b 46 04                                     MOV EAX, dword ptr [ESI + 0x4]
  00d7b136: 8b 7c 24 28                                  MOV EDI, dword ptr [ESP + 0x28]
  00d7b13a: 3b 3c 90                                     CMP EDI, dword ptr [EAX + EDX*0x4]
  00d7b13d: 74 45                                        JZ 0x00d7b184
  00d7b13f: 8b 77 08                                     MOV ESI, dword ptr [EDI + 0x8]
  00d7b142: 8b 4f 04                                     MOV ECX, dword ptr [EDI + 0x4]
  00d7b145: 8d 54 24 50                                  LEA EDX, [ESP + 0x50]
  00d7b149: 52                                           PUSH EDX
  00d7b14a: 8d 1c 8e                                     LEA EBX, [ESI + ECX*0x4]
  00d7b14d: 53                                           PUSH EBX
  00d7b14e: 56                                           PUSH ESI
  00d7b14f: e8 8c f4 aa ff                               CALL 0x0082a5e0
  00d7b154: 83 c4 0c                                     ADD ESP, 0xc
  00d7b157: 3b c3                                        CMP EAX, EBX
  00d7b159: 0f 84 09 02 00 00                            JZ 0x00d7b368
  00d7b15f: 8b 4c 24 50                                  MOV ECX, dword ptr [ESP + 0x50]
  00d7b163: 3b 08                                        CMP ECX, dword ptr [EAX]
  00d7b165: 0f 8c fd 01 00 00                            JL 0x00d7b368
  00d7b16b: 8b 57 0c                                     MOV EDX, dword ptr [EDI + 0xc]
  00d7b16e: 2b c6                                        SUB EAX, ESI
  00d7b170: 5f                                           POP EDI
  00d7b171: 5e                                           POP ESI
  00d7b172: c1 f8 02                                     SAR EAX, 0x2
  00d7b175: 8b 04 82                                     MOV EAX, dword ptr [EDX + EAX*0x4]
  00d7b178: 5d                                           POP EBP
  00d7b179: 89 44 24 04                                  MOV dword ptr [ESP + 0x4], EAX
  00d7b17d: 5b                                           POP EBX
  00d7b17e: 83 c4 38                                     ADD ESP, 0x38
  00d7b181: c2 08 00                                     RET 0x8
  00d7b184: 53                                           PUSH EBX
  00d7b185: 89 6c 24 38                                  MOV dword ptr [ESP + 0x38], EBP
  00d7b189: 89 6c 24 3c                                  MOV dword ptr [ESP + 0x3c], EBP
  00d7b18d: 89 6c 24 40                                  MOV dword ptr [ESP + 0x40], EBP
  00d7b191: c7 44 24 44 ac c5 08 01                      MOV dword ptr [ESP + 0x44], 0x108c5ac
  00d7b199: e8 a2 08 0f 00                               CALL 0x00e6ba40
  00d7b19e: 8b f8                                        MOV EDI, EAX
  00d7b1a0: 83 ef 01                                     SUB EDI, 0x1
  00d7b1a3: 83 c4 04                                     ADD ESP, 0x4
  00d7b1a6: 3b fd                                        CMP EDI, EBP
  00d7b1a8: 89 7c 24 28                                  MOV dword ptr [ESP + 0x28], EDI
  00d7b1ac: 0f 8e 35 01 00 00                            JLE 0x00d7b2e7
  00d7b1b2: 57                                           PUSH EDI
  00d7b1b3: 8d 4c 24 38                                  LEA ECX, [ESP + 0x38]
  00d7b1b7: e8 64 a1 ff ff                               CALL 0x00d75320
  00d7b1bc: 8d 4c 24 18                                  LEA ECX, [ESP + 0x18]
  00d7b1c0: 51                                           PUSH ECX
  00d7b1c1: 53                                           PUSH EBX
  00d7b1c2: 89 6c 24 20                                  MOV dword ptr [ESP + 0x20], EBP
  00d7b1c6: c7 44 24 54 ff ff ff ff                      MOV dword ptr [ESP + 0x54], 0xffffffff
  00d7b1ce: e8 9d 52 0f 00                               CALL 0x00e70470
  00d7b1d3: 8b e8                                        MOV EBP, EAX
  00d7b1d5: 83 c4 08                                     ADD ESP, 0x8
  00d7b1d8: 85 ed                                        TEST EBP, EBP
  00d7b1da: 0f 84 ee 00 00 00                            JZ 0x00d7b2ce
  00d7b1e0: 8b 45 0c                                     MOV EAX, dword ptr [EBP + 0xc]
  00d7b1e3: 8b f8                                        MOV EDI, EAX
  00d7b1e5: be a4 c5 08 01                               MOV ESI, 0x108c5a4
  00d7b1ea: b9 08 00 00 00                               MOV ECX, 0x8
  00d7b1ef: 33 d2                                        XOR EDX, EDX
  00d7b1f1: f3 a6                                        CMPSB.REPE ES:EDI, ESI
  00d7b1f3: 0f 84 b5 00 00 00                            JZ 0x00d7b2ae
  00d7b1f9: 8b 4d 00                                     MOV ECX, dword ptr [EBP]
  00d7b1fc: f7 41 04 00 06 00 00                         TEST dword ptr [ECX + 0x4], 0x600
  00d7b203: 74 16                                        JZ 0x00d7b21b
  00d7b205: bf 98 c5 08 01                               MOV EDI, 0x108c598
  00d7b20a: 8b f0                                        MOV ESI, EAX
  00d7b20c: b9 09 00 00 00                               MOV ECX, 0x9
  00d7b211: 33 d2                                        XOR EDX, EDX
  00d7b213: f3 a6                                        CMPSB.REPE ES:EDI, ESI
  00d7b215: 0f 84 93 00 00 00                            JZ 0x00d7b2ae
  00d7b21b: 83 7d 10 00                                  CMP dword ptr [EBP + 0x10], 0x0
  00d7b21f: 75 54                                        JNZ 0x00d7b275
  00d7b221: 8b 44 24 4c                                  MOV EAX, dword ptr [ESP + 0x4c]
  00d7b225: 83 c0 01                                     ADD EAX, 0x1
  00d7b228: 50                                           PUSH EAX
  00d7b229: 55                                           PUSH EBP
  00d7b22a: e8 71 48 0f 00                               CALL 0x00e6faa0
  00d7b22f: 8b 0b                                        MOV ECX, dword ptr [EBX]
  00d7b231: 83 c4 04                                     ADD ESP, 0x4
  00d7b234: 50                                           PUSH EAX
  00d7b235: 51                                           PUSH ECX
  00d7b236: e8 45 1b 12 00                               CALL 0x00e9cd80
  00d7b23b: 8b 13                                        MOV EDX, dword ptr [EBX]
  00d7b23d: 8d 70 ff                                     LEA ESI, [EAX + -0x1]
  00d7b240: 6a 00                                        PUSH 0x0
  00d7b242: 81 c2 e8 00 00 00                            ADD EDX, 0xe8
  00d7b248: 56                                           PUSH ESI
  00d7b249: 52                                           PUSH EDX
  00d7b24a: e8 b1 02 12 00                               CALL 0x00e9b500
  00d7b24f: 89 45 18                                     MOV dword ptr [EBP + 0x18], EAX
  00d7b252: 8b 03                                        MOV EAX, dword ptr [EBX]
  00d7b254: 6a 03                                        PUSH 0x3
  00d7b256: 05 e8 00 00 00                               ADD EAX, 0xe8
  00d7b25b: 56                                           PUSH ESI
  00d7b25c: 50                                           PUSH EAX
  00d7b25d: e8 9e 02 12 00                               CALL 0x00e9b500
  00d7b262: 8b 0b                                        MOV ECX, dword ptr [EBX]
  00d7b264: 50                                           PUSH EAX
  00d7b265: 51                                           PUSH ECX
  00d7b266: 89 44 24 78                                  MOV dword ptr [ESP + 0x78], EAX
  00d7b26a: e8 81 01 12 00                               CALL 0x00e9b3f0
  00d7b26f: 83 c4 2c                                     ADD ESP, 0x2c
  00d7b272: 89 45 10                                     MOV dword ptr [EBP + 0x10], EAX
  00d7b275: 8b 45 10                                     MOV EAX, dword ptr [EBP + 0x10]
  00d7b278: 8d 54 24 14                                  LEA EDX, [ESP + 0x14]
  00d7b27c: 52                                           PUSH EDX
  00d7b27d: 50                                           PUSH EAX
  00d7b27e: 89 44 24 1c                                  MOV dword ptr [ESP + 0x1c], EAX
  00d7b282: e8 29 03 12 00                               CALL 0x00e9b5b0
  00d7b287: 8b 44 24 1c                                  MOV EAX, dword ptr [ESP + 0x1c]
  00d7b28b: 8b 30                                        MOV ESI, dword ptr [EAX]
  00d7b28d: 83 c4 08                                     ADD ESP, 0x8
  00d7b290: 8d 4c 24 20                                  LEA ECX, [ESP + 0x20]
  00d7b294: 51                                           PUSH ECX
  00d7b295: 8d 4c 24 38                                  LEA ECX, [ESP + 0x38]
  00d7b299: 89 74 24 24                                  MOV dword ptr [ESP + 0x24], ESI
  00d7b29d: e8 ae df ff ff                               CALL 0x00d79250
  00d7b2a2: 3b 74 24 50                                  CMP ESI, dword ptr [ESP + 0x50]
  00d7b2a6: 89 28                                        MOV dword ptr [EAX], EBP
  00d7b2a8: 75 04                                        JNZ 0x00d7b2ae
  00d7b2aa: 89 6c 24 10                                  MOV dword ptr [ESP + 0x10], EBP
  00d7b2ae: 8d 54 24 18                                  LEA EDX, [ESP + 0x18]
  00d7b2b2: 52                                           PUSH EDX
  00d7b2b3: 53                                           PUSH EBX
  00d7b2b4: e8 b7 51 0f 00                               CALL 0x00e70470
  00d7b2b9: 8b e8                                        MOV EBP, EAX
  00d7b2bb: 83 c4 08                                     ADD ESP, 0x8
  00d7b2be: 85 ed                                        TEST EBP, EBP
  00d7b2c0: 0f 85 1a ff ff ff                            JNZ 0x00d7b1e0
  00d7b2c6: 8b 74 24 24                                  MOV ESI, dword ptr [ESP + 0x24]
  00d7b2ca: 8b 7c 24 28                                  MOV EDI, dword ptr [ESP + 0x28]
  00d7b2ce: 8b 5c 24 34                                  MOV EBX, dword ptr [ESP + 0x34]
  00d7b2d2: 8b 6c 24 38                                  MOV EBP, dword ptr [ESP + 0x38]
  00d7b2d6: 3b dd                                        CMP EBX, EBP
  00d7b2d8: 75 19                                        JNZ 0x00d7b2f3
  00d7b2da: 85 db                                        TEST EBX, EBX
  00d7b2dc: 74 09                                        JZ 0x00d7b2e7
  00d7b2de: 53                                           PUSH EBX
  00d7b2df: e8 fc 91 76 ff                               CALL 0x004e44e0
  00d7b2e4: 83 c4 04                                     ADD ESP, 0x4
  00d7b2e7: 5f                                           POP EDI
  00d7b2e8: 5e                                           POP ESI
  00d7b2e9: 5d                                           POP EBP
  00d7b2ea: 33 c0                                        XOR EAX, EAX
  00d7b2ec: 5b                                           POP EBX
  00d7b2ed: 83 c4 38                                     ADD ESP, 0x38
  00d7b2f0: c2 08 00                                     RET 0x8
  00d7b2f3: c6 44 24 50 00                               MOV byte ptr [ESP + 0x50], 0x0
  00d7b2f8: 8b 44 24 50                                  MOV EAX, dword ptr [ESP + 0x50]
  00d7b2fc: 50                                           PUSH EAX
  00d7b2fd: 8d 4c 24 20                                  LEA ECX, [ESP + 0x20]
  00d7b301: 51                                           PUSH ECX
  00d7b302: 8d 54 24 30                                  LEA EDX, [ESP + 0x30]
  00d7b306: 52                                           PUSH EDX
  00d7b307: 8b ce                                        MOV ECX, ESI
  00d7b309: e8 e2 87 ff ff                               CALL 0x00d73af0
  00d7b30e: 8b 74 24 28                                  MOV ESI, dword ptr [ESP + 0x28]
  00d7b312: 89 7e 04                                     MOV dword ptr [ESI + 0x4], EDI
  00d7b315: 8b 0d 64 c8 1c 01                            MOV ECX, dword ptr [0x011cc864]
  00d7b31b: 03 ff                                        ADD EDI, EDI
  00d7b31d: 6a 00                                        PUSH 0x0
  00d7b31f: 03 ff                                        ADD EDI, EDI
  00d7b321: 57                                           PUSH EDI
  00d7b322: e8 f9 bb 76 ff                               CALL 0x004e6f20
  00d7b327: 6a 00                                        PUSH 0x0
  00d7b329: 89 46 0c                                     MOV dword ptr [ESI + 0xc], EAX
  00d7b32c: 8b 0d 64 c8 1c 01                            MOV ECX, dword ptr [0x011cc864]
  00d7b332: 57                                           PUSH EDI
  00d7b333: e8 e8 bb 76 ff                               CALL 0x004e6f20
  00d7b338: 89 46 08                                     MOV dword ptr [ESI + 0x8], EAX
  00d7b33b: 8b c3                                        MOV EAX, EBX
  00d7b33d: 33 c9                                        XOR ECX, ECX
  00d7b33f: 90                                           NOP
  00d7b340: 8b 38                                        MOV EDI, dword ptr [EAX]
  00d7b342: 8b 56 08                                     MOV EDX, dword ptr [ESI + 0x8]
  00d7b345: 89 3c 11                                     MOV dword ptr [ECX + EDX*0x1], EDI
  00d7b348: 8b 78 04                                     MOV EDI, dword ptr [EAX + 0x4]
  00d7b34b: 8b 56 0c                                     MOV EDX, dword ptr [ESI + 0xc]
  00d7b34e: 89 3c 11                                     MOV dword ptr [ECX + EDX*0x1], EDI
  00d7b351: 83 c0 08                                     ADD EAX, 0x8
  00d7b354: 83 c1 04                                     ADD ECX, 0x4
  00d7b357: 3b c5                                        CMP EAX, EBP
  00d7b359: 75 e5                                        JNZ 0x00d7b340
  00d7b35b: 85 db                                        TEST EBX, EBX
  00d7b35d: 74 09                                        JZ 0x00d7b368
  00d7b35f: 53                                           PUSH EBX
  00d7b360: e8 7b 91 76 ff                               CALL 0x004e44e0
  00d7b365: 83 c4 04                                     ADD ESP, 0x4
  00d7b368: 8b 44 24 10                                  MOV EAX, dword ptr [ESP + 0x10]
  00d7b36c: 5f                                           POP EDI
  00d7b36d: 5e                                           POP ESI
  00d7b36e: 5d                                           POP EBP
  00d7b36f: 5b                                           POP EBX
  00d7b370: 83 c4 38                                     ADD ESP, 0x38
  00d7b373: c2 08 00                                     RET 0x8
