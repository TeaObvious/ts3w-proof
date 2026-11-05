; PC1.67 original owned Listing; original bytes checked against the reference file.
; Name: SimBuilder_SetFacialBlend
; Ghidra-owned ranges (inclusive): 005E3980..005E3B9E
; Gaps are excluded; C projection and return-register limitations are documented in the paired file.

005E3980  83EC1C                          SUB ESP, 0x1c
005E3983  8B8108020000                    MOV EAX, dword ptr [ECX + 0x208]
005E3989  53                              PUSH EBX
005E398A  8D9908020000                    LEA EBX, [ECX + 0x208]
005E3990  3BC3                            CMP EAX, EBX
005E3992  56                              PUSH ESI
005E3993  57                              PUSH EDI
005E3994  8B7C242C                        MOV EDI, dword ptr [ESP + 0x2c]
005E3998  894C240C                        MOV dword ptr [ESP + 0xc], ECX
005E399C  7429                            JZ 0x005e39c7
005E399E  8B17                            MOV EDX, dword ptr [EDI]
005E39A0  395008                          CMP dword ptr [EAX + 0x8], EDX
005E39A3  751C                            JNZ 0x005e39c1
005E39A5  8B7010                          MOV ESI, dword ptr [EAX + 0x10]
005E39A8  3B7708                          CMP ESI, dword ptr [EDI + 0x8]
005E39AB  7514                            JNZ 0x005e39c1
005E39AD  8B7014                          MOV ESI, dword ptr [EAX + 0x14]
005E39B0  3B770C                          CMP ESI, dword ptr [EDI + 0xc]
005E39B3  750C                            JNZ 0x005e39c1
005E39B5  8B700C                          MOV ESI, dword ptr [EAX + 0xc]
005E39B8  3B7704                          CMP ESI, dword ptr [EDI + 0x4]
005E39BB  0F848A010000                    JZ 0x005e3b4b
005E39C1  8B00                            MOV EAX, dword ptr [EAX]
005E39C3  3BC3                            CMP EAX, EBX
005E39C5  75D9                            JNZ 0x005e39a0
005E39C7  55                              PUSH EBP
005E39C8  8B2B                            MOV EBP, dword ptr [EBX]
005E39CA  33C0                            XOR EAX, EAX
005E39CC  68E7000000                      PUSH 0xe7
005E39D1  688899F900                      PUSH 0xf99988
005E39D6  50                              PUSH EAX
005E39D7  89442420                        MOV dword ptr [ESP + 0x20], EAX
005E39DB  89442424                        MOV dword ptr [ESP + 0x24], EAX
005E39DF  89442428                        MOV dword ptr [ESP + 0x28], EAX
005E39E3  8944242C                        MOV dword ptr [ESP + 0x2c], EAX
005E39E7  50                              PUSH EAX
005E39E8  89442438                        MOV dword ptr [ESP + 0x38], EAX
005E39EC  8B4308                          MOV EAX, dword ptr [EBX + 0x8]
005E39EF  50                              PUSH EAX
005E39F0  6A20                            PUSH 0x20
005E39F2  E8090BF0FF                      CALL 0x004e4500
005E39F7  8BF0                            MOV ESI, EAX
005E39F9  8D4608                          LEA EAX, [ESI + 0x8]
005E39FC  83C418                          ADD ESP, 0x18
005E39FF  85C0                            TEST EAX, EAX
005E3A01  745E                            JZ 0x005e3a61
005E3A03  8B4C2414                        MOV ECX, dword ptr [ESP + 0x14]
005E3A07  8908                            MOV dword ptr [EAX], ECX
005E3A09  8B542418                        MOV EDX, dword ptr [ESP + 0x18]
005E3A0D  895004                          MOV dword ptr [EAX + 0x4], EDX
005E3A10  8B4C241C                        MOV ECX, dword ptr [ESP + 0x1c]
005E3A14  894808                          MOV dword ptr [EAX + 0x8], ECX
005E3A17  8B542420                        MOV EDX, dword ptr [ESP + 0x20]
005E3A1B  89500C                          MOV dword ptr [EAX + 0xc], EDX
005E3A1E  F30F10442424                    MOVSS XMM0, dword ptr [ESP + 0x24]
005E3A24  F30F114010                      MOVSS dword ptr [EAX + 0x10], XMM0
005E3A29  83C014                          ADD EAX, 0x14
005E3A2C  C70000000000                    MOV dword ptr [EAX], 0x0
005E3A32  8B0D844C1D01                    MOV ECX, dword ptr [0x011d4c84]
005E3A38  85C9                            TEST ECX, ECX
005E3A3A  89442430                        MOV dword ptr [ESP + 0x30], EAX
005E3A3E  7421                            JZ 0x005e3a61
005E3A40  8B01                            MOV EAX, dword ptr [ECX]
005E3A42  8B4038                          MOV EAX, dword ptr [EAX + 0x38]
005E3A45  6A00                            PUSH 0x0
005E3A47  6A00                            PUSH 0x0
005E3A49  6A01                            PUSH 0x1
005E3A4B  68A0B3D400                      PUSH 0xd4b3a0
005E3A50  68D0565E00                      PUSH 0x5e56d0
005E3A55  8D54243C                        LEA EDX, [ESP + 0x3c]
005E3A59  52                              PUSH EDX
005E3A5A  8B542448                        MOV EDX, dword ptr [ESP + 0x48]
005E3A5E  52                              PUSH EDX
005E3A5F  FFD0                            CALL EAX
005E3A61  892E                            MOV dword ptr [ESI], EBP
005E3A63  8B4D04                          MOV ECX, dword ptr [EBP + 0x4]
005E3A66  894E04                          MOV dword ptr [ESI + 0x4], ECX
005E3A69  8B5504                          MOV EDX, dword ptr [EBP + 0x4]
005E3A6C  8932                            MOV dword ptr [EDX], ESI
005E3A6E  897504                          MOV dword ptr [EBP + 0x4], ESI
005E3A71  8B442428                        MOV EAX, dword ptr [ESP + 0x28]
005E3A75  85C0                            TEST EAX, EAX
005E3A77  5D                              POP EBP
005E3A78  743F                            JZ 0x005e3ab9
005E3A7A  8B0D844C1D01                    MOV ECX, dword ptr [0x011d4c84]
005E3A80  85C9                            TEST ECX, ECX
005E3A82  7411                            JZ 0x005e3a95
005E3A84  8B11                            MOV EDX, dword ptr [ECX]
005E3A86  8B523C                          MOV EDX, dword ptr [EDX + 0x3c]
005E3A89  68A0B3D400                      PUSH 0xd4b3a0
005E3A8E  8D442428                        LEA EAX, [ESP + 0x28]
005E3A92  50                              PUSH EAX
005E3A93  FFD2                            CALL EDX
005E3A95  8B442424                        MOV EAX, dword ptr [ESP + 0x24]
005E3A99  85C0                            TEST EAX, EAX
005E3A9B  741C                            JZ 0x005e3ab9
005E3A9D  8B4C2424                        MOV ECX, dword ptr [ESP + 0x24]
005E3AA1  F6C103                          TEST CL, 0x3
005E3AA4  7513                            JNZ 0x005e3ab9
005E3AA6  8B4C2424                        MOV ECX, dword ptr [ESP + 0x24]
005E3AAA  8B11                            MOV EDX, dword ptr [ECX]
005E3AAC  8B4204                          MOV EAX, dword ptr [EDX + 0x4]
005E3AAF  FFD0                            CALL EAX
005E3AB1  C744242400000000                MOV dword ptr [ESP + 0x24], 0x0
005E3AB9  8B33                            MOV ESI, dword ptr [EBX]
005E3ABB  8B0D844C1D01                    MOV ECX, dword ptr [0x011d4c84]
005E3AC1  83C608                          ADD ESI, 0x8
005E3AC4  85C9                            TEST ECX, ECX
005E3AC6  7422                            JZ 0x005e3aea
005E3AC8  8B11                            MOV EDX, dword ptr [ECX]
005E3ACA  8B5234                          MOV EDX, dword ptr [EDX + 0x34]
005E3ACD  6A01                            PUSH 0x1
005E3ACF  6A00                            PUSH 0x0
005E3AD1  68A0B3D400                      PUSH 0xd4b3a0
005E3AD6  6A00                            PUSH 0x0
005E3AD8  6A00                            PUSH 0x0
005E3ADA  8D4614                          LEA EAX, [ESI + 0x14]
005E3ADD  50                              PUSH EAX
005E3ADE  686A3C5903                      PUSH 0x3593c6a
005E3AE3  57                              PUSH EDI
005E3AE4  FFD2                            CALL EDX
005E3AE6  84C0                            TEST AL, AL
005E3AE8  757E                            JNZ 0x005e3b68
005E3AEA  8B1B                            MOV EBX, dword ptr [EBX]
005E3AEC  8B4304                          MOV EAX, dword ptr [EBX + 0x4]
005E3AEF  8B0B                            MOV ECX, dword ptr [EBX]
005E3AF1  8908                            MOV dword ptr [EAX], ECX
005E3AF3  8B13                            MOV EDX, dword ptr [EBX]
005E3AF5  8B4304                          MOV EAX, dword ptr [EBX + 0x4]
005E3AF8  8D731C                          LEA ESI, [EBX + 0x1c]
005E3AFB  894204                          MOV dword ptr [EDX + 0x4], EAX
005E3AFE  8B0E                            MOV ECX, dword ptr [ESI]
005E3B00  85C9                            TEST ECX, ECX
005E3B02  7433                            JZ 0x005e3b37
005E3B04  8B0D844C1D01                    MOV ECX, dword ptr [0x011d4c84]
005E3B0A  85C9                            TEST ECX, ECX
005E3B0C  740D                            JZ 0x005e3b1b
005E3B0E  8B11                            MOV EDX, dword ptr [ECX]
005E3B10  8B423C                          MOV EAX, dword ptr [EDX + 0x3c]
005E3B13  68A0B3D400                      PUSH 0xd4b3a0
005E3B18  56                              PUSH ESI
005E3B19  FFD0                            CALL EAX
005E3B1B  8B0E                            MOV ECX, dword ptr [ESI]
005E3B1D  85C9                            TEST ECX, ECX
005E3B1F  7416                            JZ 0x005e3b37
005E3B21  8B16                            MOV EDX, dword ptr [ESI]
005E3B23  F6C203                          TEST DL, 0x3
005E3B26  750F                            JNZ 0x005e3b37
005E3B28  8B0E                            MOV ECX, dword ptr [ESI]
005E3B2A  8B01                            MOV EAX, dword ptr [ECX]
005E3B2C  8B5004                          MOV EDX, dword ptr [EAX + 0x4]
005E3B2F  FFD2                            CALL EDX
005E3B31  C70600000000                    MOV dword ptr [ESI], 0x0
005E3B37  53                              PUSH EBX
005E3B38  E8A309F0FF                      CALL 0x004e44e0
005E3B3D  83C404                          ADD ESP, 0x4
005E3B40  5F                              POP EDI
005E3B41  5E                              POP ESI
005E3B42  32C0                            XOR AL, AL
005E3B44  5B                              POP EBX
005E3B45  83C41C                          ADD ESP, 0x1c
005E3B48  C20800                          RET 0x8
005E3B4B  F30F10442430                    MOVSS XMM0, dword ptr [ESP + 0x30]
005E3B51  5F                              POP EDI
005E3B52  F30F114018                      MOVSS dword ptr [EAX + 0x18], XMM0
005E3B57  81491C00500000                  OR dword ptr [ECX + 0x1c], 0x5000
005E3B5E  5E                              POP ESI
005E3B5F  B001                            MOV AL, 0x1
005E3B61  5B                              POP EBX
005E3B62  83C41C                          ADD ESP, 0x1c
005E3B65  C20800                          RET 0x8
005E3B68  8B07                            MOV EAX, dword ptr [EDI]
005E3B6A  F30F10442430                    MOVSS XMM0, dword ptr [ESP + 0x30]
005E3B70  8906                            MOV dword ptr [ESI], EAX
005E3B72  8B4F04                          MOV ECX, dword ptr [EDI + 0x4]
005E3B75  894E04                          MOV dword ptr [ESI + 0x4], ECX
005E3B78  8B5708                          MOV EDX, dword ptr [EDI + 0x8]
005E3B7B  895608                          MOV dword ptr [ESI + 0x8], EDX
005E3B7E  8B470C                          MOV EAX, dword ptr [EDI + 0xc]
005E3B81  89460C                          MOV dword ptr [ESI + 0xc], EAX
005E3B84  8B44240C                        MOV EAX, dword ptr [ESP + 0xc]
005E3B88  5F                              POP EDI
005E3B89  F30F114610                      MOVSS dword ptr [ESI + 0x10], XMM0
005E3B8E  81481C00500000                  OR dword ptr [EAX + 0x1c], 0x5000
005E3B95  5E                              POP ESI
005E3B96  B001                            MOV AL, 0x1
005E3B98  5B                              POP EBX
005E3B99  83C41C                          ADD ESP, 0x1c
005E3B9C  C20800                          RET 0x8
