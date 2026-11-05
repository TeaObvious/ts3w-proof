Original PC 1.67 TS3W.exe; final saved Ghidra Listing with original PE bytes.
Entry: 0x00D760C0 (FindTaskStateWithOptionalCreation)
Paired annotated pseudocode: 00D760C0_FindTaskStateWithOptionalCreation.c
Owned half-open ranges: [['0xd760c0', '0xd761dc']]
Owned bytes: 284; Listing instructions: 101
Identity: references/pc-167.md. Original PE independently decoded by objdump.
Body and stored ABI unchanged. Static evidence; no original runtime execution.

SAVED GHIDRA LISTING WITH ORIGINAL BYTES
  00d760c0: 83 ec 1c                                     SUB ESP, 0x1c
  00d760c3: 53                                           PUSH EBX
  00d760c4: 55                                           PUSH EBP
  00d760c5: 8b e9                                        MOV EBP, ECX
  00d760c7: 8d 44 24 28                                  LEA EAX, [ESP + 0x28]
  00d760cb: 50                                           PUSH EAX
  00d760cc: 8d 4c 24 0c                                  LEA ECX, [ESP + 0xc]
  00d760d0: 8d 9d 88 0b 00 00                            LEA EBX, [EBP + 0xb88]
  00d760d6: 51                                           PUSH ECX
  00d760d7: 8b cb                                        MOV ECX, EBX
  00d760d9: e8 62 d5 ba ff                               CALL 0x00923640 ; Exact UInt64 key lookup in host+B88. The key is both task-ID stack DWORDs, not only the low32 bits.
  00d760de: 8b 53 08                                     MOV EDX, dword ptr [EBX + 0x8]
  00d760e1: 8b 4b 04                                     MOV ECX, dword ptr [EBX + 0x4]
  00d760e4: 8b 44 24 08                                  MOV EAX, dword ptr [ESP + 0x8]
  00d760e8: 3b 04 91                                     CMP EAX, dword ptr [ECX + EDX*0x4]
  00d760eb: 74 0b                                        JZ 0x00d760f8
  00d760ed: 8b 40 08                                     MOV EAX, dword ptr [EAX + 0x8]
  00d760f0: 5d                                           POP EBP
  00d760f1: 5b                                           POP EBX
  00d760f2: 83 c4 1c                                     ADD ESP, 0x1c
  00d760f5: c2 0c 00                                     RET 0xc
  00d760f8: 80 7c 24 30 00                               CMP byte ptr [ESP + 0x30], 0x0 ; Only low byte of creation flag is tested. Registered D835D0 passes0, so a primary-map miss skips all optional construction code and returns0.
  00d760fd: 56                                           PUSH ESI
  00d760fe: 57                                           PUSH EDI
  00d760ff: 0f 84 cb 00 00 00                            JZ 0x00d761d0
  00d76105: 8d 54 24 30                                  LEA EDX, [ESP + 0x30]
  00d76109: 52                                           PUSH EDX
  00d7610a: 8d 44 24 14                                  LEA EAX, [ESP + 0x14]
  00d7610e: 8d b5 60 16 00 00                            LEA ESI, [EBP + 0x1660]
  00d76114: 50                                           PUSH EAX
  00d76115: 8b ce                                        MOV ECX, ESI
  00d76117: e8 24 d5 ba ff                               CALL 0x00923640
  00d7611c: 8b 4e 08                                     MOV ECX, dword ptr [ESI + 0x8]
  00d7611f: 8b 56 04                                     MOV EDX, dword ptr [ESI + 0x4]
  00d76122: 8b 7c 24 10                                  MOV EDI, dword ptr [ESP + 0x10]
  00d76126: 3b 3c 8a                                     CMP EDI, dword ptr [EDX + ECX*0x4]
  00d76129: 75 2b                                        JNZ 0x00d76156
  00d7612b: 8d 44 24 30                                  LEA EAX, [ESP + 0x30]
  00d7612f: 50                                           PUSH EAX
  00d76130: 8d 4c 24 14                                  LEA ECX, [ESP + 0x14]
  00d76134: 8d b5 80 16 00 00                            LEA ESI, [EBP + 0x1680]
  00d7613a: 51                                           PUSH ECX
  00d7613b: 8b ce                                        MOV ECX, ESI
  00d7613d: e8 fe d4 ba ff                               CALL 0x00923640
  00d76142: 8b 38                                        MOV EDI, dword ptr [EAX]
  00d76144: 8b 50 04                                     MOV EDX, dword ptr [EAX + 0x4]
  00d76147: 8b 46 08                                     MOV EAX, dword ptr [ESI + 0x8]
  00d7614a: 8b 4e 04                                     MOV ECX, dword ptr [ESI + 0x4]
  00d7614d: 3b 3c 81                                     CMP EDI, dword ptr [ECX + EAX*0x4]
  00d76150: 89 54 24 14                                  MOV dword ptr [ESP + 0x14], EDX
  00d76154: 74 7a                                        JZ 0x00d761d0
  00d76156: 8b 44 24 34                                  MOV EAX, dword ptr [ESP + 0x34]
  00d7615a: 8b 54 24 30                                  MOV EDX, dword ptr [ESP + 0x30]
  00d7615e: 89 44 24 20                                  MOV dword ptr [ESP + 0x20], EAX
  00d76162: 33 c0                                        XOR EAX, EAX
  00d76164: 88 44 24 38                                  MOV byte ptr [ESP + 0x38], AL
  00d76168: 8b 4c 24 38                                  MOV ECX, dword ptr [ESP + 0x38]
  00d7616c: 51                                           PUSH ECX
  00d7616d: 89 54 24 20                                  MOV dword ptr [ESP + 0x20], EDX
  00d76171: 8d 54 24 20                                  LEA EDX, [ESP + 0x20]
  00d76175: 89 44 24 28                                  MOV dword ptr [ESP + 0x28], EAX
  00d76179: 89 44 24 2c                                  MOV dword ptr [ESP + 0x2c], EAX
  00d7617d: 52                                           PUSH EDX
  00d7617e: 8d 44 24 18                                  LEA EAX, [ESP + 0x18]
  00d76182: 50                                           PUSH EAX
  00d76183: 8b cb                                        MOV ECX, EBX
  00d76185: e8 46 da ff ff                               CALL 0x00d73bd0
  00d7618a: 8b 74 24 10                                  MOV ESI, dword ptr [ESP + 0x10]
  00d7618e: 33 c0                                        XOR EAX, EAX
  00d76190: 89 46 08                                     MOV dword ptr [ESI + 0x8], EAX
  00d76193: 6a 04                                        PUSH 0x4
  00d76195: 89 46 0c                                     MOV dword ptr [ESI + 0xc], EAX
  00d76198: e8 83 5f 0d 00                               CALL 0x00e4c120
  00d7619d: 50                                           PUSH EAX
  00d7619e: c7 00 00 00 00 00                            MOV dword ptr [EAX], 0x0
  00d761a4: 8b 4f 08                                     MOV ECX, dword ptr [EDI + 0x8]
  00d761a7: 6a 00                                        PUSH 0x0
  00d761a9: 51                                           PUSH ECX
  00d761aa: 6a 00                                        PUSH 0x0
  00d761ac: e8 af ce 0d 00                               CALL 0x00e53060
  00d761b1: 83 c4 14                                     ADD ESP, 0x14
  00d761b4: 85 c0                                        TEST EAX, EAX
  00d761b6: 89 46 08                                     MOV dword ptr [ESI + 0x8], EAX
  00d761b9: 74 15                                        JZ 0x00d761d0
  00d761bb: 50                                           PUSH EAX
  00d761bc: 8b cd                                        MOV ECX, EBP
  00d761be: e8 dd e8 ff ff                               CALL 0x00d74aa0
  00d761c3: 8b 46 08                                     MOV EAX, dword ptr [ESI + 0x8]
  00d761c6: 5f                                           POP EDI
  00d761c7: 5e                                           POP ESI
  00d761c8: 5d                                           POP EBP
  00d761c9: 5b                                           POP EBX
  00d761ca: 83 c4 1c                                     ADD ESP, 0x1c
  00d761cd: c2 0c 00                                     RET 0xc
  00d761d0: 5f                                           POP EDI
  00d761d1: 5e                                           POP ESI
  00d761d2: 5d                                           POP EBP
  00d761d3: 33 c0                                        XOR EAX, EAX
  00d761d5: 5b                                           POP EBX
  00d761d6: 83 c4 1c                                     ADD ESP, 0x1c
  00d761d9: c2 0c 00                                     RET 0xc
