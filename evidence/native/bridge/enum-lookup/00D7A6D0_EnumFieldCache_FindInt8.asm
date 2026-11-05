TS3W PC 1.67; original identity: evidence/reference.json.
Saved Ghidra evidence; current name: EnumFieldCache_FindInt8.
Original instruction/byte blocks and ownership qualifications are unchanged.
Generated types and signatures remain projections; machine instructions are authoritative.

Original PC 1.67 TS3W.exe; final saved Ghidra Listing with original PE bytes.
Entry: 0x00D7A6D0 (EnumFieldCache_FindInt8)
Paired annotated Ghidra pseudocode: 00D7A6D0_EnumFieldCache_FindInt8.c
Owned half-open range: [0x00D7A6D0,0x00D7A954)
Owned bytes: 644; Listing instructions: 215
Original identity: references/pc-167.md. GNU and LLVM independently agree on all instruction boundaries and bytes.
Function ownership and generated ABI remain unchanged; semantic name/comment were read back.
Analyst plate: Analyst PC1.67 Int8 enum-field lookup. Value words are scalar stack storage; the preserved pointer-looking decompiler parameter is not dereferenced. ECX receiver +0B4C locates the shared class-record-pointer-keyed cache; stored entry +4 is count, +8 packed 8-bit values, +0C parallel field pointers. Warm path calls 00D73250 then rejects end and query<candidate with signed ordering; only the low 8 value bits are read. Cold path enumerates E70470 fields, skips exact value__ and conditionally _Deleted under [field.type+4]&600h, lazily fills field+10/+18 through E6FAA0/E9CD80/E9B500/E9B3F0, then E9B5B0 supplies bytes read at width 8. Slot helper 00D79010 returns the field-pointer location which is overwritten; each exact query match updates the cold result. Cache count is E6BA40(class)-1, not locally recomputed from copied pairs: duplicate/filter count invariants remain unresolved. Returns field pointer or zero; no flags composition, runtime behavior or alias/cache parity inferred.

SAVED GHIDRA LISTING WITH ORIGINAL BYTES
  00d7a6d0: 83 ec 38                                     SUB ESP, 0x38
  00d7a6d3: 53                                           PUSH EBX
  00d7a6d4: 8b 5c 24 40                                  MOV EBX, dword ptr [ESP + 0x40]
  00d7a6d8: 55                                           PUSH EBP
  00d7a6d9: 56                                           PUSH ESI
  00d7a6da: 57                                           PUSH EDI
  00d7a6db: 8d b1 4c 0b 00 00                            LEA ESI, [ECX + 0xb4c]
  00d7a6e1: 8d 44 24 20                                  LEA EAX, [ESP + 0x20]
  00d7a6e5: 50                                           PUSH EAX
  00d7a6e6: 8d 4c 24 2c                                  LEA ECX, [ESP + 0x2c]
  00d7a6ea: 51                                           PUSH ECX
  00d7a6eb: 33 ed                                        XOR EBP, EBP
  00d7a6ed: 8b ce                                        MOV ECX, ESI
  00d7a6ef: 89 6c 24 18                                  MOV dword ptr [ESP + 0x18], EBP
  00d7a6f3: 89 5c 24 28                                  MOV dword ptr [ESP + 0x28], EBX
  00d7a6f7: 89 74 24 2c                                  MOV dword ptr [ESP + 0x2c], ESI
  00d7a6fb: e8 c0 7e 7b ff                               CALL 0x005325c0
  00d7a700: 8b 56 08                                     MOV EDX, dword ptr [ESI + 0x8]
  00d7a703: 8b 46 04                                     MOV EAX, dword ptr [ESI + 0x4]
  00d7a706: 8b 7c 24 28                                  MOV EDI, dword ptr [ESP + 0x28]
  00d7a70a: 3b 3c 90                                     CMP EDI, dword ptr [EAX + EDX*0x4]
  00d7a70d: 74 43                                        JZ 0x00d7a752
  00d7a70f: 8b 5f 08                                     MOV EBX, dword ptr [EDI + 0x8]
  00d7a712: 8b 77 04                                     MOV ESI, dword ptr [EDI + 0x4]
  00d7a715: 8d 4c 24 50                                  LEA ECX, [ESP + 0x50]
  00d7a719: 51                                           PUSH ECX
  00d7a71a: 03 f3                                        ADD ESI, EBX
  00d7a71c: 56                                           PUSH ESI
  00d7a71d: 53                                           PUSH EBX
  00d7a71e: e8 2d 8b ff ff                               CALL 0x00d73250
  00d7a723: 83 c4 0c                                     ADD ESP, 0xc
  00d7a726: 3b c6                                        CMP EAX, ESI
  00d7a728: 0f 84 18 02 00 00                            JZ 0x00d7a946
  00d7a72e: 8a 54 24 50                                  MOV DL, byte ptr [ESP + 0x50]
  00d7a732: 3a 10                                        CMP DL, byte ptr [EAX]
  00d7a734: 0f 8c 0c 02 00 00                            JL 0x00d7a946
  00d7a73a: 8b 4f 0c                                     MOV ECX, dword ptr [EDI + 0xc]
  00d7a73d: 5f                                           POP EDI
  00d7a73e: 2b c3                                        SUB EAX, EBX
  00d7a740: 8b 14 81                                     MOV EDX, dword ptr [ECX + EAX*0x4]
  00d7a743: 5e                                           POP ESI
  00d7a744: 5d                                           POP EBP
  00d7a745: 89 54 24 04                                  MOV dword ptr [ESP + 0x4], EDX
  00d7a749: 8b c2                                        MOV EAX, EDX
  00d7a74b: 5b                                           POP EBX
  00d7a74c: 83 c4 38                                     ADD ESP, 0x38
  00d7a74f: c2 08 00                                     RET 0x8
  00d7a752: 53                                           PUSH EBX
  00d7a753: 89 6c 24 38                                  MOV dword ptr [ESP + 0x38], EBP
  00d7a757: 89 6c 24 3c                                  MOV dword ptr [ESP + 0x3c], EBP
  00d7a75b: 89 6c 24 40                                  MOV dword ptr [ESP + 0x40], EBP
  00d7a75f: c7 44 24 44 ac c5 08 01                      MOV dword ptr [ESP + 0x44], 0x108c5ac
  00d7a767: e8 d4 12 0f 00                               CALL 0x00e6ba40
  00d7a76c: 8b f8                                        MOV EDI, EAX
  00d7a76e: 83 ef 01                                     SUB EDI, 0x1
  00d7a771: 83 c4 04                                     ADD ESP, 0x4
  00d7a774: 3b fd                                        CMP EDI, EBP
  00d7a776: 89 7c 24 28                                  MOV dword ptr [ESP + 0x28], EDI
  00d7a77a: 0f 8e 3b 01 00 00                            JLE 0x00d7a8bb
  00d7a780: 57                                           PUSH EDI
  00d7a781: 8d 4c 24 38                                  LEA ECX, [ESP + 0x38]
  00d7a785: e8 96 ab ff ff                               CALL 0x00d75320
  00d7a78a: 8d 44 24 1c                                  LEA EAX, [ESP + 0x1c]
  00d7a78e: 50                                           PUSH EAX
  00d7a78f: 53                                           PUSH EBX
  00d7a790: 89 6c 24 24                                  MOV dword ptr [ESP + 0x24], EBP
  00d7a794: c7 44 24 1c ff ff ff ff                      MOV dword ptr [ESP + 0x1c], 0xffffffff
  00d7a79c: e8 cf 5c 0f 00                               CALL 0x00e70470
  00d7a7a1: 8b e8                                        MOV EBP, EAX
  00d7a7a3: 83 c4 08                                     ADD ESP, 0x8
  00d7a7a6: 85 ed                                        TEST EBP, EBP
  00d7a7a8: 0f 84 f4 00 00 00                            JZ 0x00d7a8a2
  00d7a7ae: 8b ff                                        MOV EDI, EDI
  00d7a7b0: 8b 45 0c                                     MOV EAX, dword ptr [EBP + 0xc]
  00d7a7b3: 8b f8                                        MOV EDI, EAX
  00d7a7b5: be a4 c5 08 01                               MOV ESI, 0x108c5a4
  00d7a7ba: b9 08 00 00 00                               MOV ECX, 0x8
  00d7a7bf: 33 d2                                        XOR EDX, EDX
  00d7a7c1: f3 a6                                        CMPSB.REPE ES:EDI, ESI
  00d7a7c3: 0f 84 b9 00 00 00                            JZ 0x00d7a882
  00d7a7c9: 8b 4d 00                                     MOV ECX, dword ptr [EBP]
  00d7a7cc: f7 41 04 00 06 00 00                         TEST dword ptr [ECX + 0x4], 0x600
  00d7a7d3: 74 16                                        JZ 0x00d7a7eb
  00d7a7d5: bf 98 c5 08 01                               MOV EDI, 0x108c598
  00d7a7da: 8b f0                                        MOV ESI, EAX
  00d7a7dc: b9 09 00 00 00                               MOV ECX, 0x9
  00d7a7e1: 33 d2                                        XOR EDX, EDX
  00d7a7e3: f3 a6                                        CMPSB.REPE ES:EDI, ESI
  00d7a7e5: 0f 84 97 00 00 00                            JZ 0x00d7a882
  00d7a7eb: 83 7d 10 00                                  CMP dword ptr [EBP + 0x10], 0x0
  00d7a7ef: 75 54                                        JNZ 0x00d7a845
  00d7a7f1: 8b 44 24 14                                  MOV EAX, dword ptr [ESP + 0x14]
  00d7a7f5: 83 c0 01                                     ADD EAX, 0x1
  00d7a7f8: 50                                           PUSH EAX
  00d7a7f9: 55                                           PUSH EBP
  00d7a7fa: e8 a1 52 0f 00                               CALL 0x00e6faa0
  00d7a7ff: 8b 0b                                        MOV ECX, dword ptr [EBX]
  00d7a801: 83 c4 04                                     ADD ESP, 0x4
  00d7a804: 50                                           PUSH EAX
  00d7a805: 51                                           PUSH ECX
  00d7a806: e8 75 25 12 00                               CALL 0x00e9cd80
  00d7a80b: 8b 13                                        MOV EDX, dword ptr [EBX]
  00d7a80d: 8d 70 ff                                     LEA ESI, [EAX + -0x1]
  00d7a810: 6a 00                                        PUSH 0x0
  00d7a812: 81 c2 e8 00 00 00                            ADD EDX, 0xe8
  00d7a818: 56                                           PUSH ESI
  00d7a819: 52                                           PUSH EDX
  00d7a81a: e8 e1 0c 12 00                               CALL 0x00e9b500
  00d7a81f: 89 45 18                                     MOV dword ptr [EBP + 0x18], EAX
  00d7a822: 8b 03                                        MOV EAX, dword ptr [EBX]
  00d7a824: 6a 03                                        PUSH 0x3
  00d7a826: 05 e8 00 00 00                               ADD EAX, 0xe8
  00d7a82b: 56                                           PUSH ESI
  00d7a82c: 50                                           PUSH EAX
  00d7a82d: e8 ce 0c 12 00                               CALL 0x00e9b500
  00d7a832: 8b 0b                                        MOV ECX, dword ptr [EBX]
  00d7a834: 50                                           PUSH EAX
  00d7a835: 51                                           PUSH ECX
  00d7a836: 89 44 24 40                                  MOV dword ptr [ESP + 0x40], EAX
  00d7a83a: e8 b1 0b 12 00                               CALL 0x00e9b3f0
  00d7a83f: 83 c4 2c                                     ADD ESP, 0x2c
  00d7a842: 89 45 10                                     MOV dword ptr [EBP + 0x10], EAX
  00d7a845: 8b 45 10                                     MOV EAX, dword ptr [EBP + 0x10]
  00d7a848: 8d 54 24 18                                  LEA EDX, [ESP + 0x18]
  00d7a84c: 52                                           PUSH EDX
  00d7a84d: 50                                           PUSH EAX
  00d7a84e: 89 44 24 20                                  MOV dword ptr [ESP + 0x20], EAX
  00d7a852: e8 59 0d 12 00                               CALL 0x00e9b5b0
  00d7a857: 8b 44 24 20                                  MOV EAX, dword ptr [ESP + 0x20]
  00d7a85b: 8a 08                                        MOV CL, byte ptr [EAX]
  00d7a85d: 83 c4 08                                     ADD ESP, 0x8
  00d7a860: 8d 54 24 4c                                  LEA EDX, [ESP + 0x4c]
  00d7a864: 88 4c 24 4c                                  MOV byte ptr [ESP + 0x4c], CL
  00d7a868: 52                                           PUSH EDX
  00d7a869: 8d 4c 24 38                                  LEA ECX, [ESP + 0x38]
  00d7a86d: e8 9e e7 ff ff                               CALL 0x00d79010
  00d7a872: 89 28                                        MOV dword ptr [EAX], EBP
  00d7a874: 8a 44 24 50                                  MOV AL, byte ptr [ESP + 0x50]
  00d7a878: 38 44 24 4c                                  CMP byte ptr [ESP + 0x4c], AL
  00d7a87c: 75 04                                        JNZ 0x00d7a882
  00d7a87e: 89 6c 24 10                                  MOV dword ptr [ESP + 0x10], EBP
  00d7a882: 8d 4c 24 1c                                  LEA ECX, [ESP + 0x1c]
  00d7a886: 51                                           PUSH ECX
  00d7a887: 53                                           PUSH EBX
  00d7a888: e8 e3 5b 0f 00                               CALL 0x00e70470
  00d7a88d: 8b e8                                        MOV EBP, EAX
  00d7a88f: 83 c4 08                                     ADD ESP, 0x8
  00d7a892: 85 ed                                        TEST EBP, EBP
  00d7a894: 0f 85 16 ff ff ff                            JNZ 0x00d7a7b0
  00d7a89a: 8b 74 24 24                                  MOV ESI, dword ptr [ESP + 0x24]
  00d7a89e: 8b 7c 24 28                                  MOV EDI, dword ptr [ESP + 0x28]
  00d7a8a2: 8b 5c 24 34                                  MOV EBX, dword ptr [ESP + 0x34]
  00d7a8a6: 8b 6c 24 38                                  MOV EBP, dword ptr [ESP + 0x38]
  00d7a8aa: 3b dd                                        CMP EBX, EBP
  00d7a8ac: 75 19                                        JNZ 0x00d7a8c7
  00d7a8ae: 85 db                                        TEST EBX, EBX
  00d7a8b0: 74 09                                        JZ 0x00d7a8bb
  00d7a8b2: 53                                           PUSH EBX
  00d7a8b3: e8 28 9c 76 ff                               CALL 0x004e44e0
  00d7a8b8: 83 c4 04                                     ADD ESP, 0x4
  00d7a8bb: 5f                                           POP EDI
  00d7a8bc: 5e                                           POP ESI
  00d7a8bd: 5d                                           POP EBP
  00d7a8be: 33 c0                                        XOR EAX, EAX
  00d7a8c0: 5b                                           POP EBX
  00d7a8c1: 83 c4 38                                     ADD ESP, 0x38
  00d7a8c4: c2 08 00                                     RET 0x8
  00d7a8c7: c6 44 24 50 00                               MOV byte ptr [ESP + 0x50], 0x0
  00d7a8cc: 8b 54 24 50                                  MOV EDX, dword ptr [ESP + 0x50]
  00d7a8d0: 52                                           PUSH EDX
  00d7a8d1: 8d 44 24 24                                  LEA EAX, [ESP + 0x24]
  00d7a8d5: 50                                           PUSH EAX
  00d7a8d6: 8d 4c 24 30                                  LEA ECX, [ESP + 0x30]
  00d7a8da: 51                                           PUSH ECX
  00d7a8db: 8b ce                                        MOV ECX, ESI
  00d7a8dd: e8 0e 92 ff ff                               CALL 0x00d73af0
  00d7a8e2: 8b 74 24 28                                  MOV ESI, dword ptr [ESP + 0x28]
  00d7a8e6: 6a 00                                        PUSH 0x0
  00d7a8e8: 8d 14 bd 00 00 00 00                         LEA EDX, [EDI*0x4 + 0x0]
  00d7a8ef: 89 7e 04                                     MOV dword ptr [ESI + 0x4], EDI
  00d7a8f2: 8b 0d 64 c8 1c 01                            MOV ECX, dword ptr [0x011cc864]
  00d7a8f8: 52                                           PUSH EDX
  00d7a8f9: e8 22 c6 76 ff                               CALL 0x004e6f20
  00d7a8fe: 6a 00                                        PUSH 0x0
  00d7a900: 89 46 0c                                     MOV dword ptr [ESI + 0xc], EAX
  00d7a903: 8b 0d 64 c8 1c 01                            MOV ECX, dword ptr [0x011cc864]
  00d7a909: 57                                           PUSH EDI
  00d7a90a: e8 11 c6 76 ff                               CALL 0x004e6f20
  00d7a90f: 89 46 08                                     MOV dword ptr [ESI + 0x8], EAX
  00d7a912: 33 c9                                        XOR ECX, ECX
  00d7a914: 8b c3                                        MOV EAX, EBX
  00d7a916: 8b 56 08                                     MOV EDX, dword ptr [ESI + 0x8]
  00d7a919: 89 5c 24 50                                  MOV dword ptr [ESP + 0x50], EBX
  00d7a91d: 8a 18                                        MOV BL, byte ptr [EAX]
  00d7a91f: 88 1c 11                                     MOV byte ptr [ECX + EDX*0x1], BL
  00d7a922: 8b 78 04                                     MOV EDI, dword ptr [EAX + 0x4]
  00d7a925: 8b 56 0c                                     MOV EDX, dword ptr [ESI + 0xc]
  00d7a928: 8b 5c 24 50                                  MOV EBX, dword ptr [ESP + 0x50]
  00d7a92c: 89 3c 8a                                     MOV dword ptr [EDX + ECX*0x4], EDI
  00d7a92f: 83 c0 08                                     ADD EAX, 0x8
  00d7a932: 83 c1 01                                     ADD ECX, 0x1
  00d7a935: 3b c5                                        CMP EAX, EBP
  00d7a937: 75 dd                                        JNZ 0x00d7a916
  00d7a939: 85 db                                        TEST EBX, EBX
  00d7a93b: 74 09                                        JZ 0x00d7a946
  00d7a93d: 53                                           PUSH EBX
  00d7a93e: e8 9d 9b 76 ff                               CALL 0x004e44e0
  00d7a943: 83 c4 04                                     ADD ESP, 0x4
  00d7a946: 8b 44 24 10                                  MOV EAX, dword ptr [ESP + 0x10]
  00d7a94a: 5f                                           POP EDI
  00d7a94b: 5e                                           POP ESI
  00d7a94c: 5d                                           POP EBP
  00d7a94d: 5b                                           POP EBX
  00d7a94e: 83 c4 38                                     ADD ESP, 0x38
  00d7a951: c2 08 00                                     RET 0x8
