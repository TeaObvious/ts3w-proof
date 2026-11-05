; PC1.67 original Ghidra-owned instruction listing.
; Analyst-assigned name: WorldPlacement_TestPositionAndRotation
; Inclusive owned ranges: 00C79A80..00C7A434
; Paired C retains actual provisional types; original instructions govern physical ABI.

00C79A80  55                              PUSH EBP
00C79A81  8BEC                            MOV EBP, ESP
00C79A83  83E4F0                          AND ESP, 0xfffffff0
00C79A86  81EC64030000                    SUB ESP, 0x364
00C79A8C  8B0DC4DB1E01                    MOV ECX, dword ptr [0x011edbc4]
00C79A92  53                              PUSH EBX
00C79A93  8B5D14                          MOV EBX, dword ptr [EBP + 0x14]
00C79A96  0F2803                          MOVAPS XMM0, xmmword ptr [EBX]
00C79A99  56                              PUSH ESI
00C79A9A  57                              PUSH EDI
00C79A9B  0F29842480000000                MOVAPS xmmword ptr [ESP + 0x80], XMM0
00C79AA3  D9842488000000                  FLD float ptr [ESP + 0x88]
00C79AAA  83EC08                          SUB ESP, 0x8
00C79AAD  D95C2404                        FSTP float ptr [ESP + 0x4]
00C79AB1  0F29442428                      MOVAPS xmmword ptr [ESP + 0x28], XMM0
00C79AB6  D9442428                        FLD float ptr [ESP + 0x28]
00C79ABA  C644242301                      MOV byte ptr [ESP + 0x23], 0x1
00C79ABF  D91C24                          FSTP float ptr [ESP]
00C79AC2  894C2474                        MOV dword ptr [ESP + 0x74], ECX
00C79AC6  E805EDFEFF                      CALL 0x00c687d0
00C79ACB  8B7508                          MOV ESI, dword ptr [EBP + 0x8]
00C79ACE  8BF8                            MOV EDI, EAX
00C79AD0  85FF                            TEST EDI, EDI
00C79AD2  0F846F060000                    JZ 0x00c7a147
00C79AD8  A108DF1E01                      MOV EAX, [0x011edf08]
00C79ADD  85462C                          TEST dword ptr [ESI + 0x2c], EAX
00C79AE0  0F8461060000                    JZ 0x00c7a147
00C79AE6  F30F100518B2FA00                MOVSS XMM0, dword ptr [0x00fab218]
00C79AEE  8D4C2434                        LEA ECX, [ESP + 0x34]
00C79AF2  51                              PUSH ECX
00C79AF3  53                              PUSH EBX
00C79AF4  57                              PUSH EDI
00C79AF5  F30F11442440                    MOVSS dword ptr [ESP + 0x40], XMM0
00C79AFB  F30F11442444                    MOVSS dword ptr [ESP + 0x44], XMM0
00C79B01  C744244800000000                MOV dword ptr [ESP + 0x48], 0x0
00C79B09  E8122EE6FF                      CALL 0x00adc920
00C79B0E  8B17                            MOV EDX, dword ptr [EDI]
00C79B10  8B5264                          MOV EDX, dword ptr [EDX + 0x64]
00C79B13  83C40C                          ADD ESP, 0xc
00C79B16  8D8424E0010000                  LEA EAX, [ESP + 0x1e0]
00C79B1D  50                              PUSH EAX
00C79B1E  8BCF                            MOV ECX, EDI
00C79B20  FFD2                            CALL EDX
00C79B22  8B8F90020000                    MOV ECX, dword ptr [EDI + 0x290]
00C79B28  8D442434                        LEA EAX, [ESP + 0x34]
00C79B2C  50                              PUSH EAX
00C79B2D  E85E2BE1FF                      CALL 0x00a8c690
00C79B32  0F2803                          MOVAPS XMM0, xmmword ptr [EBX]
00C79B35  D95C241C                        FSTP float ptr [ESP + 0x1c]
00C79B39  F30F104C241C                    MOVSS XMM1, dword ptr [ESP + 0x1c]
00C79B3F  0F57F6                          XORPS XMM6, XMM6
00C79B42  F30F1025F898F900                MOVSS XMM4, dword ptr [0x00f998f8]
00C79B4A  8B4D18                          MOV ECX, dword ptr [EBP + 0x18]
00C79B4D  0F2811                          MOVAPS XMM2, xmmword ptr [ECX]
00C79B50  0FC6C055                        SHUFPS XMM0, XMM0, 0x55
00C79B54  0FC6C900                        SHUFPS XMM1, XMM1, 0x0
00C79B58  0F5CC1                          SUBPS XMM0, XMM1
00C79B5B  0F288C24E0010000                MOVAPS XMM1, xmmword ptr [ESP + 0x1e0]
00C79B63  0FC6C955                        SHUFPS XMM1, XMM1, 0x55
00C79B67  0F298424A0020000                MOVAPS xmmword ptr [ESP + 0x2a0], XMM0
00C79B6F  0F5CC1                          SUBPS XMM0, XMM1
00C79B72  F30F11642428                    MOVSS dword ptr [ESP + 0x28], XMM4
00C79B78  0F28DA                          MOVAPS XMM3, XMM2
00C79B7B  0FC6DA09                        SHUFPS XMM3, XMM2, 0x9
00C79B7F  0F28EA                          MOVAPS XMM5, XMM2
00C79B82  0FC6EA12                        SHUFPS XMM5, XMM2, 0x12
00C79B86  F30F1174242C                    MOVSS dword ptr [ESP + 0x2c], XMM6
00C79B8C  F30F11742424                    MOVSS dword ptr [ESP + 0x24], XMM6
00C79B92  F30F11742420                    MOVSS dword ptr [ESP + 0x20], XMM6
00C79B98  0F29442470                      MOVAPS xmmword ptr [ESP + 0x70], XMM0
00C79B9D  0F28442420                      MOVAPS XMM0, xmmword ptr [ESP + 0x20]
00C79BA2  0F28F8                          MOVAPS XMM7, XMM0
00C79BA5  0FC6F809                        SHUFPS XMM7, XMM0, 0x9
00C79BA9  0F59FD                          MULPS XMM7, XMM5
00C79BAC  0F28C8                          MOVAPS XMM1, XMM0
00C79BAF  0FC6C812                        SHUFPS XMM1, XMM0, 0x12
00C79BB3  0F59CB                          MULPS XMM1, XMM3
00C79BB6  0F5CCF                          SUBPS XMM1, XMM7
00C79BB9  0F28FA                          MOVAPS XMM7, XMM2
00C79BBC  0FC6FAFF                        SHUFPS XMM7, XMM2, 0xff
00C79BC0  0F59F8                          MULPS XMM7, XMM0
00C79BC3  0F58CF                          ADDPS XMM1, XMM7
00C79BC6  0F28D1                          MOVAPS XMM2, XMM1
00C79BC9  0FC6D109                        SHUFPS XMM2, XMM1, 0x9
00C79BCD  0F59D5                          MULPS XMM2, XMM5
00C79BD0  0F28E9                          MOVAPS XMM5, XMM1
00C79BD3  0FC6E912                        SHUFPS XMM5, XMM1, 0x12
00C79BD7  F30F100D88FD0301                MOVSS XMM1, dword ptr [0x0103fd88]
00C79BDF  0F59EB                          MULPS XMM5, XMM3
00C79BE2  0FC6C900                        SHUFPS XMM1, XMM1, 0x0
00C79BE6  0F5CEA                          SUBPS XMM5, XMM2
00C79BE9  0F59E9                          MULPS XMM5, XMM1
00C79BEC  0F58E8                          ADDPS XMM5, XMM0
00C79BEF  0F29AC2480000000                MOVAPS xmmword ptr [ESP + 0x80], XMM5
00C79BF7  F30F11B42484000000              MOVSS dword ptr [ESP + 0x84], XMM6
00C79C00  0F28B42480000000                MOVAPS XMM6, xmmword ptr [ESP + 0x80]
00C79C08  0F28D6                          MOVAPS XMM2, XMM6
00C79C0B  0F59D6                          MULPS XMM2, XMM6
00C79C0E  0F28CA                          MOVAPS XMM1, XMM2
00C79C11  0FC6CA02                        SHUFPS XMM1, XMM2, 0x2
00C79C15  0F28DA                          MOVAPS XMM3, XMM2
00C79C18  0FC6DA01                        SHUFPS XMM3, XMM2, 0x1
00C79C1C  0F58CB                          ADDPS XMM1, XMM3
00C79C1F  0F58CA                          ADDPS XMM1, XMM2
00C79C22  0FC6C900                        SHUFPS XMM1, XMM1, 0x0
00C79C26  F30F10E4                        MOVSS XMM4, XMM4
00C79C2A  0F52E9                          RSQRTPS XMM5, XMM1
00C79C2D  0FC6E400                        SHUFPS XMM4, XMM4, 0x0
00C79C31  F30F1015B4B5F900                MOVSS XMM2, dword ptr [0x00f9b5b4]
00C79C39  0F28FD                          MOVAPS XMM7, XMM5
00C79C3C  0F59FD                          MULPS XMM7, XMM5
00C79C3F  0F59F9                          MULPS XMM7, XMM1
00C79C42  0FC6D200                        SHUFPS XMM2, XMM2, 0x0
00C79C46  0F28DC                          MOVAPS XMM3, XMM4
00C79C49  0F5CDF                          SUBPS XMM3, XMM7
00C79C4C  0F28FA                          MOVAPS XMM7, XMM2
00C79C4F  0F59FD                          MULPS XMM7, XMM5
00C79C52  0F59DF                          MULPS XMM3, XMM7
00C79C55  0F58DD                          ADDPS XMM3, XMM5
00C79C58  0F28EB                          MOVAPS XMM5, XMM3
00C79C5B  0F59EB                          MULPS XMM5, XMM3
00C79C5E  0F59E9                          MULPS XMM5, XMM1
00C79C61  0F28CC                          MOVAPS XMM1, XMM4
00C79C64  0F5CCD                          SUBPS XMM1, XMM5
00C79C67  0F28EA                          MOVAPS XMM5, XMM2
00C79C6A  0F59EB                          MULPS XMM5, XMM3
00C79C6D  0F59CD                          MULPS XMM1, XMM5
00C79C70  0F58CB                          ADDPS XMM1, XMM3
00C79C73  0F59CE                          MULPS XMM1, XMM6
00C79C76  0F28E8                          MOVAPS XMM5, XMM0
00C79C79  0F59E8                          MULPS XMM5, XMM0
00C79C7C  0F28DD                          MOVAPS XMM3, XMM5
00C79C7F  0FC6DD02                        SHUFPS XMM3, XMM5, 0x2
00C79C83  0F28F5                          MOVAPS XMM6, XMM5
00C79C86  0FC6F501                        SHUFPS XMM6, XMM5, 0x1
00C79C8A  0F58DE                          ADDPS XMM3, XMM6
00C79C8D  0F58DD                          ADDPS XMM3, XMM5
00C79C90  0FC6DB00                        SHUFPS XMM3, XMM3, 0x0
00C79C94  0F52F3                          RSQRTPS XMM6, XMM3
00C79C97  0F28FE                          MOVAPS XMM7, XMM6
00C79C9A  0F59FE                          MULPS XMM7, XMM6
00C79C9D  0F59FB                          MULPS XMM7, XMM3
00C79CA0  0F28DA                          MOVAPS XMM3, XMM2
00C79CA3  0F59DE                          MULPS XMM3, XMM6
00C79CA6  0F28EC                          MOVAPS XMM5, XMM4
00C79CA9  0F5CEF                          SUBPS XMM5, XMM7
00C79CAC  0F59EB                          MULPS XMM5, XMM3
00C79CAF  0F58EE                          ADDPS XMM5, XMM6
00C79CB2  0F59E8                          MULPS XMM5, XMM0
00C79CB5  0F28D9                          MOVAPS XMM3, XMM1
00C79CB8  0F59D9                          MULPS XMM3, XMM1
00C79CBB  0F28C3                          MOVAPS XMM0, XMM3
00C79CBE  0FC6C302                        SHUFPS XMM0, XMM3, 0x2
00C79CC2  0F28F3                          MOVAPS XMM6, XMM3
00C79CC5  0FC6F301                        SHUFPS XMM6, XMM3, 0x1
00C79CC9  0F58C6                          ADDPS XMM0, XMM6
00C79CCC  0F58C3                          ADDPS XMM0, XMM3
00C79CCF  0FC6C000                        SHUFPS XMM0, XMM0, 0x0
00C79CD3  0F52D8                          RSQRTPS XMM3, XMM0
00C79CD6  0F59D3                          MULPS XMM2, XMM3
00C79CD9  0F28F3                          MOVAPS XMM6, XMM3
00C79CDC  0F59F3                          MULPS XMM6, XMM3
00C79CDF  0F59F0                          MULPS XMM6, XMM0
00C79CE2  0F28C4                          MOVAPS XMM0, XMM4
00C79CE5  0F5CC6                          SUBPS XMM0, XMM6
00C79CE8  0F59C2                          MULPS XMM0, XMM2
00C79CEB  0F58C3                          ADDPS XMM0, XMM3
00C79CEE  0F59C1                          MULPS XMM0, XMM1
00C79CF1  0F29842400020000                MOVAPS xmmword ptr [ESP + 0x200], XMM0
00C79CF9  0F59C5                          MULPS XMM0, XMM5
00C79CFC  0F28C8                          MOVAPS XMM1, XMM0
00C79CFF  0FC6C802                        SHUFPS XMM1, XMM0, 0x2
00C79D03  0F28D0                          MOVAPS XMM2, XMM0
00C79D06  0FC6D001                        SHUFPS XMM2, XMM0, 0x1
00C79D0A  0F58CA                          ADDPS XMM1, XMM2
00C79D0D  0F58C8                          ADDPS XMM1, XMM0
00C79D10  F30F100518B2FA00                MOVSS XMM0, dword ptr [0x00fab218]
00C79D18  0F28D1                          MOVAPS XMM2, XMM1
00C79D1B  0FC6D100                        SHUFPS XMM2, XMM1, 0x0
00C79D1F  0FC6C000                        SHUFPS XMM0, XMM0, 0x0
00C79D23  0F5FD0                          MAXPS XMM2, XMM0
00C79D26  0F5DD4                          MINPS XMM2, XMM4
00C79D29  0F29542420                      MOVAPS xmmword ptr [ESP + 0x20], XMM2
00C79D2E  D9442420                        FLD float ptr [ESP + 0x20]
00C79D32  0F29AC24D0010000                MOVAPS xmmword ptr [ESP + 0x1d0], XMM5
00C79D3A  E87F5A3000                      CALL 0x00f7f7be
00C79D3F  D95C241C                        FSTP float ptr [ESP + 0x1c]
00C79D43  F30F1054241C                    MOVSS XMM2, dword ptr [ESP + 0x1c]
00C79D49  0FC6D200                        SHUFPS XMM2, XMM2, 0x0
00C79D4D  0F28842400020000                MOVAPS XMM0, xmmword ptr [ESP + 0x200]
00C79D55  0F288C24D0010000                MOVAPS XMM1, xmmword ptr [ESP + 0x1d0]
00C79D5D  0F28E1                          MOVAPS XMM4, XMM1
00C79D60  0FC6E112                        SHUFPS XMM4, XMM1, 0x12
00C79D64  0F28D8                          MOVAPS XMM3, XMM0
00C79D67  0FC6D809                        SHUFPS XMM3, XMM0, 0x9
00C79D6B  0FC6C909                        SHUFPS XMM1, XMM1, 0x9
00C79D6F  0FC6C012                        SHUFPS XMM0, XMM0, 0x12
00C79D73  0F59C1                          MULPS XMM0, XMM1
00C79D76  0F57C9                          XORPS XMM1, XMM1
00C79D79  0F59DC                          MULPS XMM3, XMM4
00C79D7C  0F5CC3                          SUBPS XMM0, XMM3
00C79D7F  F30F101DF898F900                MOVSS XMM3, dword ptr [0x00f998f8]
00C79D87  F30F114C242C                    MOVSS dword ptr [ESP + 0x2c], XMM1
00C79D8D  F30F114C2428                    MOVSS dword ptr [ESP + 0x28], XMM1
00C79D93  F30F114C2420                    MOVSS dword ptr [ESP + 0x20], XMM1
00C79D99  F30F115C2424                    MOVSS dword ptr [ESP + 0x24], XMM3
00C79D9F  0F284C2420                      MOVAPS XMM1, xmmword ptr [ESP + 0x20]
00C79DA4  0F59C1                          MULPS XMM0, XMM1
00C79DA7  0F28C8                          MOVAPS XMM1, XMM0
00C79DAA  0FC6C802                        SHUFPS XMM1, XMM0, 0x2
00C79DAE  0F28D8                          MOVAPS XMM3, XMM0
00C79DB1  0FC6D801                        SHUFPS XMM3, XMM0, 0x1
00C79DB5  0F58CB                          ADDPS XMM1, XMM3
00C79DB8  0F58C8                          ADDPS XMM1, XMM0
00C79DBB  0F57C0                          XORPS XMM0, XMM0
00C79DBE  0FC6C900                        SHUFPS XMM1, XMM1, 0x0
00C79DC2  F30F118424F0010000              MOVSS dword ptr [ESP + 0x1f0], XMM0
00C79DCB  F30F108424F0010000              MOVSS XMM0, dword ptr [ESP + 0x1f0]
00C79DD4  F30F114C2440                    MOVSS dword ptr [ESP + 0x40], XMM1
00C79DDA  0F2F442440                      COMISS XMM0, dword ptr [ESP + 0x40]
00C79DDF  7611                            JBE 0x00c79df2
00C79DE1  F30F100528AF0701                MOVSS XMM0, dword ptr [0x0107af28]
00C79DE9  0FC6C000                        SHUFPS XMM0, XMM0, 0x0
00C79DED  0F5CC2                          SUBPS XMM0, XMM2
00C79DF0  EB03                            JMP 0x00c79df5
00C79DF2  0F28C2                          MOVAPS XMM0, XMM2
00C79DF5  0F29442440                      MOVAPS xmmword ptr [ESP + 0x40], XMM0
00C79DFA  D9442440                        FLD float ptr [ESP + 0x40]
00C79DFE  D80D2024FC00                    FMUL float ptr [0x00fc2420]
00C79E04  83EC08                          SUB ESP, 0x8
00C79E07  D9542424                        FST float ptr [ESP + 0x24]
00C79E0B  DD1C24                          FSTP double ptr [ESP]
00C79E0E  E8BD593000                      CALL 0x00f7f7d0
00C79E13  D86C2424                        FSUBR float ptr [ESP + 0x24]
00C79E17  83C408                          ADD ESP, 0x8
00C79E1A  D954241C                        FST float ptr [ESP + 0x1c]
00C79E1E  D905B4B5F900                    FLD float ptr [0x00f9b5b4]
00C79E24  D9C9                            FXCH
00C79E26  DBF1                            FCOMI ST0, ST1
00C79E28  DDD9                            FSTP ST1
00C79E2A  761A                            JBE 0x00c79e46
00C79E2C  F30F1044241C                    MOVSS XMM0, dword ptr [ESP + 0x1c]
00C79E32  DDD8                            FSTP ST0
00C79E34  F30F5C05F898F900                SUBSS XMM0, dword ptr [0x00f998f8]
00C79E3C  F30F1144241C                    MOVSS dword ptr [ESP + 0x1c], XMM0
00C79E42  D944241C                        FLD float ptr [ESP + 0x1c]
00C79E46  D80D28AF0701                    FMUL float ptr [0x0107af28]
00C79E4C  8B17                            MOV EDX, dword ptr [EDI]
00C79E4E  8B4268                          MOV EAX, dword ptr [EDX + 0x68]
00C79E51  8BCF                            MOV ECX, EDI
00C79E53  D95C241C                        FSTP float ptr [ESP + 0x1c]
00C79E57  FFD0                            CALL EAX
00C79E59  D86C241C                        FSUBR float ptr [ESP + 0x1c]
00C79E5D  8D8C24F0000000                  LEA ECX, [ESP + 0xf0]
00C79E64  D95C241C                        FSTP float ptr [ESP + 0x1c]
00C79E68  E8139DB1FF                      CALL 0x00793b80
00C79E6D  8B44243C                        MOV EAX, dword ptr [ESP + 0x3c]
00C79E71  D944241C                        FLD float ptr [ESP + 0x1c]
00C79E75  8B4C2434                        MOV ECX, dword ptr [ESP + 0x34]
00C79E79  D99C2404010000                  FSTP float ptr [ESP + 0x104]
00C79E80  8B542438                        MOV EDX, dword ptr [ESP + 0x38]
00C79E84  898C24F8000000                  MOV dword ptr [ESP + 0xf8], ECX
00C79E8B  899424FC000000                  MOV dword ptr [ESP + 0xfc], EDX
00C79E92  89842400010000                  MOV dword ptr [ESP + 0x100], EAX
00C79E99  8B451C                          MOV EAX, dword ptr [EBP + 0x1c]
00C79E9C  8BC8                            MOV ECX, EAX
00C79E9E  C1E906                          SHR ECX, 0x6
00C79EA1  80E101                          AND CL, 0x1
00C79EA4  888C241C010000                  MOV byte ptr [ESP + 0x11c], CL
00C79EAB  8BD0                            MOV EDX, EAX
00C79EAD  C1EA09                          SHR EDX, 0x9
00C79EB0  80E201                          AND DL, 0x1
00C79EB3  8894241D010000                  MOV byte ptr [ESP + 0x11d], DL
00C79EBA  8BC8                            MOV ECX, EAX
00C79EBC  C1E90D                          SHR ECX, 0xd
00C79EBF  80E101                          AND CL, 0x1
00C79EC2  888C2474010000                  MOV byte ptr [ESP + 0x174], CL
00C79EC9  F30F10442470                    MOVSS XMM0, dword ptr [ESP + 0x70]
00C79ECF  8BD0                            MOV EDX, EAX
00C79ED1  C1EA04                          SHR EDX, 0x4
00C79ED4  80E201                          AND DL, 0x1
00C79ED7  8BC8                            MOV ECX, EAX
00C79ED9  C1E90F                          SHR ECX, 0xf
00C79EDC  80E101                          AND CL, 0x1
00C79EDF  88942420010000                  MOV byte ptr [ESP + 0x120], DL
00C79EE6  888C241E010000                  MOV byte ptr [ESP + 0x11e], CL
00C79EED  8BD0                            MOV EDX, EAX
00C79EEF  C1EA10                          SHR EDX, 0x10
00C79EF2  80E201                          AND DL, 0x1
00C79EF5  8BC8                            MOV ECX, EAX
00C79EF7  C1E90B                          SHR ECX, 0xb
00C79EFA  80E101                          AND CL, 0x1
00C79EFD  8894241F010000                  MOV byte ptr [ESP + 0x11f], DL
00C79F04  888C2475010000                  MOV byte ptr [ESP + 0x175], CL
00C79F0B  8BD0                            MOV EDX, EAX
00C79F0D  8BC8                            MOV ECX, EAX
00C79F0F  C1EA0C                          SHR EDX, 0xc
00C79F12  C1E911                          SHR ECX, 0x11
00C79F15  80E201                          AND DL, 0x1
00C79F18  80E101                          AND CL, 0x1
00C79F1B  88942476010000                  MOV byte ptr [ESP + 0x176], DL
00C79F22  888C2477010000                  MOV byte ptr [ESP + 0x177], CL
00C79F29  8BD0                            MOV EDX, EAX
00C79F2B  8BC8                            MOV ECX, EAX
00C79F2D  C1E819                          SHR EAX, 0x19
00C79F30  2401                            AND AL, 0x1
00C79F32  C1EA12                          SHR EDX, 0x12
00C79F35  C1E914                          SHR ECX, 0x14
00C79F38  8884247A010000                  MOV byte ptr [ESP + 0x17a], AL
00C79F3F  8B4510                          MOV EAX, dword ptr [EBP + 0x10]
00C79F42  80E201                          AND DL, 0x1
00C79F45  80E101                          AND CL, 0x1
00C79F48  85C0                            TEST EAX, EAX
00C79F4A  89B424F0000000                  MOV dword ptr [ESP + 0xf0], ESI
00C79F51  89BC24F4000000                  MOV dword ptr [ESP + 0xf4], EDI
00C79F58  F30F11842408010000              MOVSS dword ptr [ESP + 0x108], XMM0
00C79F61  88942478010000                  MOV byte ptr [ESP + 0x178], DL
00C79F68  888C2479010000                  MOV byte ptr [ESP + 0x179], CL
00C79F6F  7E32                            JLE 0x00c79fa3
00C79F71  8B750C                          MOV ESI, dword ptr [EBP + 0xc]
00C79F74  8BD8                            MOV EBX, EAX
00C79F76  C644246800                      MOV byte ptr [ESP + 0x68], 0x0
00C79F7B  8B542468                        MOV EDX, dword ptr [ESP + 0x68]
00C79F7F  52                              PUSH EDX
00C79F80  56                              PUSH ESI
00C79F81  8D84249C020000                  LEA EAX, [ESP + 0x29c]
00C79F88  50                              PUSH EAX
00C79F89  8D8C2430010000                  LEA ECX, [ESP + 0x130]
00C79F90  E85BE99AFF                      CALL 0x006288f0
00C79F95  83C608                          ADD ESI, 0x8
00C79F98  83EB01                          SUB EBX, 0x1
00C79F9B  75D9                            JNZ 0x00c79f76
00C79F9D  8B5D14                          MOV EBX, dword ptr [EBP + 0x14]
00C79FA0  8B7508                          MOV ESI, dword ptr [EBP + 0x8]
00C79FA3  8B0D34E01E01                    MOV ECX, dword ptr [0x011ee034]
00C79FA9  8D5618                          LEA EDX, [ESI + 0x18]
00C79FAC  52                              PUSH EDX
00C79FAD  E8FE4B0100                      CALL 0x00c8ebb0
00C79FB2  8BC8                            MOV ECX, EAX
00C79FB4  E8D7998BFF                      CALL 0x00533990
00C79FB9  C1E818                          SHR EAX, 0x18
00C79FBC  2401                            AND AL, 0x1
00C79FBE  837D2000                        CMP dword ptr [EBP + 0x20], 0x0
00C79FC2  88842471010000                  MOV byte ptr [ESP + 0x171], AL
00C79FC9  0F84EC000000                    JZ 0x00c7a0bb
00C79FCF  8D8C2410020000                  LEA ECX, [ESP + 0x210]
00C79FD6  E865D7E5FF                      CALL 0x00ad7740
00C79FDB  8D842410020000                  LEA EAX, [ESP + 0x210]
00C79FE2  50                              PUSH EAX
00C79FE3  8D8C24F4000000                  LEA ECX, [ESP + 0xf4]
00C79FEA  51                              PUSH ECX
00C79FEB  E840B9ECFF                      CALL 0x00b45930
00C79FF0  83C408                          ADD ESP, 0x8
00C79FF3  84C0                            TEST AL, AL
00C79FF5  7572                            JNZ 0x00c7a069
00C79FF7  8D8C2410020000                  LEA ECX, [ESP + 0x210]
00C79FFE  8844241B                        MOV byte ptr [ESP + 0x1b], AL
00C7A002  E899B1B6FF                      CALL 0x007e51a0
00C7A007  8B7008                          MOV ESI, dword ptr [EAX + 0x8]
00C7A00A  8D8C2410020000                  LEA ECX, [ESP + 0x210]
00C7A011  E88AB1B6FF                      CALL 0x007e51a0
00C7A016  83C004                          ADD EAX, 0x4
00C7A019  3BF0                            CMP ESI, EAX
00C7A01B  7449                            JZ 0x00c7a066
00C7A01D  8D4900                          LEA ECX, [ECX]
00C7A020  8B474C                          MOV EAX, dword ptr [EDI + 0x4c]
00C7A023  8B4F48                          MOV ECX, dword ptr [EDI + 0x48]
00C7A026  8D5610                          LEA EDX, [ESI + 0x10]
00C7A029  52                              PUSH EDX
00C7A02A  50                              PUSH EAX
00C7A02B  51                              PUSH ECX
00C7A02C  8D8C24BC020000                  LEA ECX, [ESP + 0x2bc]
00C7A033  E84881FFFF                      CALL 0x00c72180
00C7A038  8B4D20                          MOV ECX, dword ptr [EBP + 0x20]
00C7A03B  8D9424B0020000                  LEA EDX, [ESP + 0x2b0]
00C7A042  52                              PUSH EDX
00C7A043  E848F9FFFF                      CALL 0x00c79990
00C7A048  56                              PUSH ESI
00C7A049  E8E26F86FF                      CALL 0x004e1030
00C7A04E  83C404                          ADD ESP, 0x4
00C7A051  8D8C2410020000                  LEA ECX, [ESP + 0x210]
00C7A058  8BF0                            MOV ESI, EAX
00C7A05A  E841B1B6FF                      CALL 0x007e51a0
00C7A05F  83C004                          ADD EAX, 0x4
00C7A062  3BF0                            CMP ESI, EAX
00C7A064  75BA                            JNZ 0x00c7a020
00C7A066  8B7508                          MOV ESI, dword ptr [EBP + 0x8]
00C7A069  8B842470020000                  MOV EAX, dword ptr [ESP + 0x270]
00C7A070  50                              PUSH EAX
00C7A071  8D8C2468020000                  LEA ECX, [ESP + 0x268]
00C7A078  E84387DDFF                      CALL 0x00a527c0
00C7A07D  8B8C2454020000                  MOV ECX, dword ptr [ESP + 0x254]
00C7A084  51                              PUSH ECX
00C7A085  8D8C244C020000                  LEA ECX, [ESP + 0x24c]
00C7A08C  E82F87DDFF                      CALL 0x00a527c0
00C7A091  8B942438020000                  MOV EDX, dword ptr [ESP + 0x238]
00C7A098  52                              PUSH EDX
00C7A099  8D8C2430020000                  LEA ECX, [ESP + 0x230]
00C7A0A0  E81B87DDFF                      CALL 0x00a527c0
00C7A0A5  8B84241C020000                  MOV EAX, dword ptr [ESP + 0x21c]
00C7A0AC  50                              PUSH EAX
00C7A0AD  8D8C2414020000                  LEA ECX, [ESP + 0x214]
00C7A0B4  E8C786DDFF                      CALL 0x00a52780
00C7A0B9  EB1A                            JMP 0x00c7a0d5
00C7A0BB  8D8C24F0000000                  LEA ECX, [ESP + 0xf0]
00C7A0C2  6A00                            PUSH 0x0
00C7A0C4  51                              PUSH ECX
00C7A0C5  E866B8ECFF                      CALL 0x00b45930
00C7A0CA  83C408                          ADD ESP, 0x8
00C7A0CD  84C0                            TEST AL, AL
00C7A0CF  7504                            JNZ 0x00c7a0d5
00C7A0D1  8844241B                        MOV byte ptr [ESP + 0x1b], AL
00C7A0D5  8B8424C0010000                  MOV EAX, dword ptr [ESP + 0x1c0]
00C7A0DC  85C0                            TEST EAX, EAX
00C7A0DE  7409                            JZ 0x00c7a0e9
00C7A0E0  50                              PUSH EAX
00C7A0E1  E8FAA386FF                      CALL 0x004e44e0
00C7A0E6  83C404                          ADD ESP, 0x4
00C7A0E9  8B842490010000                  MOV EAX, dword ptr [ESP + 0x190]
00C7A0F0  85C0                            TEST EAX, EAX
00C7A0F2  7409                            JZ 0x00c7a0fd
00C7A0F4  50                              PUSH EAX
00C7A0F5  E8E6A386FF                      CALL 0x004e44e0
00C7A0FA  83C404                          ADD ESP, 0x4
00C7A0FD  8B94242C010000                  MOV EDX, dword ptr [ESP + 0x12c]
00C7A104  8B842428010000                  MOV EAX, dword ptr [ESP + 0x128]
00C7A10B  52                              PUSH EDX
00C7A10C  50                              PUSH EAX
00C7A10D  8D8C242C010000                  LEA ECX, [ESP + 0x12c]
00C7A114  E8C74AACFF                      CALL 0x0073ebe0
00C7A119  83BC242C01000001                CMP dword ptr [ESP + 0x12c], 0x1
00C7A121  C784243001000000000000          MOV dword ptr [ESP + 0x130], 0x0
00C7A12C  0F86DB000000                    JBE 0x00c7a20d
00C7A132  8B8C2428010000                  MOV ECX, dword ptr [ESP + 0x128]
00C7A139  51                              PUSH ECX
00C7A13A  E8A1A386FF                      CALL 0x004e44e0
00C7A13F  83C404                          ADD ESP, 0x4
00C7A142  E9C6000000                      JMP 0x00c7a20d
00C7A147  F7451C00002000                  TEST dword ptr [EBP + 0x1c], 0x200000
00C7A14E  756F                            JNZ 0x00c7a1bf
00C7A150  56                              PUSH ESI
00C7A151  E89A6FE8FF                      CALL 0x00b010f0
00C7A156  83C404                          ADD ESP, 0x4
00C7A159  84C0                            TEST AL, AL
00C7A15B  7562                            JNZ 0x00c7a1bf
00C7A15D  8B5518                          MOV EDX, dword ptr [EBP + 0x18]
00C7A160  52                              PUSH EDX
00C7A161  53                              PUSH EBX
00C7A162  56                              PUSH ESI
00C7A163  E8A88BFFFF                      CALL 0x00c72d10
00C7A168  83C40C                          ADD ESP, 0xc
00C7A16B  84C0                            TEST AL, AL
00C7A16D  7550                            JNZ 0x00c7a1bf
00C7A16F  837D2000                        CMP dword ptr [EBP + 0x20], 0x0
00C7A173  8844241B                        MOV byte ptr [ESP + 0x1b], AL
00C7A177  0F8490000000                    JZ 0x00c7a20d
00C7A17D  85FF                            TEST EDI, EDI
00C7A17F  6A00                            PUSH 0x0
00C7A181  6A00                            PUSH 0x0
00C7A183  53                              PUSH EBX
00C7A184  6A3F                            PUSH 0x3f
00C7A186  741D                            JZ 0x00c7a1a5
00C7A188  8B474C                          MOV EAX, dword ptr [EDI + 0x4c]
00C7A18B  8B4F48                          MOV ECX, dword ptr [EDI + 0x48]
00C7A18E  50                              PUSH EAX
00C7A18F  51                              PUSH ECX
00C7A190  8D8C24F8020000                  LEA ECX, [ESP + 0x2f8]
00C7A197  E84480FFFF                      CALL 0x00c721e0
00C7A19C  8D9424E0020000                  LEA EDX, [ESP + 0x2e0]
00C7A1A3  EB5F                            JMP 0x00c7a204
00C7A1A5  6A00                            PUSH 0x0
00C7A1A7  6A00                            PUSH 0x0
00C7A1A9  8D8C2458030000                  LEA ECX, [ESP + 0x358]
00C7A1B0  E82B80FFFF                      CALL 0x00c721e0
00C7A1B5  8D842440030000                  LEA EAX, [ESP + 0x340]
00C7A1BC  50                              PUSH EAX
00C7A1BD  EB46                            JMP 0x00c7a205
00C7A1BF  F7451C00004000                  TEST dword ptr [EBP + 0x1c], 0x400000
00C7A1C6  7445                            JZ 0x00c7a20d
00C7A1C8  8B4D18                          MOV ECX, dword ptr [EBP + 0x18]
00C7A1CB  6A00                            PUSH 0x0
00C7A1CD  51                              PUSH ECX
00C7A1CE  53                              PUSH EBX
00C7A1CF  56                              PUSH ESI
00C7A1D0  E85B90FFFF                      CALL 0x00c73230
00C7A1D5  83C410                          ADD ESP, 0x10
00C7A1D8  84C0                            TEST AL, AL
00C7A1DA  7531                            JNZ 0x00c7a20d
00C7A1DC  837D2000                        CMP dword ptr [EBP + 0x20], 0x0
00C7A1E0  8844241B                        MOV byte ptr [ESP + 0x1b], AL
00C7A1E4  7427                            JZ 0x00c7a20d
00C7A1E6  6A00                            PUSH 0x0
00C7A1E8  6A00                            PUSH 0x0
00C7A1EA  53                              PUSH EBX
00C7A1EB  6A3D                            PUSH 0x3d
00C7A1ED  6A00                            PUSH 0x0
00C7A1EF  6A00                            PUSH 0x0
00C7A1F1  8D8C2428030000                  LEA ECX, [ESP + 0x328]
00C7A1F8  E8E37FFFFF                      CALL 0x00c721e0
00C7A1FD  8D942410030000                  LEA EDX, [ESP + 0x310]
00C7A204  52                              PUSH EDX
00C7A205  8B4D20                          MOV ECX, dword ptr [EBP + 0x20]
00C7A208  E883F7FFFF                      CALL 0x00c79990
00C7A20D  8B0D40A11D01                    MOV ECX, dword ptr [0x011da140]
00C7A213  33C0                            XOR EAX, EAX
00C7A215  3844241B                        CMP byte ptr [ESP + 0x1b], AL
00C7A219  89442458                        MOV dword ptr [ESP + 0x58], EAX
00C7A21D  8944245C                        MOV dword ptr [ESP + 0x5c], EAX
00C7A221  89442460                        MOV dword ptr [ESP + 0x60], EAX
00C7A225  C74424640CB00701                MOV dword ptr [ESP + 0x64], 0x107b00c
00C7A22D  0F8419010000                    JZ 0x00c7a34c
00C7A233  8B5518                          MOV EDX, dword ptr [EBP + 0x18]
00C7A236  8D442458                        LEA EAX, [ESP + 0x58]
00C7A23A  50                              PUSH EAX
00C7A23B  52                              PUSH EDX
00C7A23C  53                              PUSH EBX
00C7A23D  56                              PUSH ESI
00C7A23E  E89D41BCFF                      CALL 0x0083e3e0
00C7A243  84C0                            TEST AL, AL
00C7A245  0F8401010000                    JZ 0x00c7a34c
00C7A24B  8B742458                        MOV ESI, dword ptr [ESP + 0x58]
00C7A24F  3B74245C                        CMP ESI, dword ptr [ESP + 0x5c]
00C7A253  0F84F3000000                    JZ 0x00c7a34c
00C7A259  8DA42400000000                  LEA ESP, [ESP]
00C7A260  33C0                            XOR EAX, EAX
00C7A262  394510                          CMP dword ptr [EBP + 0x10], EAX
00C7A265  7E2B                            JLE 0x00c7a292
00C7A267  8B16                            MOV EDX, dword ptr [ESI]
00C7A269  8DA42400000000                  LEA ESP, [ESP]
00C7A270  8B4D0C                          MOV ECX, dword ptr [EBP + 0xc]
00C7A273  8B1CC1                          MOV EBX, dword ptr [ECX + EAX*0x8]
00C7A276  3BDA                            CMP EBX, EDX
00C7A278  750D                            JNZ 0x00c7a287
00C7A27A  8B4CC104                        MOV ECX, dword ptr [ECX + EAX*0x8 + 0x4]
00C7A27E  3B4E04                          CMP ECX, dword ptr [ESI + 0x4]
00C7A281  0F84B5000000                    JZ 0x00c7a33c
00C7A287  83C001                          ADD EAX, 0x1
00C7A28A  3B4510                          CMP EAX, dword ptr [EBP + 0x10]
00C7A28D  7CE1                            JL 0x00c7a270
00C7A28F  8B5D14                          MOV EBX, dword ptr [EBP + 0x14]
00C7A292  8B4D20                          MOV ECX, dword ptr [EBP + 0x20]
00C7A295  33C0                            XOR EAX, EAX
00C7A297  3BC8                            CMP ECX, EAX
00C7A299  0F8496000000                    JZ 0x00c7a335
00C7A29F  3BF8                            CMP EDI, EAX
00C7A2A1  0F2803                          MOVAPS XMM0, xmmword ptr [EBX]
00C7A2A4  744E                            JZ 0x00c7a2f4
00C7A2A6  8B5748                          MOV EDX, dword ptr [EDI + 0x48]
00C7A2A9  8B474C                          MOV EAX, dword ptr [EDI + 0x4c]
00C7A2AC  899424B0000000                  MOV dword ptr [ESP + 0xb0], EDX
00C7A2B3  8B16                            MOV EDX, dword ptr [ESI]
00C7A2B5  899424B8000000                  MOV dword ptr [ESP + 0xb8], EDX
00C7A2BC  898424B4000000                  MOV dword ptr [ESP + 0xb4], EAX
00C7A2C3  8B4604                          MOV EAX, dword ptr [ESI + 0x4]
00C7A2C6  8D942490000000                  LEA EDX, [ESP + 0x90]
00C7A2CD  52                              PUSH EDX
00C7A2CE  C784249400000011000000          MOV dword ptr [ESP + 0x94], 0x11
00C7A2D9  0F298424A4000000                MOVAPS xmmword ptr [ESP + 0xa4], XMM0
00C7A2E1  898424C0000000                  MOV dword ptr [ESP + 0xc0], EAX
00C7A2E8  E8A3F6FFFF                      CALL 0x00c79990
00C7A2ED  C644241B00                      MOV byte ptr [ESP + 0x1b], 0x0
00C7A2F2  EB4B                            JMP 0x00c7a33f
00C7A2F4  8B5604                          MOV EDX, dword ptr [ESI + 0x4]
00C7A2F7  898424E0000000                  MOV dword ptr [ESP + 0xe0], EAX
00C7A2FE  898424E4000000                  MOV dword ptr [ESP + 0xe4], EAX
00C7A305  8B06                            MOV EAX, dword ptr [ESI]
00C7A307  898424E8000000                  MOV dword ptr [ESP + 0xe8], EAX
00C7A30E  8D8424C0000000                  LEA EAX, [ESP + 0xc0]
00C7A315  50                              PUSH EAX
00C7A316  C78424C400000011000000          MOV dword ptr [ESP + 0xc4], 0x11
00C7A321  0F298424D4000000                MOVAPS xmmword ptr [ESP + 0xd4], XMM0
00C7A329  899424F0000000                  MOV dword ptr [ESP + 0xf0], EDX
00C7A330  E85BF6FFFF                      CALL 0x00c79990
00C7A335  C644241B00                      MOV byte ptr [ESP + 0x1b], 0x0
00C7A33A  EB03                            JMP 0x00c7a33f
00C7A33C  8B5D14                          MOV EBX, dword ptr [EBP + 0x14]
00C7A33F  83C608                          ADD ESI, 0x8
00C7A342  3B74245C                        CMP ESI, dword ptr [ESP + 0x5c]
00C7A346  0F8514FFFFFF                    JNZ 0x00c7a260
00C7A34C  8B4C246C                        MOV ECX, dword ptr [ESP + 0x6c]
00C7A350  85C9                            TEST ECX, ECX
00C7A352  0F84C1000000                    JZ 0x00c7a419
00C7A358  807C241B00                      CMP byte ptr [ESP + 0x1b], 0x0
00C7A35D  0F84B6000000                    JZ 0x00c7a419
00C7A363  8B451C                          MOV EAX, dword ptr [EBP + 0x1c]
00C7A366  A900080000                      TEST EAX, 0x800
00C7A36B  7437                            JZ 0x00c7a3a4
00C7A36D  0F2803                          MOVAPS XMM0, xmmword ptr [EBX]
00C7A370  6A27                            PUSH 0x27
00C7A372  0F29442474                      MOVAPS xmmword ptr [ESP + 0x74], XMM0
00C7A377  D944247C                        FLD float ptr [ESP + 0x7c]
00C7A37B  6A00                            PUSH 0x0
00C7A37D  83EC08                          SUB ESP, 0x8
00C7A380  D95C2404                        FSTP float ptr [ESP + 0x4]
00C7A384  0F29442450                      MOVAPS xmmword ptr [ESP + 0x50], XMM0
00C7A389  D9442450                        FLD float ptr [ESP + 0x50]
00C7A38D  D91C24                          FSTP float ptr [ESP]
00C7A390  E86B1BFFFF                      CALL 0x00c6bf00
00C7A395  50                              PUSH EAX
00C7A396  E89531E8FF                      CALL 0x00afd530
00C7A39B  83C404                          ADD ESP, 0x4
00C7A39E  8844241B                        MOV byte ptr [ESP + 0x1b], AL
00C7A3A2  EB75                            JMP 0x00c7a419
00C7A3A4  A900100000                      TEST EAX, 0x1000
00C7A3A9  7437                            JZ 0x00c7a3e2
00C7A3AB  0F2803                          MOVAPS XMM0, xmmword ptr [EBX]
00C7A3AE  6A27                            PUSH 0x27
00C7A3B0  0F29442474                      MOVAPS xmmword ptr [ESP + 0x74], XMM0
00C7A3B5  D944247C                        FLD float ptr [ESP + 0x7c]
00C7A3B9  6A00                            PUSH 0x0
00C7A3BB  83EC08                          SUB ESP, 0x8
00C7A3BE  D95C2404                        FSTP float ptr [ESP + 0x4]
00C7A3C2  0F29442450                      MOVAPS xmmword ptr [ESP + 0x50], XMM0
00C7A3C7  D9442450                        FLD float ptr [ESP + 0x50]
00C7A3CB  D91C24                          FSTP float ptr [ESP]
00C7A3CE  E82D1BFFFF                      CALL 0x00c6bf00
00C7A3D3  50                              PUSH EAX
00C7A3D4  E89731E8FF                      CALL 0x00afd570
00C7A3D9  83C404                          ADD ESP, 0x4
00C7A3DC  8844241B                        MOV byte ptr [ESP + 0x1b], AL
00C7A3E0  EB37                            JMP 0x00c7a419
00C7A3E2  A900000200                      TEST EAX, 0x20000
00C7A3E7  7430                            JZ 0x00c7a419
00C7A3E9  0F2803                          MOVAPS XMM0, xmmword ptr [EBX]
00C7A3EC  6A08                            PUSH 0x8
00C7A3EE  0F29442474                      MOVAPS xmmword ptr [ESP + 0x74], XMM0
00C7A3F3  D944247C                        FLD float ptr [ESP + 0x7c]
00C7A3F7  6A00                            PUSH 0x0
00C7A3F9  83EC08                          SUB ESP, 0x8
00C7A3FC  D95C2404                        FSTP float ptr [ESP + 0x4]
00C7A400  0F29442450                      MOVAPS xmmword ptr [ESP + 0x50], XMM0
00C7A405  D9442450                        FLD float ptr [ESP + 0x50]
00C7A409  D91C24                          FSTP float ptr [ESP]
00C7A40C  E8EF1AFFFF                      CALL 0x00c6bf00
00C7A411  83F806                          CMP EAX, 0x6
00C7A414  0F9444241B                      SETZ byte ptr [ESP + 0x1b]
00C7A419  8B442458                        MOV EAX, dword ptr [ESP + 0x58]
00C7A41D  85C0                            TEST EAX, EAX
00C7A41F  7409                            JZ 0x00c7a42a
00C7A421  50                              PUSH EAX
00C7A422  E8B9A086FF                      CALL 0x004e44e0
00C7A427  83C404                          ADD ESP, 0x4
00C7A42A  8A44241B                        MOV AL, byte ptr [ESP + 0x1b]
00C7A42E  5F                              POP EDI
00C7A42F  5E                              POP ESI
00C7A430  5B                              POP EBX
00C7A431  8BE5                            MOV ESP, EBP
00C7A433  5D                              POP EBP
00C7A434  C3                              RET
