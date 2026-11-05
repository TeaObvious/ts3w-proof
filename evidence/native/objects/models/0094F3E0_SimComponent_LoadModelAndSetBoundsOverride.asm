; PC1.67 original Ghidra-owned instruction listing.
; Analyst-assigned name: SimComponent_LoadModelAndSetBoundsOverride
; Inclusive owned ranges: 0094F3E0..0094F4EE
; Paired C retains actual provisional types; original instructions govern physical ABI.

0094F3E0  55                              PUSH EBP
0094F3E1  8BEC                            MOV EBP, ESP
0094F3E3  83E4F0                          AND ESP, 0xfffffff0
0094F3E6  83EC58                          SUB ESP, 0x58
0094F3E9  53                              PUSH EBX
0094F3EA  56                              PUSH ESI
0094F3EB  8BF1                            MOV ESI, ECX
0094F3ED  33DB                            XOR EBX, EBX
0094F3EF  395E18                          CMP dword ptr [ESI + 0x18], EBX
0094F3F2  742C                            JZ 0x0094f420
0094F3F4  8B0D844C1D01                    MOV ECX, dword ptr [0x011d4c84]
0094F3FA  3BCB                            CMP ECX, EBX
0094F3FC  8D4608                          LEA EAX, [ESI + 0x8]
0094F3FF  741F                            JZ 0x0094f420
0094F401  8B11                            MOV EDX, dword ptr [ECX]
0094F403  8B5234                          MOV EDX, dword ptr [EDX + 0x34]
0094F406  6A01                            PUSH 0x1
0094F408  6A01                            PUSH 0x1
0094F40A  68A0B3D400                      PUSH 0xd4b3a0
0094F40F  53                              PUSH EBX
0094F410  50                              PUSH EAX
0094F411  8D4630                          LEA EAX, [ESI + 0x30]
0094F414  50                              PUSH EAX
0094F415  6808D75E02                      PUSH 0x25ed708
0094F41A  8D4610                          LEA EAX, [ESI + 0x10]
0094F41D  50                              PUSH EAX
0094F41E  FFD2                            CALL EDX
0094F420  8B4E30                          MOV ECX, dword ptr [ESI + 0x30]
0094F423  85C9                            TEST ECX, ECX
0094F425  B001                            MOV AL, 0x1
0094F427  742E                            JZ 0x0094f457
0094F429  8B5630                          MOV EDX, dword ptr [ESI + 0x30]
0094F42C  F6C203                          TEST DL, 0x3
0094F42F  7526                            JNZ 0x0094f457
0094F431  8B4630                          MOV EAX, dword ptr [ESI + 0x30]
0094F434  8B4038                          MOV EAX, dword ptr [EAX + 0x38]
0094F437  2500CF0000                      AND EAX, 0xcf00
0094F43C  3D00040000                      CMP EAX, 0x400
0094F441  7412                            JZ 0x0094f455
0094F443  3D00050000                      CMP EAX, 0x500
0094F448  740B                            JZ 0x0094f455
0094F44A  3D00030000                      CMP EAX, 0x300
0094F44F  7404                            JZ 0x0094f455
0094F451  32C0                            XOR AL, AL
0094F453  EB02                            JMP 0x0094f457
0094F455  B001                            MOV AL, 0x1
0094F457  8B4E04                          MOV ECX, dword ptr [ESI + 0x4]
0094F45A  8B5108                          MOV EDX, dword ptr [ECX + 0x8]
0094F45D  8B490C                          MOV ECX, dword ptr [ECX + 0xc]
0094F460  F6D8                            NEG AL
0094F462  895C2414                        MOV dword ptr [ESP + 0x14], EBX
0094F466  89542418                        MOV dword ptr [ESP + 0x18], EDX
0094F46A  894C241C                        MOV dword ptr [ESP + 0x1c], ECX
0094F46E  895C2420                        MOV dword ptr [ESP + 0x20], EBX
0094F472  895C2424                        MOV dword ptr [ESP + 0x24], EBX
0094F476  895C2428                        MOV dword ptr [ESP + 0x28], EBX
0094F47A  1BC0                            SBB EAX, EAX
0094F47C  2598E02C7C                      AND EAX, 0x7c2ce098
0094F481  05136C43B3                      ADD EAX, 0xb3436c13
0094F486  89442410                        MOV dword ptr [ESP + 0x10], EAX
0094F48A  8D442410                        LEA EAX, [ESP + 0x10]
0094F48E  50                              PUSH EAX
0094F48F  895C2430                        MOV dword ptr [ESP + 0x30], EBX
0094F493  C744243401000000                MOV dword ptr [ESP + 0x34], 0x1
0094F49B  E8E03ED4FF                      CALL 0x00693380
0094F4A0  8B4E04                          MOV ECX, dword ptr [ESI + 0x4]
0094F4A3  83C404                          ADD ESP, 0x4
0094F4A6  3BCB                            CMP ECX, EBX
0094F4A8  7428                            JZ 0x0094f4d2
0094F4AA  8B15C49F1E01                    MOV EDX, dword ptr [0x011e9fc4]
0094F4B0  52                              PUSH EDX
0094F4B1  E8AA4DFEFF                      CALL 0x00934260
0094F4B6  3BC3                            CMP EAX, EBX
0094F4B8  7418                            JZ 0x0094f4d2
0094F4BA  6800002000                      PUSH 0x200000
0094F4BF  8BC8                            MOV ECX, EAX
0094F4C1  E8BA98FFFF                      CALL 0x00948d80
0094F4C6  8B4604                          MOV EAX, dword ptr [ESI + 0x4]
0094F4C9  50                              PUSH EAX
0094F4CA  E8A1F60000                      CALL 0x0095eb70
0094F4CF  83C404                          ADD ESP, 0x4
0094F4D2  8B4C2414                        MOV ECX, dword ptr [ESP + 0x14]
0094F4D6  3BCB                            CMP ECX, EBX
0094F4D8  740B                            JZ 0x0094f4e5
0094F4DA  8B11                            MOV EDX, dword ptr [ECX]
0094F4DC  8B12                            MOV EDX, dword ptr [EDX]
0094F4DE  8D442420                        LEA EAX, [ESP + 0x20]
0094F4E2  50                              PUSH EAX
0094F4E3  FFD2                            CALL EDX
0094F4E5  5E                              POP ESI
0094F4E6  B001                            MOV AL, 0x1
0094F4E8  5B                              POP EBX
0094F4E9  8BE5                            MOV ESP, EBP
0094F4EB  5D                              POP EBP
0094F4EC  C20400                          RET 0x4
