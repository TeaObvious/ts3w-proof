; PC1.67 original owned Listing; original bytes checked against the reference file.
; Name: SimBuilder_ApplyOutfitAppearance
; Ghidra-owned ranges (inclusive): 005E4E80..005E4F99, 005E4FA0..005E5170
; Gaps are excluded; C projection and return-register limitations are documented in the paired file.

005E4E80  81ECB0000000                    SUB ESP, 0xb0
005E4E86  53                              PUSH EBX
005E4E87  55                              PUSH EBP
005E4E88  56                              PUSH ESI
005E4E89  57                              PUSH EDI
005E4E8A  6A00                            PUSH 0x0
005E4E8C  8BF1                            MOV ESI, ECX
005E4E8E  E84DF2FFFF                      CALL 0x005e40e0
005E4E93  8BBC24C4000000                  MOV EDI, dword ptr [ESP + 0xc4]
005E4E9A  8B4738                          MOV EAX, dword ptr [EDI + 0x38]
005E4E9D  257FFF0000                      AND EAX, 0xff7f
005E4EA2  50                              PUSH EAX
005E4EA3  8BCE                            MOV ECX, ESI
005E4EA5  E896BCFFFF                      CALL 0x005e0b40
005E4EAA  8B4F40                          MOV ECX, dword ptr [EDI + 0x40]
005E4EAD  894E28                          MOV dword ptr [ESI + 0x28], ECX
005E4EB0  8B5744                          MOV EDX, dword ptr [EDI + 0x44]
005E4EB3  89562C                          MOV dword ptr [ESI + 0x2c], EDX
005E4EB6  8B4748                          MOV EAX, dword ptr [EDI + 0x48]
005E4EB9  894630                          MOV dword ptr [ESI + 0x30], EAX
005E4EBC  8B4F4C                          MOV ECX, dword ptr [EDI + 0x4c]
005E4EBF  894E34                          MOV dword ptr [ESI + 0x34], ECX
005E4EC2  D94750                          FLD float ptr [EDI + 0x50]
005E4EC5  814E1C02010000                  OR dword ptr [ESI + 0x1c], 0x102
005E4ECC  D95E38                          FSTP float ptr [ESI + 0x38]
005E4ECF  834E141F                        OR dword ptr [ESI + 0x14], 0x1f
005E4ED3  D94768                          FLD float ptr [EDI + 0x68]
005E4ED6  8B461C                          MOV EAX, dword ptr [ESI + 0x1c]
005E4ED9  D95E50                          FSTP float ptr [ESI + 0x50]
005E4EDC  83C810                          OR EAX, 0x10
005E4EDF  89461C                          MOV dword ptr [ESI + 0x1c], EAX
005E4EE2  D9476C                          FLD float ptr [EDI + 0x6c]
005E4EE5  D95E54                          FSTP float ptr [ESI + 0x54]
005E4EE8  83C820                          OR EAX, 0x20
005E4EEB  89461C                          MOV dword ptr [ESI + 0x1c], EAX
005E4EEE  D94770                          FLD float ptr [EDI + 0x70]
005E4EF1  D95E58                          FSTP float ptr [ESI + 0x58]
005E4EF4  83C840                          OR EAX, 0x40
005E4EF7  89461C                          MOV dword ptr [ESI + 0x1c], EAX
005E4EFA  D94774                          FLD float ptr [EDI + 0x74]
005E4EFD  D95E5C                          FSTP float ptr [ESI + 0x5c]
005E4F00  0D80000000                      OR EAX, 0x80
005E4F05  89461C                          MOV dword ptr [ESI + 0x1c], EAX
005E4F08  D94778                          FLD float ptr [EDI + 0x78]
005E4F0B  D95E60                          FSTP float ptr [ESI + 0x60]
005E4F0E  0D00000200                      OR EAX, 0x20000
005E4F13  D9477C                          FLD float ptr [EDI + 0x7c]
005E4F16  89461C                          MOV dword ptr [ESI + 0x1c], EAX
005E4F19  D99E68020000                    FSTP float ptr [ESI + 0x268]
005E4F1F  0D00000200                      OR EAX, 0x20000
005E4F24  D98780000000                    FLD float ptr [EDI + 0x80]
005E4F2A  89461C                          MOV dword ptr [ESI + 0x1c], EAX
005E4F2D  D99E6C020000                    FSTP float ptr [ESI + 0x26c]
005E4F33  8B9788000000                    MOV EDX, dword ptr [EDI + 0x88]
005E4F39  899670020000                    MOV dword ptr [ESI + 0x270], EDX
005E4F3F  8B8F8C000000                    MOV ECX, dword ptr [EDI + 0x8c]
005E4F45  898E74020000                    MOV dword ptr [ESI + 0x274], ECX
005E4F4B  8B9790000000                    MOV EDX, dword ptr [EDI + 0x90]
005E4F51  899678020000                    MOV dword ptr [ESI + 0x278], EDX
005E4F57  8B8F94000000                    MOV ECX, dword ptr [EDI + 0x94]
005E4F5D  0D00000200                      OR EAX, 0x20000
005E4F62  89461C                          MOV dword ptr [ESI + 0x1c], EAX
005E4F65  898E7C020000                    MOV dword ptr [ESI + 0x27c], ECX
005E4F6B  8B8F9C000000                    MOV ECX, dword ptr [EDI + 0x9c]
005E4F71  2B8F98000000                    SUB ECX, dword ptr [EDI + 0x98]
005E4F77  B84FECC44E                      MOV EAX, 0x4ec4ec4f
005E4F7C  F7E9                            IMUL ECX
005E4F7E  C1FA05                          SAR EDX, 0x5
005E4F81  8BDA                            MOV EBX, EDX
005E4F83  C1EB1F                          SHR EBX, 0x1f
005E4F86  03DA                            ADD EBX, EDX
005E4F88  85DB                            TEST EBX, EBX
005E4F8A  C744241400000000                MOV dword ptr [ESP + 0x14], 0x0
005E4F92  0F8E34010000                    JLE 0x005e50cc
005E4F98  EB06                            JMP 0x005e4fa0
005E4FA0  8D4C2430                        LEA ECX, [ESP + 0x30]
005E4FA4  E8C7E5FFFF                      CALL 0x005e3570
005E4FA9  8B542414                        MOV EDX, dword ptr [ESP + 0x14]
005E4FAD  52                              PUSH EDX
005E4FAE  8BCF                            MOV ECX, EDI
005E4FB0  E8CB0A0000                      CALL 0x005e5a80
005E4FB5  8BE8                            MOV EBP, EAX
005E4FB7  85ED                            TEST EBP, EBP
005E4FB9  0F84F1000000                    JZ 0x005e50b0
005E4FBF  837D0800                        CMP dword ptr [EBP + 0x8], 0x0
005E4FC3  0F84E7000000                    JZ 0x005e50b0
005E4FC9  8D4510                          LEA EAX, [EBP + 0x10]
005E4FCC  50                              PUSH EAX
005E4FCD  8D4C2434                        LEA ECX, [ESP + 0x34]
005E4FD1  E85AB76400                      CALL 0x00c30730
005E4FD6  8B4D00                          MOV ECX, dword ptr [EBP]
005E4FD9  898C2490000000                  MOV dword ptr [ESP + 0x90], ECX
005E4FE0  8B5504                          MOV EDX, dword ptr [EBP + 0x4]
005E4FE3  89942494000000                  MOV dword ptr [ESP + 0x94], EDX
005E4FEA  8B4508                          MOV EAX, dword ptr [EBP + 0x8]
005E4FED  89842498000000                  MOV dword ptr [ESP + 0x98], EAX
005E4FF4  8B4D0C                          MOV ECX, dword ptr [EBP + 0xc]
005E4FF7  8D4514                          LEA EAX, [EBP + 0x14]
005E4FFA  8D542434                        LEA EDX, [ESP + 0x34]
005E4FFE  3BD0                            CMP EDX, EAX
005E5000  898C249C000000                  MOV dword ptr [ESP + 0x9c], ECX
005E5007  741D                            JZ 0x005e5026
005E5009  8BCA                            MOV ECX, EDX
005E500B  E890827600                      CALL 0x00d4d2a0
005E5010  8B442410                        MOV EAX, dword ptr [ESP + 0x10]
005E5014  8B4D18                          MOV ECX, dword ptr [EBP + 0x18]
005E5017  8B5514                          MOV EDX, dword ptr [EBP + 0x14]
005E501A  50                              PUSH EAX
005E501B  51                              PUSH ECX
005E501C  52                              PUSH EDX
005E501D  8D4C2440                        LEA ECX, [ESP + 0x40]
005E5021  E8CAEDFEFF                      CALL 0x005d3df0
005E5026  8D4538                          LEA EAX, [EBP + 0x38]
005E5029  8D4C2458                        LEA ECX, [ESP + 0x58]
005E502D  3BC8                            CMP ECX, EAX
005E502F  741B                            JZ 0x005e504c
005E5031  E86A827600                      CALL 0x00d4d2a0
005E5036  8B542410                        MOV EDX, dword ptr [ESP + 0x10]
005E503A  8B453C                          MOV EAX, dword ptr [EBP + 0x3c]
005E503D  8B4D38                          MOV ECX, dword ptr [EBP + 0x38]
005E5040  52                              PUSH EDX
005E5041  50                              PUSH EAX
005E5042  51                              PUSH ECX
005E5043  8D4C2464                        LEA ECX, [ESP + 0x64]
005E5047  E8A4EDFEFF                      CALL 0x005d3df0
005E504C  8B6D5C                          MOV EBP, dword ptr [EBP + 0x5c]
005E504F  85ED                            TEST EBP, EBP
005E5051  740C                            JZ 0x005e505f
005E5053  8D54247C                        LEA EDX, [ESP + 0x7c]
005E5057  52                              PUSH EDX
005E5058  8BCD                            MOV ECX, EBP
005E505A  E8C1ACFDFF                      CALL 0x005bfd20
005E505F  8B86E8010000                    MOV EAX, dword ptr [ESI + 0x1e8]
005E5065  68E7000000                      PUSH 0xe7
005E506A  688899F900                      PUSH 0xf99988
005E506F  6A00                            PUSH 0x0
005E5071  8DAEE0010000                    LEA EBP, [ESI + 0x1e0]
005E5077  6A00                            PUSH 0x0
005E5079  50                              PUSH EAX
005E507A  6898000000                      PUSH 0x98
005E507F  E87CF4EFFF                      CALL 0x004e4500
005E5084  8D4808                          LEA ECX, [EAX + 0x8]
005E5087  83C418                          ADD ESP, 0x18
005E508A  85C9                            TEST ECX, ECX
005E508C  89442410                        MOV dword ptr [ESP + 0x10], EAX
005E5090  740E                            JZ 0x005e50a0
005E5092  8D542430                        LEA EDX, [ESP + 0x30]
005E5096  52                              PUSH EDX
005E5097  E824EEFFFF                      CALL 0x005e3ec0
005E509C  8B442410                        MOV EAX, dword ptr [ESP + 0x10]
005E50A0  8928                            MOV dword ptr [EAX], EBP
005E50A2  8B4D04                          MOV ECX, dword ptr [EBP + 0x4]
005E50A5  894804                          MOV dword ptr [EAX + 0x4], ECX
005E50A8  8B5504                          MOV EDX, dword ptr [EBP + 0x4]
005E50AB  8902                            MOV dword ptr [EDX], EAX
005E50AD  894504                          MOV dword ptr [EBP + 0x4], EAX
005E50B0  8D4C2430                        LEA ECX, [ESP + 0x30]
005E50B4  E847E5FFFF                      CALL 0x005e3600
005E50B9  8B442414                        MOV EAX, dword ptr [ESP + 0x14]
005E50BD  83C001                          ADD EAX, 0x1
005E50C0  3BC3                            CMP EAX, EBX
005E50C2  89442414                        MOV dword ptr [ESP + 0x14], EAX
005E50C6  0F8CD4FEFFFF                    JL 0x005e4fa0
005E50CC  8B8FBC020000                    MOV ECX, dword ptr [EDI + 0x2bc]
005E50D2  2B8FB8020000                    SUB ECX, dword ptr [EDI + 0x2b8]
005E50D8  B8ABAAAA2A                      MOV EAX, 0x2aaaaaab
005E50DD  F7E9                            IMUL ECX
005E50DF  C1FA02                          SAR EDX, 0x2
005E50E2  8BC2                            MOV EAX, EDX
005E50E4  C1E81F                          SHR EAX, 0x1f
005E50E7  03C2                            ADD EAX, EDX
005E50E9  85C0                            TEST EAX, EAX
005E50EB  7E65                            JLE 0x005e5152
005E50ED  33DB                            XOR EBX, EBX
005E50EF  8BE8                            MOV EBP, EAX
005E50F1  8B87B8020000                    MOV EAX, dword ptr [EDI + 0x2b8]
005E50F7  8B0C18                          MOV ECX, dword ptr [EAX + EBX*0x1]
005E50FA  03C3                            ADD EAX, EBX
005E50FC  894C2418                        MOV dword ptr [ESP + 0x18], ECX
005E5100  8B5004                          MOV EDX, dword ptr [EAX + 0x4]
005E5103  8954241C                        MOV dword ptr [ESP + 0x1c], EDX
005E5107  8B4808                          MOV ECX, dword ptr [EAX + 0x8]
005E510A  894C2420                        MOV dword ptr [ESP + 0x20], ECX
005E510E  8B500C                          MOV EDX, dword ptr [EAX + 0xc]
005E5111  89542424                        MOV dword ptr [ESP + 0x24], EDX
005E5115  8B4810                          MOV ECX, dword ptr [EAX + 0x10]
005E5118  894C2428                        MOV dword ptr [ESP + 0x28], ECX
005E511C  8B5014                          MOV EDX, dword ptr [EAX + 0x14]
005E511F  F30F10442428                    MOVSS XMM0, dword ptr [ESP + 0x28]
005E5125  0F2E05CC4C0F01                  UCOMISS XMM0, dword ptr [0x010f4ccc]
005E512C  9F                              LAHF
005E512D  F6C444                          TEST AH, 0x44
005E5130  8954242C                        MOV dword ptr [ESP + 0x2c], EDX
005E5134  7B14                            JNP 0x005e514a
005E5136  D9442428                        FLD float ptr [ESP + 0x28]
005E513A  51                              PUSH ECX
005E513B  8D44241C                        LEA EAX, [ESP + 0x1c]
005E513F  D91C24                          FSTP float ptr [ESP]
005E5142  50                              PUSH EAX
005E5143  8BCE                            MOV ECX, ESI
005E5145  E836E8FFFF                      CALL 0x005e3980
005E514A  83C318                          ADD EBX, 0x18
005E514D  83ED01                          SUB EBP, 0x1
005E5150  759F                            JNZ 0x005e50f1
005E5152  B81F000000                      MOV EAX, 0x1f
005E5157  5F                              POP EDI
005E5158  C7461CFFFF0300                  MOV dword ptr [ESI + 0x1c], 0x3ffff
005E515F  894618                          MOV dword ptr [ESI + 0x18], EAX
005E5162  894614                          MOV dword ptr [ESI + 0x14], EAX
005E5165  5E                              POP ESI
005E5166  5D                              POP EBP
005E5167  5B                              POP EBX
005E5168  81C4B0000000                    ADD ESP, 0xb0
005E516E  C20400                          RET 0x4
