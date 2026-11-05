; PC1.67 original Ghidra-owned instruction listing.
; Analyst-assigned name: Lot_GetLocalToWorldPose
; Inclusive owned ranges: 00AB1360..00AB1434
; Paired C retains actual provisional types; original instructions govern physical ABI.

00AB1360  55                              PUSH EBP
00AB1361  8BEC                            MOV EBP, ESP
00AB1363  83E4F0                          AND ESP, 0xfffffff0
00AB1366  83EC60                          SUB ESP, 0x60
00AB1369  0F57C0                          XORPS XMM0, XMM0
00AB136C  F30F100DF898F900                MOVSS XMM1, dword ptr [0x00f998f8]
00AB1374  F30F1144241C                    MOVSS dword ptr [ESP + 0x1c], XMM0
00AB137A  F30F11442418                    MOVSS dword ptr [ESP + 0x18], XMM0
00AB1380  F30F11442410                    MOVSS dword ptr [ESP + 0x10], XMM0
00AB1386  F30F114C2414                    MOVSS dword ptr [ESP + 0x14], XMM1
00AB138C  0F28442410                      MOVAPS XMM0, xmmword ptr [ESP + 0x10]
00AB1391  F30F100D88FD0301                MOVSS XMM1, dword ptr [0x0103fd88]
00AB1399  0F29442420                      MOVAPS xmmword ptr [ESP + 0x20], XMM0
00AB139E  F30F1081A0010000                MOVSS XMM0, dword ptr [ECX + 0x1a0]
00AB13A6  0FC6C000                        SHUFPS XMM0, XMM0, 0x0
00AB13AA  0FC6C900                        SHUFPS XMM1, XMM1, 0x0
00AB13AE  0F5EC1                          DIVPS XMM0, XMM1
00AB13B1  0F29442410                      MOVAPS xmmword ptr [ESP + 0x10], XMM0
00AB13B6  D9442410                        FLD float ptr [ESP + 0x10]
00AB13BA  0F29442410                      MOVAPS xmmword ptr [ESP + 0x10], XMM0
00AB13BF  D9FE                            FSIN
00AB13C1  8B4508                          MOV EAX, dword ptr [EBP + 0x8]
00AB13C4  D95C240C                        FSTP float ptr [ESP + 0xc]
00AB13C8  D9442410                        FLD float ptr [ESP + 0x10]
00AB13CC  D9FF                            FCOS
00AB13CE  F30F104C240C                    MOVSS XMM1, dword ptr [ESP + 0xc]
00AB13D4  0F28442420                      MOVAPS XMM0, xmmword ptr [ESP + 0x20]
00AB13D9  0F28D0                          MOVAPS XMM2, XMM0
00AB13DC  0FC6D0AA                        SHUFPS XMM2, XMM0, 0xaa
00AB13E0  0F28D8                          MOVAPS XMM3, XMM0
00AB13E3  0FC6D855                        SHUFPS XMM3, XMM0, 0x55
00AB13E7  0FC6C900                        SHUFPS XMM1, XMM1, 0x0
00AB13EB  0FC6C000                        SHUFPS XMM0, XMM0, 0x0
00AB13EF  0F59C1                          MULPS XMM0, XMM1
00AB13F2  0F59D1                          MULPS XMM2, XMM1
00AB13F5  0F59D9                          MULPS XMM3, XMM1
00AB13F8  0F29442450                      MOVAPS xmmword ptr [ESP + 0x50], XMM0
00AB13FD  0F29542430                      MOVAPS xmmword ptr [ESP + 0x30], XMM2
00AB1402  0F295C2440                      MOVAPS xmmword ptr [ESP + 0x40], XMM3
00AB1407  0FC6C310                        SHUFPS XMM0, XMM3, 0x10
00AB140B  D95C240C                        FSTP float ptr [ESP + 0xc]
00AB140F  F30F104C240C                    MOVSS XMM1, dword ptr [ESP + 0xc]
00AB1415  0FC6C900                        SHUFPS XMM1, XMM1, 0x0
00AB1419  0FC6D132                        SHUFPS XMM2, XMM1, 0x32
00AB141D  0FC6C288                        SHUFPS XMM0, XMM2, 0x88
00AB1421  0F2900                          MOVAPS xmmword ptr [EAX], XMM0
00AB1424  0F288190010000                  MOVAPS XMM0, xmmword ptr [ECX + 0x190]
00AB142B  0F294010                        MOVAPS xmmword ptr [EAX + 0x10], XMM0
00AB142F  8BE5                            MOV ESP, EBP
00AB1431  5D                              POP EBP
00AB1432  C20400                          RET 0x4
