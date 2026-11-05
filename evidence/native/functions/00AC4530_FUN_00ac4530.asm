# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe, complete existing Ghidra owned ranges: [00ac4530,00ac46ab]. 380owned bytes/126instructions; 0nonowned envelope bytes excluded. Readonly GhidrAssist metadata/Listing and independent original-PE byte/start comparison. No DB/body/prototype repair, analysis, save or original-byte mutation.

ECX lot plus targetID/packedcell, void RET8. Reads four lanes through AB3E50, changes selected mask lanes independently and writes AC2ED0 at signedlevel-minus-lotminimum. Original pool/fountain/platform flags drive A91AA0 and dirty fields2BC/2C0. Does not by itself establish undo/public event ownership.

ORIGINAL OWNED BYTES
00ac4530: 83 ec 18
00ac4533: 53
00ac4534: 56
00ac4535: 8b 74 24 24
00ac4539: 8b d9
00ac453b: 6a 03
00ac453d: 56
00ac453e: 89 5c 24 14
00ac4542: e8 b9 9d 03 00
00ac4547: 83 c4 08
00ac454a: 84 c0
00ac454c: 75 14
00ac454e: 6a 06
00ac4550: 56
00ac4551: e8 aa 9d 03 00
00ac4556: 83 c4 08
00ac4559: 84 c0
00ac455b: c6 44 24 08 00
00ac4560: 74 05
00ac4562: c6 44 24 08 01
00ac4567: 55
00ac4568: 57
00ac4569: 6a 05
00ac456b: 56
00ac456c: e8 8f 9d 03 00
00ac4571: 8b 74 24 38
00ac4575: 0f be 7e 02
00ac4579: 2b bb 7c 01 00 00
00ac457f: 0f be 0e
00ac4582: 83 c4 08
00ac4585: 88 44 24 13
00ac4589: 0f be 46 01
00ac458d: 57
00ac458e: 50
00ac458f: 51
00ac4590: 8b 8b a4 02 00 00
00ac4596: c6 44 24 1d 00
00ac459b: c6 44 24 1e 00
00ac45a0: e8 ab f8 fe ff
00ac45a5: 8b 10
00ac45a7: 8b 48 04
00ac45aa: 89 54 24 18
00ac45ae: 8b 50 08
00ac45b1: 8b 40 0c
00ac45b4: 89 4c 24 1c
00ac45b8: 89 54 24 20
00ac45bc: 89 44 24 24
00ac45c0: 33 ed
00ac45c2: b2 01
00ac45c4: 8b cd
00ac45c6: d2 e2
00ac45c8: 84 56 03
00ac45cb: 74 49
00ac45cd: 8b 5c ac 18
00ac45d1: 6a 03
00ac45d3: 53
00ac45d4: e8 27 9d 03 00
00ac45d9: 83 c4 08
00ac45dc: 84 c0
00ac45de: 75 25
00ac45e0: 6a 06
00ac45e2: 53
00ac45e3: e8 18 9d 03 00
00ac45e8: 83 c4 08
00ac45eb: 84 c0
00ac45ed: 75 16
00ac45ef: 6a 05
00ac45f1: 53
00ac45f2: e8 09 9d 03 00
00ac45f7: 83 c4 08
00ac45fa: 84 c0
00ac45fc: 74 0c
00ac45fe: c6 44 24 12 01
00ac4603: eb 05
00ac4605: c6 44 24 11 01
00ac460a: 8b 44 24 2c
00ac460e: 8b 5c 24 14
00ac4612: 89 44 ac 18
00ac4616: 83 c5 01
00ac4619: 83 fd 04
00ac461c: 7c a4
00ac461e: 0f be 4e 01
00ac4622: 0f be 16
00ac4625: 57
00ac4626: 51
00ac4627: 8b 8b a4 02 00 00
00ac462d: 52
00ac462e: 8d 44 24 24
00ac4632: 50
00ac4633: e8 98 e8 ff ff
00ac4638: 80 7c 24 10 00
00ac463d: 5f
00ac463e: 5d
00ac463f: 75 07
00ac4641: 80 7c 24 09 00
00ac4646: 74 24
00ac4648: 8a 0e
00ac464a: 8a 56 01
00ac464d: 8a 46 02
00ac4650: 88 4c 24 24
00ac4654: 8d 4c 24 24
00ac4658: 51
00ac4659: 8b 8b 90 02 00 00
00ac465f: 88 54 24 29
00ac4663: 88 44 24 2a
00ac4667: e8 34 d4 fc ff
00ac466c: 8b 83 bc 02 00 00
00ac4672: 85 c0
00ac4674: 74 12
00ac4676: 80 7c 24 08 00
00ac467b: 75 07
00ac467d: 80 7c 24 09 00
00ac4682: 74 04
00ac4684: c6 40 04 01
00ac4688: 8b 9b c0 02 00 00
00ac468e: 85 db
00ac4690: 74 12
00ac4692: 80 7c 24 0b 00
00ac4697: 75 07
00ac4699: 80 7c 24 0a 00
00ac469e: 74 04
00ac46a0: c6 43 04 01
00ac46a4: 5e
00ac46a5: 5b
00ac46a6: 83 c4 18
00ac46a9: c2 08 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_00ac4530
Entry Point: 00ac4530

00ac4530: SUB ESP, 0x18
00ac4533: PUSH EBX
00ac4534: PUSH ESI
00ac4535: MOV ESI, dword ptr [ESP + 0x24]
00ac4539: MOV EBX, ECX
00ac453b: PUSH 0x3
00ac453d: PUSH ESI
00ac453e: MOV dword ptr [ESP + 0x14], EBX
00ac4542: CALL 0x00afe300
00ac4547: ADD ESP, 0x8
00ac454a: TEST AL, AL
00ac454c: JNZ 0x00ac4562
00ac454e: PUSH 0x6
00ac4550: PUSH ESI
00ac4551: CALL 0x00afe300
00ac4556: ADD ESP, 0x8
00ac4559: TEST AL, AL
00ac455b: MOV byte ptr [ESP + 0x8], 0x0
00ac4560: JZ 0x00ac4567
00ac4562: MOV byte ptr [ESP + 0x8], 0x1
00ac4567: PUSH EBP
00ac4568: PUSH EDI
00ac4569: PUSH 0x5
00ac456b: PUSH ESI
00ac456c: CALL 0x00afe300
00ac4571: MOV ESI, dword ptr [ESP + 0x38]
00ac4575: MOVSX EDI, byte ptr [ESI + 0x2]
00ac4579: SUB EDI, dword ptr [EBX + 0x17c]
00ac457f: MOVSX ECX, byte ptr [ESI]
00ac4582: ADD ESP, 0x8
00ac4585: MOV byte ptr [ESP + 0x13], AL
00ac4589: MOVSX EAX, byte ptr [ESI + 0x1]
00ac458d: PUSH EDI
00ac458e: PUSH EAX
00ac458f: PUSH ECX
00ac4590: MOV ECX, dword ptr [EBX + 0x2a4]
00ac4596: MOV byte ptr [ESP + 0x1d], 0x0
00ac459b: MOV byte ptr [ESP + 0x1e], 0x0
00ac45a0: CALL 0x00ab3e50
00ac45a5: MOV EDX, dword ptr [EAX]
00ac45a7: MOV ECX, dword ptr [EAX + 0x4]
00ac45aa: MOV dword ptr [ESP + 0x18], EDX
00ac45ae: MOV EDX, dword ptr [EAX + 0x8]
00ac45b1: MOV EAX, dword ptr [EAX + 0xc]
00ac45b4: MOV dword ptr [ESP + 0x1c], ECX
00ac45b8: MOV dword ptr [ESP + 0x20], EDX
00ac45bc: MOV dword ptr [ESP + 0x24], EAX
00ac45c0: XOR EBP, EBP
00ac45c2: MOV DL, 0x1
00ac45c4: MOV ECX, EBP
00ac45c6: SHL DL, CL
00ac45c8: TEST byte ptr [ESI + 0x3], DL
00ac45cb: JZ 0x00ac4616
00ac45cd: MOV EBX, dword ptr [ESP + EBP*0x4 + 0x18]
00ac45d1: PUSH 0x3
00ac45d3: PUSH EBX
00ac45d4: CALL 0x00afe300
00ac45d9: ADD ESP, 0x8
00ac45dc: TEST AL, AL
00ac45de: JNZ 0x00ac4605
00ac45e0: PUSH 0x6
00ac45e2: PUSH EBX
00ac45e3: CALL 0x00afe300
00ac45e8: ADD ESP, 0x8
00ac45eb: TEST AL, AL
00ac45ed: JNZ 0x00ac4605
00ac45ef: PUSH 0x5
00ac45f1: PUSH EBX
00ac45f2: CALL 0x00afe300
00ac45f7: ADD ESP, 0x8
00ac45fa: TEST AL, AL
00ac45fc: JZ 0x00ac460a
00ac45fe: MOV byte ptr [ESP + 0x12], 0x1
00ac4603: JMP 0x00ac460a
00ac4605: MOV byte ptr [ESP + 0x11], 0x1
00ac460a: MOV EAX, dword ptr [ESP + 0x2c]
00ac460e: MOV EBX, dword ptr [ESP + 0x14]
00ac4612: MOV dword ptr [ESP + EBP*0x4 + 0x18], EAX
00ac4616: ADD EBP, 0x1
00ac4619: CMP EBP, 0x4
00ac461c: JL 0x00ac45c2
00ac461e: MOVSX ECX, byte ptr [ESI + 0x1]
00ac4622: MOVSX EDX, byte ptr [ESI]
00ac4625: PUSH EDI
00ac4626: PUSH ECX
00ac4627: MOV ECX, dword ptr [EBX + 0x2a4]
00ac462d: PUSH EDX
00ac462e: LEA EAX, [ESP + 0x24]
00ac4632: PUSH EAX
00ac4633: CALL 0x00ac2ed0
00ac4638: CMP byte ptr [ESP + 0x10], 0x0
00ac463d: POP EDI
00ac463e: POP EBP
00ac463f: JNZ 0x00ac4648
00ac4641: CMP byte ptr [ESP + 0x9], 0x0
00ac4646: JZ 0x00ac466c
00ac4648: MOV CL, byte ptr [ESI]
00ac464a: MOV DL, byte ptr [ESI + 0x1]
00ac464d: MOV AL, byte ptr [ESI + 0x2]
00ac4650: MOV byte ptr [ESP + 0x24], CL
00ac4654: LEA ECX, [ESP + 0x24]
00ac4658: PUSH ECX
00ac4659: MOV ECX, dword ptr [EBX + 0x290]
00ac465f: MOV byte ptr [ESP + 0x29], DL
00ac4663: MOV byte ptr [ESP + 0x2a], AL
00ac4667: CALL 0x00a91aa0
00ac466c: MOV EAX, dword ptr [EBX + 0x2bc]
00ac4672: TEST EAX, EAX
00ac4674: JZ 0x00ac4688
00ac4676: CMP byte ptr [ESP + 0x8], 0x0
00ac467b: JNZ 0x00ac4684
00ac467d: CMP byte ptr [ESP + 0x9], 0x0
00ac4682: JZ 0x00ac4688
00ac4684: MOV byte ptr [EAX + 0x4], 0x1
00ac4688: MOV EBX, dword ptr [EBX + 0x2c0]
00ac468e: TEST EBX, EBX
00ac4690: JZ 0x00ac46a4
00ac4692: CMP byte ptr [ESP + 0xb], 0x0
00ac4697: JNZ 0x00ac46a0
00ac4699: CMP byte ptr [ESP + 0xa], 0x0
00ac469e: JZ 0x00ac46a4
00ac46a0: MOV byte ptr [EBX + 0x4], 0x1
00ac46a4: POP ESI
00ac46a5: POP EBX
00ac46a6: ADD ESP, 0x18
00ac46a9: RET 0x8

Total instructions: 126