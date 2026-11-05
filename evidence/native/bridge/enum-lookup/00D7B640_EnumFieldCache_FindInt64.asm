TS3W PC 1.67; original identity: evidence/reference.json.
Saved Ghidra evidence; current name: EnumFieldCache_FindInt64.
Original instruction/byte blocks and ownership qualifications are unchanged.
Generated types and signatures remain projections; machine instructions are authoritative.

Original PC 1.67 TS3W.exe; final saved Ghidra Listing with original PE bytes.
Entry: 0x00D7B640 (EnumFieldCache_FindInt64)
Paired annotated Ghidra pseudocode: 00D7B640_EnumFieldCache_FindInt64.c
Owned half-open range: [0x00D7B640,0x00D7B8F4)
Owned bytes: 692; Listing instructions: 227
Original identity: references/pc-167.md. GNU and LLVM independently agree on all instruction boundaries and bytes.
Function ownership and generated ABI remain unchanged; semantic name/comment were read back.
Analyst plate: Analyst PC1.67 Int64 enum-field lookup. ECX receiver +0B4C locates the shared class-record-pointer-keyed cache; stored entry +4 is count, +8 packed 64-bit values, +0C parallel field pointers. Warm path calls 00D732D0 then rejects end and query<candidate with signed ordering (64-bit: high word signed, low word unsigned); only the low 64 value bits are read. Cold path enumerates E70470 fields, skips exact value__ and conditionally _Deleted under [field.type+4]&600h, lazily fills field+10/+18 through E6FAA0/E9CD80/E9B500/E9B3F0, then E9B5B0 supplies bytes read at width 64. Slot helper 00D79350 returns the field-pointer location which is overwritten; each exact query match updates the cold result. Cache count is E6BA40(class)-1, not locally recomputed from copied pairs: duplicate/filter count invariants remain unresolved. Returns field pointer or zero; no flags composition, runtime behavior or alias/cache parity inferred.

SAVED GHIDRA LISTING WITH ORIGINAL BYTES
  00d7b640: 83 ec 38                                     SUB ESP, 0x38
  00d7b643: 53                                           PUSH EBX
  00d7b644: 8b 5c 24 40                                  MOV EBX, dword ptr [ESP + 0x40]
  00d7b648: 55                                           PUSH EBP
  00d7b649: 56                                           PUSH ESI
  00d7b64a: 57                                           PUSH EDI
  00d7b64b: 8d b1 4c 0b 00 00                            LEA ESI, [ECX + 0xb4c]
  00d7b651: 8d 44 24 1c                                  LEA EAX, [ESP + 0x1c]
  00d7b655: 50                                           PUSH EAX
  00d7b656: 8d 4c 24 2c                                  LEA ECX, [ESP + 0x2c]
  00d7b65a: 51                                           PUSH ECX
  00d7b65b: 33 ed                                        XOR EBP, EBP
  00d7b65d: 8b ce                                        MOV ECX, ESI
  00d7b65f: 89 6c 24 18                                  MOV dword ptr [ESP + 0x18], EBP
  00d7b663: 89 5c 24 24                                  MOV dword ptr [ESP + 0x24], EBX
  00d7b667: 89 74 24 28                                  MOV dword ptr [ESP + 0x28], ESI
  00d7b66b: e8 50 6f 7b ff                               CALL 0x005325c0
  00d7b670: 8b 56 08                                     MOV EDX, dword ptr [ESI + 0x8]
  00d7b673: 8b 46 04                                     MOV EAX, dword ptr [ESI + 0x4]
  00d7b676: 8b 7c 24 28                                  MOV EDI, dword ptr [ESP + 0x28]
  00d7b67a: 3b 3c 90                                     CMP EDI, dword ptr [EAX + EDX*0x4]
  00d7b67d: 74 56                                        JZ 0x00d7b6d5
  00d7b67f: 8b 77 08                                     MOV ESI, dword ptr [EDI + 0x8]
  00d7b682: 8b 4f 04                                     MOV ECX, dword ptr [EDI + 0x4]
  00d7b685: 8d 54 24 50                                  LEA EDX, [ESP + 0x50]
  00d7b689: 52                                           PUSH EDX
  00d7b68a: 8d 1c ce                                     LEA EBX, [ESI + ECX*0x8]
  00d7b68d: 53                                           PUSH EBX
  00d7b68e: 56                                           PUSH ESI
  00d7b68f: e8 3c 7c ff ff                               CALL 0x00d732d0
  00d7b694: 83 c4 0c                                     ADD ESP, 0xc
  00d7b697: 3b c3                                        CMP EAX, EBX
  00d7b699: 0f 84 47 02 00 00                            JZ 0x00d7b8e6
  00d7b69f: 8b 4c 24 54                                  MOV ECX, dword ptr [ESP + 0x54]
  00d7b6a3: 3b 48 04                                     CMP ECX, dword ptr [EAX + 0x4]
  00d7b6a6: 0f 8c 3a 02 00 00                            JL 0x00d7b8e6
  00d7b6ac: 7f 0c                                        JG 0x00d7b6ba
  00d7b6ae: 8b 54 24 50                                  MOV EDX, dword ptr [ESP + 0x50]
  00d7b6b2: 3b 10                                        CMP EDX, dword ptr [EAX]
  00d7b6b4: 0f 82 2c 02 00 00                            JC 0x00d7b8e6
  00d7b6ba: 8b 4f 0c                                     MOV ECX, dword ptr [EDI + 0xc]
  00d7b6bd: 2b c6                                        SUB EAX, ESI
  00d7b6bf: 5f                                           POP EDI
  00d7b6c0: c1 f8 03                                     SAR EAX, 0x3
  00d7b6c3: 8b 14 81                                     MOV EDX, dword ptr [ECX + EAX*0x4]
  00d7b6c6: 5e                                           POP ESI
  00d7b6c7: 5d                                           POP EBP
  00d7b6c8: 89 54 24 04                                  MOV dword ptr [ESP + 0x4], EDX
  00d7b6cc: 8b c2                                        MOV EAX, EDX
  00d7b6ce: 5b                                           POP EBX
  00d7b6cf: 83 c4 38                                     ADD ESP, 0x38
  00d7b6d2: c2 0c 00                                     RET 0xc
  00d7b6d5: 53                                           PUSH EBX
  00d7b6d6: 89 6c 24 38                                  MOV dword ptr [ESP + 0x38], EBP
  00d7b6da: 89 6c 24 3c                                  MOV dword ptr [ESP + 0x3c], EBP
  00d7b6de: 89 6c 24 40                                  MOV dword ptr [ESP + 0x40], EBP
  00d7b6e2: c7 44 24 44 ac c5 08 01                      MOV dword ptr [ESP + 0x44], 0x108c5ac
  00d7b6ea: e8 51 03 0f 00                               CALL 0x00e6ba40
  00d7b6ef: 8b f8                                        MOV EDI, EAX
  00d7b6f1: 83 ef 01                                     SUB EDI, 0x1
  00d7b6f4: 83 c4 04                                     ADD ESP, 0x4
  00d7b6f7: 3b fd                                        CMP EDI, EBP
  00d7b6f9: 89 7c 24 24                                  MOV dword ptr [ESP + 0x24], EDI
  00d7b6fd: 0f 8e 42 01 00 00                            JLE 0x00d7b845
  00d7b703: 57                                           PUSH EDI
  00d7b704: 8d 4c 24 38                                  LEA ECX, [ESP + 0x38]
  00d7b708: e8 73 9c ff ff                               CALL 0x00d75380
  00d7b70d: 8d 44 24 18                                  LEA EAX, [ESP + 0x18]
  00d7b711: 50                                           PUSH EAX
  00d7b712: 53                                           PUSH EBX
  00d7b713: 89 6c 24 20                                  MOV dword ptr [ESP + 0x20], EBP
  00d7b717: c7 44 24 54 ff ff ff ff                      MOV dword ptr [ESP + 0x54], 0xffffffff
  00d7b71f: e8 4c 4d 0f 00                               CALL 0x00e70470
  00d7b724: 8b e8                                        MOV EBP, EAX
  00d7b726: 83 c4 08                                     ADD ESP, 0x8
  00d7b729: 85 ed                                        TEST EBP, EBP
  00d7b72b: 0f 84 fb 00 00 00                            JZ 0x00d7b82c
  00d7b731: 8b 45 0c                                     MOV EAX, dword ptr [EBP + 0xc]
  00d7b734: 8b f8                                        MOV EDI, EAX
  00d7b736: be a4 c5 08 01                               MOV ESI, 0x108c5a4
  00d7b73b: b9 08 00 00 00                               MOV ECX, 0x8
  00d7b740: 33 d2                                        XOR EDX, EDX
  00d7b742: f3 a6                                        CMPSB.REPE ES:EDI, ESI
  00d7b744: 0f 84 c2 00 00 00                            JZ 0x00d7b80c
  00d7b74a: 8b 4d 00                                     MOV ECX, dword ptr [EBP]
  00d7b74d: f7 41 04 00 06 00 00                         TEST dword ptr [ECX + 0x4], 0x600
  00d7b754: 74 16                                        JZ 0x00d7b76c
  00d7b756: bf 98 c5 08 01                               MOV EDI, 0x108c598
  00d7b75b: 8b f0                                        MOV ESI, EAX
  00d7b75d: b9 09 00 00 00                               MOV ECX, 0x9
  00d7b762: 33 d2                                        XOR EDX, EDX
  00d7b764: f3 a6                                        CMPSB.REPE ES:EDI, ESI
  00d7b766: 0f 84 a0 00 00 00                            JZ 0x00d7b80c
  00d7b76c: 83 7d 10 00                                  CMP dword ptr [EBP + 0x10], 0x0
  00d7b770: 75 54                                        JNZ 0x00d7b7c6
  00d7b772: 8b 44 24 4c                                  MOV EAX, dword ptr [ESP + 0x4c]
  00d7b776: 83 c0 01                                     ADD EAX, 0x1
  00d7b779: 50                                           PUSH EAX
  00d7b77a: 55                                           PUSH EBP
  00d7b77b: e8 20 43 0f 00                               CALL 0x00e6faa0
  00d7b780: 8b 0b                                        MOV ECX, dword ptr [EBX]
  00d7b782: 83 c4 04                                     ADD ESP, 0x4
  00d7b785: 50                                           PUSH EAX
  00d7b786: 51                                           PUSH ECX
  00d7b787: e8 f4 15 12 00                               CALL 0x00e9cd80
  00d7b78c: 8b 13                                        MOV EDX, dword ptr [EBX]
  00d7b78e: 8d 70 ff                                     LEA ESI, [EAX + -0x1]
  00d7b791: 6a 00                                        PUSH 0x0
  00d7b793: 81 c2 e8 00 00 00                            ADD EDX, 0xe8
  00d7b799: 56                                           PUSH ESI
  00d7b79a: 52                                           PUSH EDX
  00d7b79b: e8 60 fd 11 00                               CALL 0x00e9b500
  00d7b7a0: 89 45 18                                     MOV dword ptr [EBP + 0x18], EAX
  00d7b7a3: 8b 03                                        MOV EAX, dword ptr [EBX]
  00d7b7a5: 6a 03                                        PUSH 0x3
  00d7b7a7: 05 e8 00 00 00                               ADD EAX, 0xe8
  00d7b7ac: 56                                           PUSH ESI
  00d7b7ad: 50                                           PUSH EAX
  00d7b7ae: e8 4d fd 11 00                               CALL 0x00e9b500
  00d7b7b3: 8b 0b                                        MOV ECX, dword ptr [EBX]
  00d7b7b5: 50                                           PUSH EAX
  00d7b7b6: 51                                           PUSH ECX
  00d7b7b7: 89 44 24 78                                  MOV dword ptr [ESP + 0x78], EAX
  00d7b7bb: e8 30 fc 11 00                               CALL 0x00e9b3f0
  00d7b7c0: 83 c4 2c                                     ADD ESP, 0x2c
  00d7b7c3: 89 45 10                                     MOV dword ptr [EBP + 0x10], EAX
  00d7b7c6: 8b 45 10                                     MOV EAX, dword ptr [EBP + 0x10]
  00d7b7c9: 8d 54 24 14                                  LEA EDX, [ESP + 0x14]
  00d7b7cd: 52                                           PUSH EDX
  00d7b7ce: 50                                           PUSH EAX
  00d7b7cf: 89 44 24 1c                                  MOV dword ptr [ESP + 0x1c], EAX
  00d7b7d3: e8 d8 fd 11 00                               CALL 0x00e9b5b0
  00d7b7d8: 8b 44 24 1c                                  MOV EAX, dword ptr [ESP + 0x1c]
  00d7b7dc: 8b 30                                        MOV ESI, dword ptr [EAX]
  00d7b7de: 8b 78 04                                     MOV EDI, dword ptr [EAX + 0x4]
  00d7b7e1: 83 c4 08                                     ADD ESP, 0x8
  00d7b7e4: 8d 44 24 28                                  LEA EAX, [ESP + 0x28]
  00d7b7e8: 50                                           PUSH EAX
  00d7b7e9: 8d 4c 24 38                                  LEA ECX, [ESP + 0x38]
  00d7b7ed: 89 74 24 2c                                  MOV dword ptr [ESP + 0x2c], ESI
  00d7b7f1: 89 7c 24 30                                  MOV dword ptr [ESP + 0x30], EDI
  00d7b7f5: e8 56 db ff ff                               CALL 0x00d79350
  00d7b7fa: 3b 74 24 50                                  CMP ESI, dword ptr [ESP + 0x50]
  00d7b7fe: 89 28                                        MOV dword ptr [EAX], EBP
  00d7b800: 75 0a                                        JNZ 0x00d7b80c
  00d7b802: 3b 7c 24 54                                  CMP EDI, dword ptr [ESP + 0x54]
  00d7b806: 75 04                                        JNZ 0x00d7b80c
  00d7b808: 89 6c 24 10                                  MOV dword ptr [ESP + 0x10], EBP
  00d7b80c: 8d 4c 24 18                                  LEA ECX, [ESP + 0x18]
  00d7b810: 51                                           PUSH ECX
  00d7b811: 53                                           PUSH EBX
  00d7b812: e8 59 4c 0f 00                               CALL 0x00e70470
  00d7b817: 8b e8                                        MOV EBP, EAX
  00d7b819: 83 c4 08                                     ADD ESP, 0x8
  00d7b81c: 85 ed                                        TEST EBP, EBP
  00d7b81e: 0f 85 0d ff ff ff                            JNZ 0x00d7b731
  00d7b824: 8b 74 24 20                                  MOV ESI, dword ptr [ESP + 0x20]
  00d7b828: 8b 7c 24 24                                  MOV EDI, dword ptr [ESP + 0x24]
  00d7b82c: 8b 6c 24 38                                  MOV EBP, dword ptr [ESP + 0x38]
  00d7b830: 8b 5c 24 34                                  MOV EBX, dword ptr [ESP + 0x34]
  00d7b834: 3b dd                                        CMP EBX, EBP
  00d7b836: 75 19                                        JNZ 0x00d7b851
  00d7b838: 85 db                                        TEST EBX, EBX
  00d7b83a: 74 09                                        JZ 0x00d7b845
  00d7b83c: 53                                           PUSH EBX
  00d7b83d: e8 9e 8c 76 ff                               CALL 0x004e44e0
  00d7b842: 83 c4 04                                     ADD ESP, 0x4
  00d7b845: 5f                                           POP EDI
  00d7b846: 5e                                           POP ESI
  00d7b847: 5d                                           POP EBP
  00d7b848: 33 c0                                        XOR EAX, EAX
  00d7b84a: 5b                                           POP EBX
  00d7b84b: 83 c4 38                                     ADD ESP, 0x38
  00d7b84e: c2 0c 00                                     RET 0xc
  00d7b851: c6 44 24 4c 00                               MOV byte ptr [ESP + 0x4c], 0x0
  00d7b856: 8b 54 24 4c                                  MOV EDX, dword ptr [ESP + 0x4c]
  00d7b85a: 52                                           PUSH EDX
  00d7b85b: 8d 44 24 20                                  LEA EAX, [ESP + 0x20]
  00d7b85f: 50                                           PUSH EAX
  00d7b860: 8d 4c 24 30                                  LEA ECX, [ESP + 0x30]
  00d7b864: 51                                           PUSH ECX
  00d7b865: 8b ce                                        MOV ECX, ESI
  00d7b867: e8 84 82 ff ff                               CALL 0x00d73af0
  00d7b86c: 8b 74 24 28                                  MOV ESI, dword ptr [ESP + 0x28]
  00d7b870: 6a 00                                        PUSH 0x0
  00d7b872: 8d 14 bd 00 00 00 00                         LEA EDX, [EDI*0x4 + 0x0]
  00d7b879: 89 7e 04                                     MOV dword ptr [ESI + 0x4], EDI
  00d7b87c: 8b 0d 64 c8 1c 01                            MOV ECX, dword ptr [0x011cc864]
  00d7b882: 52                                           PUSH EDX
  00d7b883: e8 98 b6 76 ff                               CALL 0x004e6f20
  00d7b888: 89 46 0c                                     MOV dword ptr [ESI + 0xc], EAX
  00d7b88b: 8b 0d 64 c8 1c 01                            MOV ECX, dword ptr [0x011cc864]
  00d7b891: 6a 00                                        PUSH 0x0
  00d7b893: 8d 04 fd 00 00 00 00                         LEA EAX, [EDI*0x8 + 0x0]
  00d7b89a: 50                                           PUSH EAX
  00d7b89b: e8 80 b6 76 ff                               CALL 0x004e6f20
  00d7b8a0: 89 46 08                                     MOV dword ptr [ESI + 0x8], EAX
  00d7b8a3: 8b c3                                        MOV EAX, EBX
  00d7b8a5: 33 db                                        XOR EBX, EBX
  00d7b8a7: 33 c9                                        XOR ECX, ECX
  00d7b8a9: 8d a4 24 00 00 00 00                         LEA ESP, [ESP]
  00d7b8b0: 8b 38                                        MOV EDI, dword ptr [EAX]
  00d7b8b2: 8b 56 08                                     MOV EDX, dword ptr [ESI + 0x8]
  00d7b8b5: 89 3c 11                                     MOV dword ptr [ECX + EDX*0x1], EDI
  00d7b8b8: 8b 78 04                                     MOV EDI, dword ptr [EAX + 0x4]
  00d7b8bb: 89 7c 11 04                                  MOV dword ptr [ECX + EDX*0x1 + 0x4], EDI
  00d7b8bf: 8b 78 08                                     MOV EDI, dword ptr [EAX + 0x8]
  00d7b8c2: 8b 56 0c                                     MOV EDX, dword ptr [ESI + 0xc]
  00d7b8c5: 89 3c 13                                     MOV dword ptr [EBX + EDX*0x1], EDI
  00d7b8c8: 83 c0 10                                     ADD EAX, 0x10
  00d7b8cb: 83 c1 08                                     ADD ECX, 0x8
  00d7b8ce: 83 c3 04                                     ADD EBX, 0x4
  00d7b8d1: 3b c5                                        CMP EAX, EBP
  00d7b8d3: 75 db                                        JNZ 0x00d7b8b0
  00d7b8d5: 8b 44 24 34                                  MOV EAX, dword ptr [ESP + 0x34]
  00d7b8d9: 85 c0                                        TEST EAX, EAX
  00d7b8db: 74 09                                        JZ 0x00d7b8e6
  00d7b8dd: 50                                           PUSH EAX
  00d7b8de: e8 fd 8b 76 ff                               CALL 0x004e44e0
  00d7b8e3: 83 c4 04                                     ADD ESP, 0x4
  00d7b8e6: 8b 44 24 10                                  MOV EAX, dword ptr [ESP + 0x10]
  00d7b8ea: 5f                                           POP EDI
  00d7b8eb: 5e                                           POP ESI
  00d7b8ec: 5d                                           POP EBP
  00d7b8ed: 5b                                           POP EBX
  00d7b8ee: 83 c4 38                                     ADD ESP, 0x38
  00d7b8f1: c2 0c 00                                     RET 0xc
