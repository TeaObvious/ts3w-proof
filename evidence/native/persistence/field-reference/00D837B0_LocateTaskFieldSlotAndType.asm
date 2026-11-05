Original PC 1.67 TS3W.exe; final saved Ghidra Listing with original PE bytes.
Entry: 0x00D837B0 (LocateTaskFieldSlotAndType)
Paired annotated pseudocode: 00D837B0_LocateTaskFieldSlotAndType.c
Owned half-open ranges: [['0xd837b0', '0xd8386d']]
Owned bytes: 189; Listing instructions: 77
Identity: references/pc-167.md. Original PE independently decoded by objdump.
Body and stored ABI unchanged. Static evidence; no original runtime execution.

SAVED GHIDRA LISTING WITH ORIGINAL BYTES
  00d837b0: e8 db 5b 9e ff                               CALL 0x00769390
  00d837b5: 85 c0                                        TEST EAX, EAX
  00d837b7: 74 05                                        JZ 0x00d837be
  00d837b9: 8d 48 f8                                     LEA ECX, [EAX + -0x8]
  00d837bc: eb 02                                        JMP 0x00d837c0
  00d837be: 33 c9                                        XOR ECX, ECX
  00d837c0: 8b 44 24 08                                  MOV EAX, dword ptr [ESP + 0x8]
  00d837c4: 8b 54 24 04                                  MOV EDX, dword ptr [ESP + 0x4]
  00d837c8: 57                                           PUSH EDI
  00d837c9: 6a 00                                        PUSH 0x0
  00d837cb: 50                                           PUSH EAX
  00d837cc: 52                                           PUSH EDX
  00d837cd: e8 ee 28 ff ff                               CALL 0x00d760c0
  00d837d2: 85 c0                                        TEST EAX, EAX
  00d837d4: 74 14                                        JZ 0x00d837ea
  00d837d6: 8b 4c 24 10                                  MOV ECX, dword ptr [ESP + 0x10]
  00d837da: 3b 88 40 01 00 00                            CMP ECX, dword ptr [EAX + 0x140]
  00d837e0: 77 08                                        JA 0x00d837ea
  00d837e2: 8b 7c 88 3c                                  MOV EDI, dword ptr [EAX + ECX*0x4 + 0x3c]
  00d837e6: 85 ff                                        TEST EDI, EDI
  00d837e8: 75 04                                        JNZ 0x00d837ee
  00d837ea: 32 c0                                        XOR AL, AL
  00d837ec: 5f                                           POP EDI
  00d837ed: c3                                           RET
  00d837ee: 53                                           PUSH EBX
  00d837ef: 56                                           PUSH ESI
  00d837f0: 8b 37                                        MOV ESI, dword ptr [EDI]
  00d837f2: 8b 5e 0c                                     MOV EBX, dword ptr [ESI + 0xc] ; Load method pointer from layout+0C. D835D0 byref normalization instead uses layout+8; no equivalence of these two metadata pointers is assumed.
  00d837f5: 53                                           PUSH EBX
  00d837f6: e8 75 1e 10 00                               CALL 0x00e85670
  00d837fb: 0f b6 4e 40                                  MOVZX ECX, byte ptr [ESI + 0x40]
  00d837ff: 8b 54 24 20                                  MOV EDX, dword ptr [ESP + 0x20]
  00d83803: 83 c4 04                                     ADD ESP, 0x4
  00d83806: 3b d1                                        CMP EDX, ECX ; Unsigned field index below byte argument count uses argument offset/type arrays; otherwise subtract that count and require local index below UInt16 header+10.
  00d83808: 73 22                                        JNC 0x00d8382c
  00d8380a: 8b 46 1c                                     MOV EAX, dword ptr [ESI + 0x1c]
  00d8380d: 8b 0c 90                                     MOV ECX, dword ptr [EAX + EDX*0x4]
  00d83810: 8b 43 0c                                     MOV EAX, dword ptr [EBX + 0xc]
  00d83813: 8b 44 90 10                                  MOV EAX, dword ptr [EAX + EDX*0x4 + 0x10]
  00d83817: 03 4f 20                                     ADD ECX, dword ptr [EDI + 0x20]
  00d8381a: 8b 54 24 20                                  MOV EDX, dword ptr [ESP + 0x20]
  00d8381e: 89 02                                        MOV dword ptr [EDX], EAX ; Success publishes type pointer and computed storage-slot address, then AL1. Byref contents are not dereferenced by this helper.
  00d83820: 8b 44 24 24                                  MOV EAX, dword ptr [ESP + 0x24]
  00d83824: 5e                                           POP ESI
  00d83825: 5b                                           POP EBX
  00d83826: 89 08                                        MOV dword ptr [EAX], ECX
  00d83828: b0 01                                        MOV AL, 0x1
  00d8382a: 5f                                           POP EDI
  00d8382b: c3                                           RET
  00d8382c: 2b d1                                        SUB EDX, ECX
  00d8382e: 0f b7 48 10                                  MOVZX ECX, word ptr [EAX + 0x10]
  00d83832: 3b d1                                        CMP EDX, ECX
  00d83834: 73 31                                        JNC 0x00d83867
  00d83836: 0f b7 5e 3e                                  MOVZX EBX, word ptr [ESI + 0x3e]
  00d8383a: 8b 4e 20                                     MOV ECX, dword ptr [ESI + 0x20]
  00d8383d: 8b 0c 91                                     MOV ECX, dword ptr [ECX + EDX*0x4]
  00d83840: 8b 44 90 18                                  MOV EAX, dword ptr [EAX + EDX*0x4 + 0x18]
  00d83844: 8b 54 24 20                                  MOV EDX, dword ptr [ESP + 0x20]
  00d83848: 03 cb                                        ADD ECX, EBX
  00d8384a: 0f b7 5e 36                                  MOVZX EBX, word ptr [ESI + 0x36]
  00d8384e: 0f b7 76 34                                  MOVZX ESI, word ptr [ESI + 0x34]
  00d83852: 03 cb                                        ADD ECX, EBX
  00d83854: 03 ce                                        ADD ECX, ESI
  00d83856: 03 4f 20                                     ADD ECX, dword ptr [EDI + 0x20]
  00d83859: 89 02                                        MOV dword ptr [EDX], EAX
  00d8385b: 8b 44 24 24                                  MOV EAX, dword ptr [ESP + 0x24]
  00d8385f: 5e                                           POP ESI
  00d83860: 5b                                           POP EBX
  00d83861: 89 08                                        MOV dword ptr [EAX], ECX
  00d83863: b0 01                                        MOV AL, 0x1
  00d83865: 5f                                           POP EDI
  00d83866: c3                                           RET
  00d83867: 5e                                           POP ESI
  00d83868: 5b                                           POP EBX
  00d83869: 32 c0                                        XOR AL, AL
  00d8386b: 5f                                           POP EDI
  00d8386c: c3                                           RET
