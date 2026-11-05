TS3W PC 1.67; original identity: evidence/reference.json.
Saved Ghidra evidence; current name: EnumFieldCache_FindUInt64.
Original instruction/byte blocks and ownership qualifications are unchanged.
Generated types and signatures remain projections; machine instructions are authoritative.

Original PC 1.67 TS3W.exe; final saved Ghidra Listing with original PE bytes.
Entry: 0x00D7B380 (EnumFieldCache_FindUInt64)
Paired annotated Ghidra pseudocode: 00D7B380_EnumFieldCache_FindUInt64.c
Owned half-open range: [0x00D7B380,0x00D7B634)
Owned bytes: 692; Listing instructions: 227
Original identity: references/pc-167.md. GNU and LLVM independently agree on all instruction boundaries and bytes.
Function ownership and generated ABI remain unchanged; semantic name/comment were read back.
Analyst plate: Analyst PC1.67 UInt64 enum-field lookup. ECX receiver +0B4C locates the shared class-record-pointer-keyed cache; stored entry +4 is count, +8 packed 64-bit values, +0C parallel field pointers. Warm path calls 00627330 then rejects end and query<candidate with unsigned ordering (64-bit: high word unsigned, low word unsigned); only the low 64 value bits are read. Cold path enumerates E70470 fields, skips exact value__ and conditionally _Deleted under [field.type+4]&600h, lazily fills field+10/+18 through E6FAA0/E9CD80/E9B500/E9B3F0, then E9B5B0 supplies bytes read at width 64. Slot helper 00D792E0 returns the field-pointer location which is overwritten; each exact query match updates the cold result. Cache count is E6BA40(class)-1, not locally recomputed from copied pairs: duplicate/filter count invariants remain unresolved. Returns field pointer or zero; no flags composition, runtime behavior or alias/cache parity inferred.

SAVED GHIDRA LISTING WITH ORIGINAL BYTES
  00d7b380: 83 ec 38                                     SUB ESP, 0x38
  00d7b383: 53                                           PUSH EBX
  00d7b384: 8b 5c 24 40                                  MOV EBX, dword ptr [ESP + 0x40]
  00d7b388: 55                                           PUSH EBP
  00d7b389: 56                                           PUSH ESI
  00d7b38a: 57                                           PUSH EDI
  00d7b38b: 8d b1 4c 0b 00 00                            LEA ESI, [ECX + 0xb4c]
  00d7b391: 8d 44 24 1c                                  LEA EAX, [ESP + 0x1c]
  00d7b395: 50                                           PUSH EAX
  00d7b396: 8d 4c 24 2c                                  LEA ECX, [ESP + 0x2c]
  00d7b39a: 51                                           PUSH ECX
  00d7b39b: 33 ed                                        XOR EBP, EBP
  00d7b39d: 8b ce                                        MOV ECX, ESI
  00d7b39f: 89 6c 24 18                                  MOV dword ptr [ESP + 0x18], EBP
  00d7b3a3: 89 5c 24 24                                  MOV dword ptr [ESP + 0x24], EBX
  00d7b3a7: 89 74 24 28                                  MOV dword ptr [ESP + 0x28], ESI
  00d7b3ab: e8 10 72 7b ff                               CALL 0x005325c0
  00d7b3b0: 8b 56 08                                     MOV EDX, dword ptr [ESI + 0x8]
  00d7b3b3: 8b 46 04                                     MOV EAX, dword ptr [ESI + 0x4]
  00d7b3b6: 8b 7c 24 28                                  MOV EDI, dword ptr [ESP + 0x28]
  00d7b3ba: 3b 3c 90                                     CMP EDI, dword ptr [EAX + EDX*0x4]
  00d7b3bd: 74 56                                        JZ 0x00d7b415
  00d7b3bf: 8b 77 08                                     MOV ESI, dword ptr [EDI + 0x8]
  00d7b3c2: 8b 4f 04                                     MOV ECX, dword ptr [EDI + 0x4]
  00d7b3c5: 8d 54 24 50                                  LEA EDX, [ESP + 0x50]
  00d7b3c9: 52                                           PUSH EDX
  00d7b3ca: 8d 1c ce                                     LEA EBX, [ESI + ECX*0x8]
  00d7b3cd: 53                                           PUSH EBX
  00d7b3ce: 56                                           PUSH ESI
  00d7b3cf: e8 5c bf 8a ff                               CALL 0x00627330
  00d7b3d4: 83 c4 0c                                     ADD ESP, 0xc
  00d7b3d7: 3b c3                                        CMP EAX, EBX
  00d7b3d9: 0f 84 47 02 00 00                            JZ 0x00d7b626
  00d7b3df: 8b 4c 24 54                                  MOV ECX, dword ptr [ESP + 0x54]
  00d7b3e3: 3b 48 04                                     CMP ECX, dword ptr [EAX + 0x4]
  00d7b3e6: 0f 82 3a 02 00 00                            JC 0x00d7b626
  00d7b3ec: 77 0c                                        JA 0x00d7b3fa
  00d7b3ee: 8b 54 24 50                                  MOV EDX, dword ptr [ESP + 0x50]
  00d7b3f2: 3b 10                                        CMP EDX, dword ptr [EAX]
  00d7b3f4: 0f 82 2c 02 00 00                            JC 0x00d7b626
  00d7b3fa: 8b 4f 0c                                     MOV ECX, dword ptr [EDI + 0xc]
  00d7b3fd: 2b c6                                        SUB EAX, ESI
  00d7b3ff: 5f                                           POP EDI
  00d7b400: c1 f8 03                                     SAR EAX, 0x3
  00d7b403: 8b 14 81                                     MOV EDX, dword ptr [ECX + EAX*0x4]
  00d7b406: 5e                                           POP ESI
  00d7b407: 5d                                           POP EBP
  00d7b408: 89 54 24 04                                  MOV dword ptr [ESP + 0x4], EDX
  00d7b40c: 8b c2                                        MOV EAX, EDX
  00d7b40e: 5b                                           POP EBX
  00d7b40f: 83 c4 38                                     ADD ESP, 0x38
  00d7b412: c2 0c 00                                     RET 0xc
  00d7b415: 53                                           PUSH EBX
  00d7b416: 89 6c 24 38                                  MOV dword ptr [ESP + 0x38], EBP
  00d7b41a: 89 6c 24 3c                                  MOV dword ptr [ESP + 0x3c], EBP
  00d7b41e: 89 6c 24 40                                  MOV dword ptr [ESP + 0x40], EBP
  00d7b422: c7 44 24 44 ac c5 08 01                      MOV dword ptr [ESP + 0x44], 0x108c5ac
  00d7b42a: e8 11 06 0f 00                               CALL 0x00e6ba40
  00d7b42f: 8b f8                                        MOV EDI, EAX
  00d7b431: 83 ef 01                                     SUB EDI, 0x1
  00d7b434: 83 c4 04                                     ADD ESP, 0x4
  00d7b437: 3b fd                                        CMP EDI, EBP
  00d7b439: 89 7c 24 24                                  MOV dword ptr [ESP + 0x24], EDI
  00d7b43d: 0f 8e 42 01 00 00                            JLE 0x00d7b585
  00d7b443: 57                                           PUSH EDI
  00d7b444: 8d 4c 24 38                                  LEA ECX, [ESP + 0x38]
  00d7b448: e8 33 9f ff ff                               CALL 0x00d75380
  00d7b44d: 8d 44 24 18                                  LEA EAX, [ESP + 0x18]
  00d7b451: 50                                           PUSH EAX
  00d7b452: 53                                           PUSH EBX
  00d7b453: 89 6c 24 20                                  MOV dword ptr [ESP + 0x20], EBP
  00d7b457: c7 44 24 54 ff ff ff ff                      MOV dword ptr [ESP + 0x54], 0xffffffff
  00d7b45f: e8 0c 50 0f 00                               CALL 0x00e70470
  00d7b464: 8b e8                                        MOV EBP, EAX
  00d7b466: 83 c4 08                                     ADD ESP, 0x8
  00d7b469: 85 ed                                        TEST EBP, EBP
  00d7b46b: 0f 84 fb 00 00 00                            JZ 0x00d7b56c
  00d7b471: 8b 45 0c                                     MOV EAX, dword ptr [EBP + 0xc]
  00d7b474: 8b f8                                        MOV EDI, EAX
  00d7b476: be a4 c5 08 01                               MOV ESI, 0x108c5a4
  00d7b47b: b9 08 00 00 00                               MOV ECX, 0x8
  00d7b480: 33 d2                                        XOR EDX, EDX
  00d7b482: f3 a6                                        CMPSB.REPE ES:EDI, ESI
  00d7b484: 0f 84 c2 00 00 00                            JZ 0x00d7b54c
  00d7b48a: 8b 4d 00                                     MOV ECX, dword ptr [EBP]
  00d7b48d: f7 41 04 00 06 00 00                         TEST dword ptr [ECX + 0x4], 0x600
  00d7b494: 74 16                                        JZ 0x00d7b4ac
  00d7b496: bf 98 c5 08 01                               MOV EDI, 0x108c598
  00d7b49b: 8b f0                                        MOV ESI, EAX
  00d7b49d: b9 09 00 00 00                               MOV ECX, 0x9
  00d7b4a2: 33 d2                                        XOR EDX, EDX
  00d7b4a4: f3 a6                                        CMPSB.REPE ES:EDI, ESI
  00d7b4a6: 0f 84 a0 00 00 00                            JZ 0x00d7b54c
  00d7b4ac: 83 7d 10 00                                  CMP dword ptr [EBP + 0x10], 0x0
  00d7b4b0: 75 54                                        JNZ 0x00d7b506
  00d7b4b2: 8b 44 24 4c                                  MOV EAX, dword ptr [ESP + 0x4c]
  00d7b4b6: 83 c0 01                                     ADD EAX, 0x1
  00d7b4b9: 50                                           PUSH EAX
  00d7b4ba: 55                                           PUSH EBP
  00d7b4bb: e8 e0 45 0f 00                               CALL 0x00e6faa0
  00d7b4c0: 8b 0b                                        MOV ECX, dword ptr [EBX]
  00d7b4c2: 83 c4 04                                     ADD ESP, 0x4
  00d7b4c5: 50                                           PUSH EAX
  00d7b4c6: 51                                           PUSH ECX
  00d7b4c7: e8 b4 18 12 00                               CALL 0x00e9cd80
  00d7b4cc: 8b 13                                        MOV EDX, dword ptr [EBX]
  00d7b4ce: 8d 70 ff                                     LEA ESI, [EAX + -0x1]
  00d7b4d1: 6a 00                                        PUSH 0x0
  00d7b4d3: 81 c2 e8 00 00 00                            ADD EDX, 0xe8
  00d7b4d9: 56                                           PUSH ESI
  00d7b4da: 52                                           PUSH EDX
  00d7b4db: e8 20 00 12 00                               CALL 0x00e9b500
  00d7b4e0: 89 45 18                                     MOV dword ptr [EBP + 0x18], EAX
  00d7b4e3: 8b 03                                        MOV EAX, dword ptr [EBX]
  00d7b4e5: 6a 03                                        PUSH 0x3
  00d7b4e7: 05 e8 00 00 00                               ADD EAX, 0xe8
  00d7b4ec: 56                                           PUSH ESI
  00d7b4ed: 50                                           PUSH EAX
  00d7b4ee: e8 0d 00 12 00                               CALL 0x00e9b500
  00d7b4f3: 8b 0b                                        MOV ECX, dword ptr [EBX]
  00d7b4f5: 50                                           PUSH EAX
  00d7b4f6: 51                                           PUSH ECX
  00d7b4f7: 89 44 24 78                                  MOV dword ptr [ESP + 0x78], EAX
  00d7b4fb: e8 f0 fe 11 00                               CALL 0x00e9b3f0
  00d7b500: 83 c4 2c                                     ADD ESP, 0x2c
  00d7b503: 89 45 10                                     MOV dword ptr [EBP + 0x10], EAX
  00d7b506: 8b 45 10                                     MOV EAX, dword ptr [EBP + 0x10]
  00d7b509: 8d 54 24 14                                  LEA EDX, [ESP + 0x14]
  00d7b50d: 52                                           PUSH EDX
  00d7b50e: 50                                           PUSH EAX
  00d7b50f: 89 44 24 1c                                  MOV dword ptr [ESP + 0x1c], EAX
  00d7b513: e8 98 00 12 00                               CALL 0x00e9b5b0
  00d7b518: 8b 44 24 1c                                  MOV EAX, dword ptr [ESP + 0x1c]
  00d7b51c: 8b 30                                        MOV ESI, dword ptr [EAX]
  00d7b51e: 8b 78 04                                     MOV EDI, dword ptr [EAX + 0x4]
  00d7b521: 83 c4 08                                     ADD ESP, 0x8
  00d7b524: 8d 44 24 28                                  LEA EAX, [ESP + 0x28]
  00d7b528: 50                                           PUSH EAX
  00d7b529: 8d 4c 24 38                                  LEA ECX, [ESP + 0x38]
  00d7b52d: 89 74 24 2c                                  MOV dword ptr [ESP + 0x2c], ESI
  00d7b531: 89 7c 24 30                                  MOV dword ptr [ESP + 0x30], EDI
  00d7b535: e8 a6 dd ff ff                               CALL 0x00d792e0
  00d7b53a: 3b 74 24 50                                  CMP ESI, dword ptr [ESP + 0x50]
  00d7b53e: 89 28                                        MOV dword ptr [EAX], EBP
  00d7b540: 75 0a                                        JNZ 0x00d7b54c
  00d7b542: 3b 7c 24 54                                  CMP EDI, dword ptr [ESP + 0x54]
  00d7b546: 75 04                                        JNZ 0x00d7b54c
  00d7b548: 89 6c 24 10                                  MOV dword ptr [ESP + 0x10], EBP
  00d7b54c: 8d 4c 24 18                                  LEA ECX, [ESP + 0x18]
  00d7b550: 51                                           PUSH ECX
  00d7b551: 53                                           PUSH EBX
  00d7b552: e8 19 4f 0f 00                               CALL 0x00e70470
  00d7b557: 8b e8                                        MOV EBP, EAX
  00d7b559: 83 c4 08                                     ADD ESP, 0x8
  00d7b55c: 85 ed                                        TEST EBP, EBP
  00d7b55e: 0f 85 0d ff ff ff                            JNZ 0x00d7b471
  00d7b564: 8b 74 24 20                                  MOV ESI, dword ptr [ESP + 0x20]
  00d7b568: 8b 7c 24 24                                  MOV EDI, dword ptr [ESP + 0x24]
  00d7b56c: 8b 6c 24 38                                  MOV EBP, dword ptr [ESP + 0x38]
  00d7b570: 8b 5c 24 34                                  MOV EBX, dword ptr [ESP + 0x34]
  00d7b574: 3b dd                                        CMP EBX, EBP
  00d7b576: 75 19                                        JNZ 0x00d7b591
  00d7b578: 85 db                                        TEST EBX, EBX
  00d7b57a: 74 09                                        JZ 0x00d7b585
  00d7b57c: 53                                           PUSH EBX
  00d7b57d: e8 5e 8f 76 ff                               CALL 0x004e44e0
  00d7b582: 83 c4 04                                     ADD ESP, 0x4
  00d7b585: 5f                                           POP EDI
  00d7b586: 5e                                           POP ESI
  00d7b587: 5d                                           POP EBP
  00d7b588: 33 c0                                        XOR EAX, EAX
  00d7b58a: 5b                                           POP EBX
  00d7b58b: 83 c4 38                                     ADD ESP, 0x38
  00d7b58e: c2 0c 00                                     RET 0xc
  00d7b591: c6 44 24 4c 00                               MOV byte ptr [ESP + 0x4c], 0x0
  00d7b596: 8b 54 24 4c                                  MOV EDX, dword ptr [ESP + 0x4c]
  00d7b59a: 52                                           PUSH EDX
  00d7b59b: 8d 44 24 20                                  LEA EAX, [ESP + 0x20]
  00d7b59f: 50                                           PUSH EAX
  00d7b5a0: 8d 4c 24 30                                  LEA ECX, [ESP + 0x30]
  00d7b5a4: 51                                           PUSH ECX
  00d7b5a5: 8b ce                                        MOV ECX, ESI
  00d7b5a7: e8 44 85 ff ff                               CALL 0x00d73af0
  00d7b5ac: 8b 74 24 28                                  MOV ESI, dword ptr [ESP + 0x28]
  00d7b5b0: 6a 00                                        PUSH 0x0
  00d7b5b2: 8d 14 bd 00 00 00 00                         LEA EDX, [EDI*0x4 + 0x0]
  00d7b5b9: 89 7e 04                                     MOV dword ptr [ESI + 0x4], EDI
  00d7b5bc: 8b 0d 64 c8 1c 01                            MOV ECX, dword ptr [0x011cc864]
  00d7b5c2: 52                                           PUSH EDX
  00d7b5c3: e8 58 b9 76 ff                               CALL 0x004e6f20
  00d7b5c8: 89 46 0c                                     MOV dword ptr [ESI + 0xc], EAX
  00d7b5cb: 8b 0d 64 c8 1c 01                            MOV ECX, dword ptr [0x011cc864]
  00d7b5d1: 6a 00                                        PUSH 0x0
  00d7b5d3: 8d 04 fd 00 00 00 00                         LEA EAX, [EDI*0x8 + 0x0]
  00d7b5da: 50                                           PUSH EAX
  00d7b5db: e8 40 b9 76 ff                               CALL 0x004e6f20
  00d7b5e0: 89 46 08                                     MOV dword ptr [ESI + 0x8], EAX
  00d7b5e3: 8b c3                                        MOV EAX, EBX
  00d7b5e5: 33 db                                        XOR EBX, EBX
  00d7b5e7: 33 c9                                        XOR ECX, ECX
  00d7b5e9: 8d a4 24 00 00 00 00                         LEA ESP, [ESP]
  00d7b5f0: 8b 38                                        MOV EDI, dword ptr [EAX]
  00d7b5f2: 8b 56 08                                     MOV EDX, dword ptr [ESI + 0x8]
  00d7b5f5: 89 3c 11                                     MOV dword ptr [ECX + EDX*0x1], EDI
  00d7b5f8: 8b 78 04                                     MOV EDI, dword ptr [EAX + 0x4]
  00d7b5fb: 89 7c 11 04                                  MOV dword ptr [ECX + EDX*0x1 + 0x4], EDI
  00d7b5ff: 8b 78 08                                     MOV EDI, dword ptr [EAX + 0x8]
  00d7b602: 8b 56 0c                                     MOV EDX, dword ptr [ESI + 0xc]
  00d7b605: 89 3c 13                                     MOV dword ptr [EBX + EDX*0x1], EDI
  00d7b608: 83 c0 10                                     ADD EAX, 0x10
  00d7b60b: 83 c1 08                                     ADD ECX, 0x8
  00d7b60e: 83 c3 04                                     ADD EBX, 0x4
  00d7b611: 3b c5                                        CMP EAX, EBP
  00d7b613: 75 db                                        JNZ 0x00d7b5f0
  00d7b615: 8b 44 24 34                                  MOV EAX, dword ptr [ESP + 0x34]
  00d7b619: 85 c0                                        TEST EAX, EAX
  00d7b61b: 74 09                                        JZ 0x00d7b626
  00d7b61d: 50                                           PUSH EAX
  00d7b61e: e8 bd 8e 76 ff                               CALL 0x004e44e0
  00d7b623: 83 c4 04                                     ADD ESP, 0x4
  00d7b626: 8b 44 24 10                                  MOV EAX, dword ptr [ESP + 0x10]
  00d7b62a: 5f                                           POP EDI
  00d7b62b: 5e                                           POP ESI
  00d7b62c: 5d                                           POP EBP
  00d7b62d: 5b                                           POP EBX
  00d7b62e: 83 c4 38                                     ADD ESP, 0x38
  00d7b631: c2 0c 00                                     RET 0xc
