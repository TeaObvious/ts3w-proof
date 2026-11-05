Original PC 1.67 TS3W.exe; final saved Ghidra Listing with original PE bytes.
Entry: 0x00D7CC60 (EnumFieldLookup_ByUnderlyingValue)
Paired annotated Ghidra pseudocode: 00D7CC60_EnumFieldLookup_ByUnderlyingValue.c
Owned half-open range: [0x00D7CC60,0x00D7CD41)
Owned bytes: 225; Listing instructions: 67
Original identity: references/pc-167.md. GNU and LLVM independently agree on all instruction boundaries and bytes.
Function ownership and generated ABI remain unchanged; semantic name/comment were read back.
Analyst plate: Analyst PC1.67 contract: dispatch by unsigned byte [[stack arg1+4]+6]. Tags 3/7 use UInt16, 4 Int8, 5 UInt8, 6 Int16, 8 Int32, 9 UInt32, 10 Int64, 11 UInt64; table at 00D7CD44 has nine DWORDs. Other tags return EAX=0. Value words are scalar stack storage; the preserved pointer-looking decompiler parameter is not dereferenced. Typed callees receive global 011EF514 in ECX, class-like arg1 and the low value word; tags 10/11 also receive the high word. This body overwrites incoming ECX before use and ends each path with RET 0C. Field result +0C is consumed as name by registered root candidates D7CE10/D7CEA0, which remain undefined; no flags composition or alias-selection guarantee follows from this dispatch.

SAVED GHIDRA LISTING WITH ORIGINAL BYTES
  00d7cc60: 8b 44 24 04                                  MOV EAX, dword ptr [ESP + 0x4]
  00d7cc64: 8b 48 04                                     MOV ECX, dword ptr [EAX + 0x4]
  00d7cc67: 0f b6 49 06                                  MOVZX ECX, byte ptr [ECX + 0x6]
  00d7cc6b: 83 c1 fd                                     ADD ECX, -0x3
  00d7cc6e: 83 f9 08                                     CMP ECX, 0x8
  00d7cc71: 0f 87 c5 00 00 00                            JA 0x00d7cd3c
  00d7cc77: ff 24 8d 44 cd d7 00                         JMP dword ptr [ECX*0x4 + 0xd7cd44]
  00d7cc7e: 8b 54 24 08                                  MOV EDX, dword ptr [ESP + 0x8]
  00d7cc82: 8b 0d 14 f5 1e 01                            MOV ECX, dword ptr [0x011ef514]
  00d7cc88: 52                                           PUSH EDX
  00d7cc89: 50                                           PUSH EAX
  00d7cc8a: e8 b1 d7 ff ff                               CALL 0x00d7a440
  00d7cc8f: c2 0c 00                                     RET 0xc
  00d7cc92: 8b 4c 24 08                                  MOV ECX, dword ptr [ESP + 0x8]
  00d7cc96: 51                                           PUSH ECX
  00d7cc97: 8b 0d 14 f5 1e 01                            MOV ECX, dword ptr [0x011ef514]
  00d7cc9d: 50                                           PUSH EAX
  00d7cc9e: e8 2d da ff ff                               CALL 0x00d7a6d0
  00d7cca3: c2 0c 00                                     RET 0xc
  00d7cca6: 8b 54 24 08                                  MOV EDX, dword ptr [ESP + 0x8]
  00d7ccaa: 8b 0d 14 f5 1e 01                            MOV ECX, dword ptr [0x011ef514]
  00d7ccb0: 52                                           PUSH EDX
  00d7ccb1: 50                                           PUSH EAX
  00d7ccb2: e8 a9 dc ff ff                               CALL 0x00d7a960
  00d7ccb7: c2 0c 00                                     RET 0xc
  00d7ccba: 8b 4c 24 08                                  MOV ECX, dword ptr [ESP + 0x8]
  00d7ccbe: 51                                           PUSH ECX
  00d7ccbf: 8b 0d 14 f5 1e 01                            MOV ECX, dword ptr [0x011ef514]
  00d7ccc5: 50                                           PUSH EAX
  00d7ccc6: e8 95 dc ff ff                               CALL 0x00d7a960
  00d7cccb: c2 0c 00                                     RET 0xc
  00d7ccce: 8b 54 24 08                                  MOV EDX, dword ptr [ESP + 0x8]
  00d7ccd2: 8b 0d 14 f5 1e 01                            MOV ECX, dword ptr [0x011ef514]
  00d7ccd8: 52                                           PUSH EDX
  00d7ccd9: 50                                           PUSH EAX
  00d7ccda: e8 11 df ff ff                               CALL 0x00d7abf0
  00d7ccdf: c2 0c 00                                     RET 0xc
  00d7cce2: 8b 4c 24 08                                  MOV ECX, dword ptr [ESP + 0x8]
  00d7cce6: 51                                           PUSH ECX
  00d7cce7: 8b 0d 14 f5 1e 01                            MOV ECX, dword ptr [0x011ef514]
  00d7cced: 50                                           PUSH EAX
  00d7ccee: e8 8d e1 ff ff                               CALL 0x00d7ae80
  00d7ccf3: c2 0c 00                                     RET 0xc
  00d7ccf6: 8b 54 24 08                                  MOV EDX, dword ptr [ESP + 0x8]
  00d7ccfa: 8b 0d 14 f5 1e 01                            MOV ECX, dword ptr [0x011ef514]
  00d7cd00: 52                                           PUSH EDX
  00d7cd01: 50                                           PUSH EAX
  00d7cd02: e8 f9 e3 ff ff                               CALL 0x00d7b100
  00d7cd07: c2 0c 00                                     RET 0xc
  00d7cd0a: 8b 4c 24 0c                                  MOV ECX, dword ptr [ESP + 0xc]
  00d7cd0e: 8b 54 24 08                                  MOV EDX, dword ptr [ESP + 0x8]
  00d7cd12: 51                                           PUSH ECX
  00d7cd13: 8b 0d 14 f5 1e 01                            MOV ECX, dword ptr [0x011ef514]
  00d7cd19: 52                                           PUSH EDX
  00d7cd1a: 50                                           PUSH EAX
  00d7cd1b: e8 60 e6 ff ff                               CALL 0x00d7b380
  00d7cd20: c2 0c 00                                     RET 0xc
  00d7cd23: 8b 4c 24 0c                                  MOV ECX, dword ptr [ESP + 0xc]
  00d7cd27: 8b 54 24 08                                  MOV EDX, dword ptr [ESP + 0x8]
  00d7cd2b: 51                                           PUSH ECX
  00d7cd2c: 8b 0d 14 f5 1e 01                            MOV ECX, dword ptr [0x011ef514]
  00d7cd32: 52                                           PUSH EDX
  00d7cd33: 50                                           PUSH EAX
  00d7cd34: e8 07 e9 ff ff                               CALL 0x00d7b640
  00d7cd39: c2 0c 00                                     RET 0xc
  00d7cd3c: 33 c0                                        XOR EAX, EAX
  00d7cd3e: c2 0c 00                                     RET 0xc
