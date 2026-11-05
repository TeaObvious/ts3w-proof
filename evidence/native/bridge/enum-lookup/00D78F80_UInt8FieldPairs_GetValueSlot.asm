TS3W PC 1.67; original identity: evidence/reference.json.
Saved Ghidra evidence; current name: UInt8FieldPairs_GetValueSlot.
Original instruction/byte blocks and ownership qualifications are unchanged.
Generated types and signatures remain projections; machine instructions are authoritative.

Original PC 1.67 TS3W.exe; final saved Ghidra Listing with original PE bytes.
Entry: 0x00D78F80 (UInt8FieldPairs_GetValueSlot)
Paired annotated Ghidra pseudocode: 00D78F80_UInt8FieldPairs_GetValueSlot.c
Owned half-open range: [0x00D78F80,0x00D79007)
Owned bytes: 135; Listing instructions: 58
Original identity: references/pc-167.md. GNU and LLVM independently agree on all instruction boundaries and bytes.
Function ownership and generated ABI remain unchanged; semantic name/comment were read back.
Analyst plate: Analyst PC1.67 slot accessor for byte-key/field-pointer temporary pairs (8-byte stride). Calls D73430(begin,end,key,byte[receiver+10h]); candidate==end or unsigned key<candidate creates a local key/zero value pair and delegates to D77470 or D77530. Otherwise returns candidate+4 without insertion; an equal candidate therefore reuses its existing value slot, overwritten by the enum caller. EAX is a pointer to the value slot, not the field itself; RET 04. Search/insert ordering, global duplicate coalescing and receiver+10h state semantics require their own bodies; no general alias policy is asserted.

SAVED GHIDRA LISTING WITH ORIGINAL BYTES
  00d78f80: 83 ec 10                                     SUB ESP, 0x10
  00d78f83: 53                                           PUSH EBX
  00d78f84: 8b 5c 24 18                                  MOV EBX, dword ptr [ESP + 0x18]
  00d78f88: 55                                           PUSH EBP
  00d78f89: 56                                           PUSH ESI
  00d78f8a: 8b f1                                        MOV ESI, ECX
  00d78f8c: 0f b6 46 10                                  MOVZX EAX, byte ptr [ESI + 0x10]
  00d78f90: 8b 2e                                        MOV EBP, dword ptr [ESI]
  00d78f92: 57                                           PUSH EDI
  00d78f93: 8b 7e 04                                     MOV EDI, dword ptr [ESI + 0x4]
  00d78f96: 50                                           PUSH EAX
  00d78f97: 53                                           PUSH EBX
  00d78f98: 57                                           PUSH EDI
  00d78f99: 55                                           PUSH EBP
  00d78f9a: e8 91 a4 ff ff                               CALL 0x00d73430
  00d78f9f: 83 c4 10                                     ADD ESP, 0x10
  00d78fa2: 3b c7                                        CMP EAX, EDI
  00d78fa4: 74 06                                        JZ 0x00d78fac
  00d78fa6: 8a 0b                                        MOV CL, byte ptr [EBX]
  00d78fa8: 3a 08                                        CMP CL, byte ptr [EAX]
  00d78faa: 73 4e                                        JNC 0x00d78ffa
  00d78fac: 3b c7                                        CMP EAX, EDI
  00d78fae: 8a 1b                                        MOV BL, byte ptr [EBX]
  00d78fb0: 88 5c 24 10                                  MOV byte ptr [ESP + 0x10], BL
  00d78fb4: c7 44 24 14 00 00 00 00                      MOV dword ptr [ESP + 0x14], 0x0
  00d78fbc: 74 04                                        JZ 0x00d78fc2
  00d78fbe: 3a 18                                        CMP BL, byte ptr [EAX]
  00d78fc0: 73 09                                        JNC 0x00d78fcb
  00d78fc2: 3b c5                                        CMP EAX, EBP
  00d78fc4: 74 27                                        JZ 0x00d78fed
  00d78fc6: 38 58 f8                                     CMP byte ptr [EAX + -0x8], BL
  00d78fc9: 72 22                                        JC 0x00d78fed
  00d78fcb: 8d 54 24 10                                  LEA EDX, [ESP + 0x10]
  00d78fcf: 52                                           PUSH EDX
  00d78fd0: 8d 44 24 1c                                  LEA EAX, [ESP + 0x1c]
  00d78fd4: 50                                           PUSH EAX
  00d78fd5: 8b ce                                        MOV ECX, ESI
  00d78fd7: e8 94 e4 ff ff                               CALL 0x00d77470
  00d78fdc: 8b 44 24 18                                  MOV EAX, dword ptr [ESP + 0x18]
  00d78fe0: 5f                                           POP EDI
  00d78fe1: 5e                                           POP ESI
  00d78fe2: 5d                                           POP EBP
  00d78fe3: 83 c0 04                                     ADD EAX, 0x4
  00d78fe6: 5b                                           POP EBX
  00d78fe7: 83 c4 10                                     ADD ESP, 0x10
  00d78fea: c2 04 00                                     RET 0x4
  00d78fed: 8d 4c 24 10                                  LEA ECX, [ESP + 0x10]
  00d78ff1: 51                                           PUSH ECX
  00d78ff2: 50                                           PUSH EAX
  00d78ff3: 8b ce                                        MOV ECX, ESI
  00d78ff5: e8 36 e5 ff ff                               CALL 0x00d77530
  00d78ffa: 5f                                           POP EDI
  00d78ffb: 5e                                           POP ESI
  00d78ffc: 5d                                           POP EBP
  00d78ffd: 83 c0 04                                     ADD EAX, 0x4
  00d79000: 5b                                           POP EBX
  00d79001: 83 c4 10                                     ADD ESP, 0x10
  00d79004: c2 04 00                                     RET 0x4
