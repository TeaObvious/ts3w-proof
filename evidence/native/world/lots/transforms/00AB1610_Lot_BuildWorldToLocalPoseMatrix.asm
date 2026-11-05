; PC1.67 original Ghidra-owned instruction listing.
; Analyst-assigned name: Lot_BuildWorldToLocalPoseMatrix
; Inclusive owned ranges: 00AB1610..00AB16D7
; Paired C retains actual provisional types; original instructions govern physical ABI.

00AB1610  55                              PUSH EBP
00AB1611  8BEC                            MOV EBP, ESP
00AB1613  83E4F0                          AND ESP, 0xfffffff0
00AB1616  83EC20                          SUB ESP, 0x20
00AB1619  8D0424                          LEA EAX, [ESP]
00AB161C  50                              PUSH EAX
00AB161D  E81EFEFFFF                      CALL 0x00ab1440
00AB1622  0F2808                          MOVAPS XMM1, xmmword ptr [EAX]
00AB1625  F30F1005805D0601                MOVSS XMM0, dword ptr [0x01065d80]
00AB162D  F30F1015B4B5F900                MOVSS XMM2, dword ptr [0x00f9b5b4]
00AB1635  0FC6C000                        SHUFPS XMM0, XMM0, 0x0
00AB1639  0F59C1                          MULPS XMM0, XMM1
00AB163C  0F57C9                          XORPS XMM1, XMM1
00AB163F  0F5CC8                          SUBPS XMM1, XMM0
00AB1642  0F59C8                          MULPS XMM1, XMM0
00AB1645  0FC6D200                        SHUFPS XMM2, XMM2, 0x0
00AB1649  0F58CA                          ADDPS XMM1, XMM2
00AB164C  0F28D0                          MOVAPS XMM2, XMM0
00AB164F  0FC6D009                        SHUFPS XMM2, XMM0, 0x9
00AB1653  0F59D0                          MULPS XMM2, XMM0
00AB1656  0F28D8                          MOVAPS XMM3, XMM0
00AB1659  0FC6D8FF                        SHUFPS XMM3, XMM0, 0xff
00AB165D  0FC6C012                        SHUFPS XMM0, XMM0, 0x12
00AB1661  0F59D8                          MULPS XMM3, XMM0
00AB1664  0F28C3                          MOVAPS XMM0, XMM3
00AB1667  0F58C2                          ADDPS XMM0, XMM2
00AB166A  0F5CD3                          SUBPS XMM2, XMM3
00AB166D  0F28D9                          MOVAPS XMM3, XMM1
00AB1670  0FC6D909                        SHUFPS XMM3, XMM1, 0x9
00AB1674  0F58D9                          ADDPS XMM3, XMM1
00AB1677  0F28CB                          MOVAPS XMM1, XMM3
00AB167A  0FC6C801                        SHUFPS XMM1, XMM0, 0x1
00AB167E  0F28E2                          MOVAPS XMM4, XMM2
00AB1681  0FC6E320                        SHUFPS XMM4, XMM3, 0x20
00AB1685  0FC6E018                        SHUFPS XMM4, XMM0, 0x18
00AB1689  0FC6C212                        SHUFPS XMM0, XMM2, 0x12
00AB168D  0FC6C308                        SHUFPS XMM0, XMM3, 0x8
00AB1691  F30F101DF898F900                MOVSS XMM3, dword ptr [0x00f998f8]
00AB1699  0FC6CA28                        SHUFPS XMM1, XMM2, 0x28
00AB169D  0F285010                        MOVAPS XMM2, xmmword ptr [EAX + 0x10]
00AB16A1  8B4508                          MOV EAX, dword ptr [EBP + 0x8]
00AB16A4  0F28EA                          MOVAPS XMM5, XMM2
00AB16A7  0FC6DB00                        SHUFPS XMM3, XMM3, 0x0
00AB16AB  0FC6EBFA                        SHUFPS XMM5, XMM3, 0xfa
00AB16AF  0F281D70061B01                  MOVAPS XMM3, xmmword ptr [0x011b0670]
00AB16B6  0F54CB                          ANDPS XMM1, XMM3
00AB16B9  0F2908                          MOVAPS xmmword ptr [EAX], XMM1
00AB16BC  0F54E3                          ANDPS XMM4, XMM3
00AB16BF  0F296010                        MOVAPS xmmword ptr [EAX + 0x10], XMM4
00AB16C3  0F54C3                          ANDPS XMM0, XMM3
00AB16C6  0FC6D584                        SHUFPS XMM2, XMM5, 0x84
00AB16CA  0F294020                        MOVAPS xmmword ptr [EAX + 0x20], XMM0
00AB16CE  0F295030                        MOVAPS xmmword ptr [EAX + 0x30], XMM2
00AB16D2  8BE5                            MOV ESP, EBP
00AB16D4  5D                              POP EBP
00AB16D5  C20400                          RET 0x4
