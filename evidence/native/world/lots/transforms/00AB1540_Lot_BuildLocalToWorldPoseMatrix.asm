; PC1.67 original Ghidra-owned instruction listing.
; Analyst-assigned name: Lot_BuildLocalToWorldPoseMatrix
; Inclusive owned ranges: 00AB1540..00AB1607
; Paired C retains actual provisional types; original instructions govern physical ABI.

00AB1540  55                              PUSH EBP
00AB1541  8BEC                            MOV EBP, ESP
00AB1543  83E4F0                          AND ESP, 0xfffffff0
00AB1546  83EC20                          SUB ESP, 0x20
00AB1549  8D0424                          LEA EAX, [ESP]
00AB154C  50                              PUSH EAX
00AB154D  E80EFEFFFF                      CALL 0x00ab1360
00AB1552  0F2808                          MOVAPS XMM1, xmmword ptr [EAX]
00AB1555  F30F1005805D0601                MOVSS XMM0, dword ptr [0x01065d80]
00AB155D  F30F1015B4B5F900                MOVSS XMM2, dword ptr [0x00f9b5b4]
00AB1565  0FC6C000                        SHUFPS XMM0, XMM0, 0x0
00AB1569  0F59C1                          MULPS XMM0, XMM1
00AB156C  0F57C9                          XORPS XMM1, XMM1
00AB156F  0F5CC8                          SUBPS XMM1, XMM0
00AB1572  0F59C8                          MULPS XMM1, XMM0
00AB1575  0FC6D200                        SHUFPS XMM2, XMM2, 0x0
00AB1579  0F58CA                          ADDPS XMM1, XMM2
00AB157C  0F28D0                          MOVAPS XMM2, XMM0
00AB157F  0FC6D009                        SHUFPS XMM2, XMM0, 0x9
00AB1583  0F59D0                          MULPS XMM2, XMM0
00AB1586  0F28D8                          MOVAPS XMM3, XMM0
00AB1589  0FC6D8FF                        SHUFPS XMM3, XMM0, 0xff
00AB158D  0FC6C012                        SHUFPS XMM0, XMM0, 0x12
00AB1591  0F59D8                          MULPS XMM3, XMM0
00AB1594  0F28C3                          MOVAPS XMM0, XMM3
00AB1597  0F58C2                          ADDPS XMM0, XMM2
00AB159A  0F5CD3                          SUBPS XMM2, XMM3
00AB159D  0F28D9                          MOVAPS XMM3, XMM1
00AB15A0  0FC6D909                        SHUFPS XMM3, XMM1, 0x9
00AB15A4  0F58D9                          ADDPS XMM3, XMM1
00AB15A7  0F28CB                          MOVAPS XMM1, XMM3
00AB15AA  0FC6C801                        SHUFPS XMM1, XMM0, 0x1
00AB15AE  0F28E2                          MOVAPS XMM4, XMM2
00AB15B1  0FC6E320                        SHUFPS XMM4, XMM3, 0x20
00AB15B5  0FC6E018                        SHUFPS XMM4, XMM0, 0x18
00AB15B9  0FC6C212                        SHUFPS XMM0, XMM2, 0x12
00AB15BD  0FC6C308                        SHUFPS XMM0, XMM3, 0x8
00AB15C1  F30F101DF898F900                MOVSS XMM3, dword ptr [0x00f998f8]
00AB15C9  0FC6CA28                        SHUFPS XMM1, XMM2, 0x28
00AB15CD  0F285010                        MOVAPS XMM2, xmmword ptr [EAX + 0x10]
00AB15D1  8B4508                          MOV EAX, dword ptr [EBP + 0x8]
00AB15D4  0F28EA                          MOVAPS XMM5, XMM2
00AB15D7  0FC6DB00                        SHUFPS XMM3, XMM3, 0x0
00AB15DB  0FC6EBFA                        SHUFPS XMM5, XMM3, 0xfa
00AB15DF  0F281D70061B01                  MOVAPS XMM3, xmmword ptr [0x011b0670]
00AB15E6  0F54CB                          ANDPS XMM1, XMM3
00AB15E9  0F2908                          MOVAPS xmmword ptr [EAX], XMM1
00AB15EC  0F54E3                          ANDPS XMM4, XMM3
00AB15EF  0F296010                        MOVAPS xmmword ptr [EAX + 0x10], XMM4
00AB15F3  0F54C3                          ANDPS XMM0, XMM3
00AB15F6  0FC6D584                        SHUFPS XMM2, XMM5, 0x84
00AB15FA  0F294020                        MOVAPS xmmword ptr [EAX + 0x20], XMM0
00AB15FE  0F295030                        MOVAPS xmmword ptr [EAX + 0x30], XMM2
00AB1602  8BE5                            MOV ESP, EBP
00AB1604  5D                              POP EBP
00AB1605  C20400                          RET 0x4
