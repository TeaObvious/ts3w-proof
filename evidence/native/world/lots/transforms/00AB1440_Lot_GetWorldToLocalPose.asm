; PC1.67 original Ghidra-owned instruction listing.
; Analyst-assigned name: Lot_GetWorldToLocalPose
; Inclusive owned ranges: 00AB1440..00AB153F
; Paired C retains actual provisional types; original instructions govern physical ABI.

00AB1440  55                              PUSH EBP
00AB1441  8BEC                            MOV EBP, ESP
00AB1443  83E4F0                          AND ESP, 0xfffffff0
00AB1446  83EC40                          SUB ESP, 0x40
00AB1449  8D442420                        LEA EAX, [ESP + 0x20]
00AB144D  50                              PUSH EAX
00AB144E  E80DFFFFFF                      CALL 0x00ab1360
00AB1453  0F2810                          MOVAPS XMM2, xmmword ptr [EAX]
00AB1456  F30F101D88FD0301                MOVSS XMM3, dword ptr [0x0103fd88]
00AB145E  8B4D08                          MOV ECX, dword ptr [EBP + 0x8]
00AB1461  0F28C2                          MOVAPS XMM0, XMM2
00AB1464  0F59C2                          MULPS XMM0, XMM2
00AB1467  0F28C8                          MOVAPS XMM1, XMM0
00AB146A  0FC6C80E                        SHUFPS XMM1, XMM0, 0xe
00AB146E  0F58C8                          ADDPS XMM1, XMM0
00AB1471  0F28C1                          MOVAPS XMM0, XMM1
00AB1474  0FC6C101                        SHUFPS XMM0, XMM1, 0x1
00AB1478  0F58C1                          ADDPS XMM0, XMM1
00AB147B  0FC6C000                        SHUFPS XMM0, XMM0, 0x0
00AB147F  0F53E0                          RCPPS XMM4, XMM0
00AB1482  0F28EC                          MOVAPS XMM5, XMM4
00AB1485  0F59E8                          MULPS XMM5, XMM0
00AB1488  0FC6DB00                        SHUFPS XMM3, XMM3, 0x0
00AB148C  0F28CB                          MOVAPS XMM1, XMM3
00AB148F  0F5CCD                          SUBPS XMM1, XMM5
00AB1492  0F59CC                          MULPS XMM1, XMM4
00AB1495  0F28E1                          MOVAPS XMM4, XMM1
00AB1498  0F59E0                          MULPS XMM4, XMM0
00AB149B  0F28C3                          MOVAPS XMM0, XMM3
00AB149E  0F5CC4                          SUBPS XMM0, XMM4
00AB14A1  0F59C1                          MULPS XMM0, XMM1
00AB14A4  0F57C9                          XORPS XMM1, XMM1
00AB14A7  F30F114C241C                    MOVSS dword ptr [ESP + 0x1c], XMM1
00AB14AD  C744240C00000080                MOV dword ptr [ESP + 0xc], 0x80000000
00AB14B5  F30F104C240C                    MOVSS XMM1, dword ptr [ESP + 0xc]
00AB14BB  F30F114C2418                    MOVSS dword ptr [ESP + 0x18], XMM1
00AB14C1  F30F114C2414                    MOVSS dword ptr [ESP + 0x14], XMM1
00AB14C7  F30F114C2410                    MOVSS dword ptr [ESP + 0x10], XMM1
00AB14CD  0F284C2410                      MOVAPS XMM1, xmmword ptr [ESP + 0x10]
00AB14D2  0F57CA                          XORPS XMM1, XMM2
00AB14D5  0F285010                        MOVAPS XMM2, xmmword ptr [EAX + 0x10]
00AB14D9  0F59C1                          MULPS XMM0, XMM1
00AB14DC  0F28E0                          MOVAPS XMM4, XMM0
00AB14DF  0FC6E009                        SHUFPS XMM4, XMM0, 0x9
00AB14E3  0F28E8                          MOVAPS XMM5, XMM0
00AB14E6  0FC6E812                        SHUFPS XMM5, XMM0, 0x12
00AB14EA  0F28F2                          MOVAPS XMM6, XMM2
00AB14ED  0FC6F209                        SHUFPS XMM6, XMM2, 0x9
00AB14F1  0F59F5                          MULPS XMM6, XMM5
00AB14F4  0F28CA                          MOVAPS XMM1, XMM2
00AB14F7  0FC6CA12                        SHUFPS XMM1, XMM2, 0x12
00AB14FB  0F59CC                          MULPS XMM1, XMM4
00AB14FE  0F5CCE                          SUBPS XMM1, XMM6
00AB1501  0F28F0                          MOVAPS XMM6, XMM0
00AB1504  0FC6F0FF                        SHUFPS XMM6, XMM0, 0xff
00AB1508  0F2901                          MOVAPS xmmword ptr [ECX], XMM0
00AB150B  0F59F2                          MULPS XMM6, XMM2
00AB150E  0F58CE                          ADDPS XMM1, XMM6
00AB1511  0F28C1                          MOVAPS XMM0, XMM1
00AB1514  0FC6C109                        SHUFPS XMM0, XMM1, 0x9
00AB1518  0F59C5                          MULPS XMM0, XMM5
00AB151B  0F28E9                          MOVAPS XMM5, XMM1
00AB151E  0FC6E912                        SHUFPS XMM5, XMM1, 0x12
00AB1522  0F59EC                          MULPS XMM5, XMM4
00AB1525  0F5CE8                          SUBPS XMM5, XMM0
00AB1528  0F59EB                          MULPS XMM5, XMM3
00AB152B  0F58EA                          ADDPS XMM5, XMM2
00AB152E  0F57C0                          XORPS XMM0, XMM0
00AB1531  0F5CC5                          SUBPS XMM0, XMM5
00AB1534  0F294110                        MOVAPS xmmword ptr [ECX + 0x10], XMM0
00AB1538  8BC1                            MOV EAX, ECX
00AB153A  8BE5                            MOV ESP, EBP
00AB153C  5D                              POP EBP
00AB153D  C20400                          RET 0x4
