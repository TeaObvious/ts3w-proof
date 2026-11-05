TS3W PC 1.67; original identity: evidence/reference.json.
Saved Ghidra evidence; current name: GetOrCreateMethodBodyHeader.
Original instruction/byte blocks and ownership qualifications are unchanged.
Generated types and signatures remain projections; machine instructions are authoritative.

Original PC 1.67 TS3W.exe; final saved Ghidra Listing with original PE bytes.
Entry: 0x00E85670 (GetOrCreateMethodBodyHeader)
Paired annotated pseudocode: 00E85670_GetOrCreateMethodBodyHeader.c
Owned half-open ranges: [['0xe85670', '0xe857ba']]
Owned bytes: 330; Listing instructions: 102
Identity: references/pc-167.md. Original PE independently decoded by objdump.
Body and stored ABI unchanged. Static evidence; no original runtime execution.

SAVED GHIDRA LISTING WITH ORIGINAL BYTES
  00e85670: 57                                           PUSH EDI
  00e85671: 8b 7c 24 08                                  MOV EDI, dword ptr [ESP + 0x8]
  00e85675: 0f b7 07                                     MOVZX EAX, word ptr [EDI]
  00e85678: a9 00 04 00 00                               TEST EAX, 0x400
  00e8567d: 0f 85 33 01 00 00                            JNZ 0x00e857b6
  00e85683: 0f b7 4f 02                                  MOVZX ECX, word ptr [EDI + 0x2]
  00e85687: f6 c1 03                                     TEST CL, 0x3
  00e8568a: 0f 85 26 01 00 00                            JNZ 0x00e857b6
  00e85690: f7 c1 00 10 00 00                            TEST ECX, 0x1000
  00e85696: 0f 85 1a 01 00 00                            JNZ 0x00e857b6
  00e8569c: a9 00 20 00 00                               TEST EAX, 0x2000
  00e856a1: 0f 85 0f 01 00 00                            JNZ 0x00e857b6
  00e856a7: 8b 47 20                                     MOV EAX, dword ptr [EDI + 0x20] ; Fast cached header read at method+20; a miss enters global critical section and rechecks before creating/publishing metadata.
  00e856aa: 85 c0                                        TEST EAX, EAX
  00e856ac: 75 66                                        JNZ 0x00e85714
  00e856ae: 68 a8 53 1f 01                               PUSH 0x11f53a8
  00e856b3: ff 15 2c 61 f9 00                            CALL dword ptr [0x00f9612c]
  00e856b9: 83 7f 20 00                                  CMP dword ptr [EDI + 0x20], 0x0
  00e856bd: 74 10                                        JZ 0x00e856cf
  00e856bf: 68 a8 53 1f 01                               PUSH 0x11f53a8
  00e856c4: ff 15 30 61 f9 00                            CALL dword ptr [0x00f96130]
  00e856ca: 8b 47 20                                     MOV EAX, dword ptr [EDI + 0x20]
  00e856cd: 5f                                           POP EDI
  00e856ce: c3                                           RET
  00e856cf: f7 47 1c 00 04 00 00                         TEST dword ptr [EDI + 0x1c], 0x400 ; Method+1C bit400 selects derived metadata construction; ordinary path decodes a MethodDef-backed record. Child ownership and assertion behavior are not reconstructed here.
  00e856d6: 56                                           PUSH ESI
  00e856d7: 74 3d                                        JZ 0x00e85716
  00e856d9: 8b 47 2c                                     MOV EAX, dword ptr [EDI + 0x2c]
  00e856dc: 50                                           PUSH EAX
  00e856dd: e8 8e ff ff ff                               CALL 0x00e85670
  00e856e2: 8b 4f 08                                     MOV ECX, dword ptr [EDI + 0x8]
  00e856e5: 8b 11                                        MOV EDX, dword ptr [ECX]
  00e856e7: 8b f0                                        MOV ESI, EAX
  00e856e9: 8b 42 30                                     MOV EAX, dword ptr [EDX + 0x30]
  00e856ec: 83 c4 04                                     ADD ESP, 0x4
  00e856ef: 50                                           PUSH EAX
  00e856f0: 57                                           PUSH EDI
  00e856f1: e8 fa 47 fe ff                               CALL 0x00e69ef0
  00e856f6: 83 c4 04                                     ADD ESP, 0x4
  00e856f9: 50                                           PUSH EAX
  00e856fa: e8 01 f8 ff ff                               CALL 0x00e84f00
  00e856ff: 83 c4 08                                     ADD ESP, 0x8
  00e85702: 68 a8 53 1f 01                               PUSH 0x11f53a8
  00e85707: 89 47 20                                     MOV dword ptr [EDI + 0x20], EAX
  00e8570a: ff 15 30 61 f9 00                            CALL dword ptr [0x00f96130]
  00e85710: 8b 47 20                                     MOV EAX, dword ptr [EDI + 0x20]
  00e85713: 5e                                           POP ESI
  00e85714: 5f                                           POP EDI
  00e85715: c3                                           RET
  00e85716: 8b 4f 04                                     MOV ECX, dword ptr [EDI + 0x4]
  00e85719: 81 e1 00 00 00 ff                            AND ECX, 0xff000000
  00e8571f: 81 f9 00 00 00 06                            CMP ECX, 0x6000000
  00e85725: 74 1c                                        JZ 0x00e85743
  00e85727: 68 48 83 0b 01                               PUSH 0x10b8348
  00e8572c: 68 e6 06 00 00                               PUSH 0x6e6
  00e85731: 68 88 7f 0b 01                               PUSH 0x10b7f88
  00e85736: 68 34 f3 08 01                               PUSH 0x108f334
  00e8573b: e8 c0 16 fc ff                               CALL 0x00e46e00
  00e85740: 83 c4 10                                     ADD ESP, 0x10
  00e85743: 8b 47 04                                     MOV EAX, dword ptr [EDI + 0x4]
  00e85746: 8b 57 08                                     MOV EDX, dword ptr [EDI + 0x8]
  00e85749: 8b 32                                        MOV ESI, dword ptr [EDX]
  00e8574b: 53                                           PUSH EBX
  00e8574c: 25 ff ff ff 00                               AND EAX, 0xffffff
  00e85751: 83 c0 ff                                     ADD EAX, -0x1
  00e85754: 6a 00                                        PUSH 0x0
  00e85756: 50                                           PUSH EAX
  00e85757: 8d 86 ac 00 00 00                            LEA EAX, [ESI + 0xac]
  00e8575d: 50                                           PUSH EAX
  00e8575e: e8 9d 5d 01 00                               CALL 0x00e9b500
  00e85763: 50                                           PUSH EAX
  00e85764: 56                                           PUSH ESI
  00e85765: e8 86 eb ff ff                               CALL 0x00e842f0
  00e8576a: 8b d8                                        MOV EBX, EAX
  00e8576c: 83 c4 14                                     ADD ESP, 0x14
  00e8576f: 85 db                                        TEST EBX, EBX
  00e85771: 75 1c                                        JNZ 0x00e8578f
  00e85773: 68 44 83 0b 01                               PUSH 0x10b8344
  00e85778: 68 ec 06 00 00                               PUSH 0x6ec
  00e8577d: 68 88 7f 0b 01                               PUSH 0x10b7f88
  00e85782: 68 34 f3 08 01                               PUSH 0x108f334
  00e85787: e8 74 16 fc ff                               CALL 0x00e46e00
  00e8578c: 83 c4 10                                     ADD ESP, 0x10
  00e8578f: 8b 4e 30                                     MOV ECX, dword ptr [ESI + 0x30]
  00e85792: 8b 57 10                                     MOV EDX, dword ptr [EDI + 0x10]
  00e85795: 51                                           PUSH ECX
  00e85796: 53                                           PUSH EBX
  00e85797: 52                                           PUSH EDX
  00e85798: 56                                           PUSH ESI
  00e85799: e8 02 96 01 00                               CALL 0x00e9eda0
  00e8579e: 83 c4 10                                     ADD ESP, 0x10
  00e857a1: 68 a8 53 1f 01                               PUSH 0x11f53a8
  00e857a6: 89 47 20                                     MOV dword ptr [EDI + 0x20], EAX
  00e857a9: ff 15 30 61 f9 00                            CALL dword ptr [0x00f96130]
  00e857af: 8b 47 20                                     MOV EAX, dword ptr [EDI + 0x20]
  00e857b2: 5b                                           POP EBX
  00e857b3: 5e                                           POP ESI
  00e857b4: 5f                                           POP EDI
  00e857b5: c3                                           RET
  00e857b6: 33 c0                                        XOR EAX, EAX
  00e857b8: 5f                                           POP EDI
  00e857b9: c3                                           RET
