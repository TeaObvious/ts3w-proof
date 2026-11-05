; PC1.67 original Ghidra-owned instruction listing.
; Analyst-assigned name: Object_InitializeAndReadImportedComponents
; Inclusive owned ranges: 009352A0..00935557
; Paired C retains actual provisional types; original instructions govern physical ABI.

009352A0  81EC9C000000                    SUB ESP, 0x9c
009352A6  53                              PUSH EBX
009352A7  55                              PUSH EBP
009352A8  56                              PUSH ESI
009352A9  57                              PUSH EDI
009352AA  8BF9                            MOV EDI, ECX
009352AC  E8BF220000                      CALL 0x00937570
009352B1  8B772C                          MOV ESI, dword ptr [EDI + 0x2c]
009352B4  33ED                            XOR EBP, EBP
009352B6  3BF5                            CMP ESI, EBP
009352B8  89442418                        MOV dword ptr [ESP + 0x18], EAX
009352BC  746C                            JZ 0x0093532a
009352BE  8B9C24B0000000                  MOV EBX, dword ptr [ESP + 0xb0]
009352C5  8B4F2C                          MOV ECX, dword ptr [EDI + 0x2c]
009352C8  8BC6                            MOV EAX, ESI
009352CA  F7D8                            NEG EAX
009352CC  23C6                            AND EAX, ESI
009352CE  85C8                            TEST EAX, ECX
009352D0  743F                            JZ 0x00935311
009352D2  83C0FF                          ADD EAX, -0x1
009352D5  23C1                            AND EAX, ECX
009352D7  8BC8                            MOV ECX, EAX
009352D9  D1E9                            SHR ECX, 0x1
009352DB  81E155555555                    AND ECX, 0x55555555
009352E1  2BC1                            SUB EAX, ECX
009352E3  8BC8                            MOV ECX, EAX
009352E5  C1E902                          SHR ECX, 0x2
009352E8  81E133333333                    AND ECX, 0x33333333
009352EE  2533333333                      AND EAX, 0x33333333
009352F3  03C8                            ADD ECX, EAX
009352F5  8BD1                            MOV EDX, ECX
009352F7  C1EA04                          SHR EDX, 0x4
009352FA  03D1                            ADD EDX, ECX
009352FC  81E20F0F0F0F                    AND EDX, 0xf0f0f0f
00935302  69D201010101                    IMUL EDX, EDX, 0x1010101
00935308  C1EA18                          SHR EDX, 0x18
0093530B  8B4C9734                        MOV ECX, dword ptr [EDI + EDX*0x4 + 0x34]
0093530F  EB02                            JMP 0x00935313
00935311  33C9                            XOR ECX, ECX
00935313  8B01                            MOV EAX, dword ptr [ECX]
00935315  8B5004                          MOV EDX, dword ptr [EAX + 0x4]
00935318  53                              PUSH EBX
00935319  FFD2                            CALL EDX
0093531B  84C0                            TEST AL, AL
0093531D  0F8426020000                    JZ 0x00935549
00935323  8D46FF                          LEA EAX, [ESI + -0x1]
00935326  23F0                            AND ESI, EAX
00935328  759B                            JNZ 0x009352c5
0093532A  8D4C242C                        LEA ECX, [ESP + 0x2c]
0093532E  8BD1                            MOV EDX, ECX
00935330  894C2420                        MOV dword ptr [ESP + 0x20], ECX
00935334  8D4C2410                        LEA ECX, [ESP + 0x10]
00935338  51                              PUSH ECX
00935339  6A20                            PUSH 0x20
0093533B  8D8424B4000000                  LEA EAX, [ESP + 0xb4]
00935342  52                              PUSH EDX
00935343  8D4C2428                        LEA ECX, [ESP + 0x28]
00935347  89542428                        MOV dword ptr [ESP + 0x28], EDX
0093534B  89442430                        MOV dword ptr [ESP + 0x30], EAX
0093534F  896C241C                        MOV dword ptr [ESP + 0x1c], EBP
00935353  E8F8FAFFFF                      CALL 0x00934e50
00935358  8B4C241C                        MOV ECX, dword ptr [ESP + 0x1c]
0093535C  8D442414                        LEA EAX, [ESP + 0x14]
00935360  50                              PUSH EAX
00935361  51                              PUSH ECX
00935362  8B8C24BC000000                  MOV ECX, dword ptr [ESP + 0xbc]
00935369  68096A9042                      PUSH 0x42906a09
0093536E  C744242020000000                MOV dword ptr [ESP + 0x20], 0x20
00935376  E84501EAFF                      CALL 0x007d54c0
0093537B  84C0                            TEST AL, AL
0093537D  0F84C6010000                    JZ 0x00935549
00935383  8B742420                        MOV ESI, dword ptr [ESP + 0x20]
00935387  8B5C241C                        MOV EBX, dword ptr [ESP + 0x1c]
0093538B  8B442414                        MOV EAX, dword ptr [ESP + 0x14]
0093538F  8BCE                            MOV ECX, ESI
00935391  2BCB                            SUB ECX, EBX
00935393  C1F902                          SAR ECX, 0x2
00935396  3BC1                            CMP EAX, ECX
00935398  761C                            JBE 0x009353b6
0093539A  8D542410                        LEA EDX, [ESP + 0x10]
0093539E  52                              PUSH EDX
0093539F  2BC1                            SUB EAX, ECX
009353A1  50                              PUSH EAX
009353A2  56                              PUSH ESI
009353A3  8D4C2428                        LEA ECX, [ESP + 0x28]
009353A7  896C241C                        MOV dword ptr [ESP + 0x1c], EBP
009353AB  E8A0FAFFFF                      CALL 0x00934e50
009353B0  8B442420                        MOV EAX, dword ptr [ESP + 0x20]
009353B4  EB21                            JMP 0x009353d7
009353B6  55                              PUSH EBP
009353B7  8D1C83                          LEA EBX, [EBX + EAX*0x4]
009353BA  56                              PUSH ESI
009353BB  53                              PUSH EBX
009353BC  FF158866F900                    CALL dword ptr [0x00f96688]
009353C2  8B44242C                        MOV EAX, dword ptr [ESP + 0x2c]
009353C6  2BF3                            SUB ESI, EBX
009353C8  C1FE02                          SAR ESI, 0x2
009353CB  83C40C                          ADD ESP, 0xc
009353CE  F7DE                            NEG ESI
009353D0  8D04B0                          LEA EAX, [EAX + ESI*0x4]
009353D3  89442420                        MOV dword ptr [ESP + 0x20], EAX
009353D7  8B74241C                        MOV ESI, dword ptr [ESP + 0x1c]
009353DB  33DB                            XOR EBX, EBX
009353DD  3BF0                            CMP ESI, EAX
009353DF  8BE8                            MOV EBP, EAX
009353E1  7415                            JZ 0x009353f8
009353E3  8B0E                            MOV ECX, dword ptr [ESI]
009353E5  51                              PUSH ECX
009353E6  8B4C241C                        MOV ECX, dword ptr [ESP + 0x1c]
009353EA  E841210000                      CALL 0x00937530
009353EF  83C604                          ADD ESI, 0x4
009353F2  0BD8                            OR EBX, EAX
009353F4  3BF5                            CMP ESI, EBP
009353F6  75EB                            JNZ 0x009353e3
009353F8  85DB                            TEST EBX, EBX
009353FA  0F8405010000                    JZ 0x00935505
00935400  8BD3                            MOV EDX, EBX
00935402  F7DA                            NEG EDX
00935404  23D3                            AND EDX, EBX
00935406  8D72FF                          LEA ESI, [EDX + -0x1]
00935409  8BC6                            MOV EAX, ESI
0093540B  8BC8                            MOV ECX, EAX
0093540D  D1E9                            SHR ECX, 0x1
0093540F  81E155555555                    AND ECX, 0x55555555
00935415  2BC1                            SUB EAX, ECX
00935417  8BC8                            MOV ECX, EAX
00935419  2533333333                      AND EAX, 0x33333333
0093541E  C1E902                          SHR ECX, 0x2
00935421  81E133333333                    AND ECX, 0x33333333
00935427  03C8                            ADD ECX, EAX
00935429  8BC1                            MOV EAX, ECX
0093542B  C1E804                          SHR EAX, 0x4
0093542E  03C1                            ADD EAX, ECX
00935430  8B8C24B8000000                  MOV ECX, dword ptr [ESP + 0xb8]
00935437  250F0F0F0F                      AND EAX, 0xf0f0f0f
0093543C  69C001010101                    IMUL EAX, EAX, 0x1010101
00935442  C1E818                          SHR EAX, 0x18
00935445  8B2C81                          MOV EBP, dword ptr [ECX + EAX*0x4]
00935448  8B472C                          MOV EAX, dword ptr [EDI + 0x2c]
0093544B  85C2                            TEST EDX, EAX
0093544D  743D                            JZ 0x0093548c
0093544F  23F0                            AND ESI, EAX
00935451  8BC6                            MOV EAX, ESI
00935453  8BC8                            MOV ECX, EAX
00935455  D1E9                            SHR ECX, 0x1
00935457  81E155555555                    AND ECX, 0x55555555
0093545D  2BC1                            SUB EAX, ECX
0093545F  8BC8                            MOV ECX, EAX
00935461  2533333333                      AND EAX, 0x33333333
00935466  C1E902                          SHR ECX, 0x2
00935469  81E133333333                    AND ECX, 0x33333333
0093546F  03C8                            ADD ECX, EAX
00935471  8BC1                            MOV EAX, ECX
00935473  C1E804                          SHR EAX, 0x4
00935476  03C1                            ADD EAX, ECX
00935478  250F0F0F0F                      AND EAX, 0xf0f0f0f
0093547D  69C001010101                    IMUL EAX, EAX, 0x1010101
00935483  C1E818                          SHR EAX, 0x18
00935486  8B748734                        MOV ESI, dword ptr [EDI + EAX*0x4 + 0x34]
0093548A  EB02                            JMP 0x0093548e
0093548C  33F6                            XOR ESI, ESI
0093548E  8B4C2418                        MOV ECX, dword ptr [ESP + 0x18]
00935492  52                              PUSH EDX
00935493  E828200000                      CALL 0x009374c0
00935498  8D4C2410                        LEA ECX, [ESP + 0x10]
0093549C  51                              PUSH ECX
0093549D  8B8C24B8000000                  MOV ECX, dword ptr [ESP + 0xb8]
009354A4  50                              PUSH EAX
009354A5  C744241800000000                MOV dword ptr [ESP + 0x18], 0x0
009354AD  E80E04EAFF                      CALL 0x007d58c0
009354B2  84C0                            TEST AL, AL
009354B4  741F                            JZ 0x009354d5
009354B6  85F6                            TEST ESI, ESI
009354B8  741B                            JZ 0x009354d5
009354BA  8B8424BC000000                  MOV EAX, dword ptr [ESP + 0xbc]
009354C1  8B4C2410                        MOV ECX, dword ptr [ESP + 0x10]
009354C5  8B16                            MOV EDX, dword ptr [ESI]
009354C7  8B5210                          MOV EDX, dword ptr [EDX + 0x10]
009354CA  50                              PUSH EAX
009354CB  55                              PUSH EBP
009354CC  51                              PUSH ECX
009354CD  8BCE                            MOV ECX, ESI
009354CF  FFD2                            CALL EDX
009354D1  84C0                            TEST AL, AL
009354D3  744F                            JZ 0x00935524
009354D5  8B442410                        MOV EAX, dword ptr [ESP + 0x10]
009354D9  85C0                            TEST EAX, EAX
009354DB  741D                            JZ 0x009354fa
009354DD  8B5004                          MOV EDX, dword ptr [EAX + 0x4]
009354E0  8BC8                            MOV ECX, EAX
009354E2  83C004                          ADD EAX, 0x4
009354E5  83C2FF                          ADD EDX, -0x1
009354E8  8910                            MOV dword ptr [EAX], EDX
009354EA  750E                            JNZ 0x009354fa
009354EC  C70001000000                    MOV dword ptr [EAX], 0x1
009354F2  8B01                            MOV EAX, dword ptr [ECX]
009354F4  8B10                            MOV EDX, dword ptr [EAX]
009354F6  6A01                            PUSH 0x1
009354F8  FFD2                            CALL EDX
009354FA  8D43FF                          LEA EAX, [EBX + -0x1]
009354FD  23D8                            AND EBX, EAX
009354FF  0F85FBFEFFFF                    JNZ 0x00935400
00935505  6A00                            PUSH 0x0
00935507  57                              PUSH EDI
00935508  6A02                            PUSH 0x2
0093550A  E8B1010000                      CALL 0x009356c0
0093550F  83C40C                          ADD ESP, 0xc
00935512  5F                              POP EDI
00935513  5E                              POP ESI
00935514  84C0                            TEST AL, AL
00935516  5D                              POP EBP
00935517  0F95C0                          SETNZ AL
0093551A  5B                              POP EBX
0093551B  81C49C000000                    ADD ESP, 0x9c
00935521  C21000                          RET 0x10
00935524  8B442410                        MOV EAX, dword ptr [ESP + 0x10]
00935528  85C0                            TEST EAX, EAX
0093552A  741D                            JZ 0x00935549
0093552C  8B5004                          MOV EDX, dword ptr [EAX + 0x4]
0093552F  8BC8                            MOV ECX, EAX
00935531  83C004                          ADD EAX, 0x4
00935534  83C2FF                          ADD EDX, -0x1
00935537  8910                            MOV dword ptr [EAX], EDX
00935539  750E                            JNZ 0x00935549
0093553B  C70001000000                    MOV dword ptr [EAX], 0x1
00935541  8B11                            MOV EDX, dword ptr [ECX]
00935543  8B02                            MOV EAX, dword ptr [EDX]
00935545  6A01                            PUSH 0x1
00935547  FFD0                            CALL EAX
00935549  5F                              POP EDI
0093554A  5E                              POP ESI
0093554B  5D                              POP EBP
0093554C  32C0                            XOR AL, AL
0093554E  5B                              POP EBX
0093554F  81C49C000000                    ADD ESP, 0x9c
00935555  C21000                          RET 0x10
