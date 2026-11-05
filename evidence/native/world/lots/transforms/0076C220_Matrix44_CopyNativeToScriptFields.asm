; PC1.67 original Ghidra-owned instruction listing.
; Analyst-assigned name: Matrix44_CopyNativeToScriptFields
; Inclusive owned ranges: 0076C220..0076C359
; Paired C retains actual provisional types; original instructions govern physical ABI.

0076C220  55                              PUSH EBP
0076C221  8BEC                            MOV EBP, ESP
0076C223  83E4F0                          AND ESP, 0xfffffff0
0076C226  83EC10                          SUB ESP, 0x10
0076C229  8B450C                          MOV EAX, dword ptr [EBP + 0xc]
0076C22C  0F2800                          MOVAPS XMM0, xmmword ptr [EAX]
0076C22F  8B4D08                          MOV ECX, dword ptr [EBP + 0x8]
0076C232  0F290424                        MOVAPS xmmword ptr [ESP], XMM0
0076C236  F30F100424                      MOVSS XMM0, dword ptr [ESP]
0076C23B  F30F1101                        MOVSS dword ptr [ECX], XMM0
0076C23F  0F2800                          MOVAPS XMM0, xmmword ptr [EAX]
0076C242  0F290424                        MOVAPS xmmword ptr [ESP], XMM0
0076C246  F30F10442404                    MOVSS XMM0, dword ptr [ESP + 0x4]
0076C24C  F30F114104                      MOVSS dword ptr [ECX + 0x4], XMM0
0076C251  0F2800                          MOVAPS XMM0, xmmword ptr [EAX]
0076C254  0F290424                        MOVAPS xmmword ptr [ESP], XMM0
0076C258  F30F10442408                    MOVSS XMM0, dword ptr [ESP + 0x8]
0076C25E  F30F114108                      MOVSS dword ptr [ECX + 0x8], XMM0
0076C263  0F2800                          MOVAPS XMM0, xmmword ptr [EAX]
0076C266  0F290424                        MOVAPS xmmword ptr [ESP], XMM0
0076C26A  F30F1044240C                    MOVSS XMM0, dword ptr [ESP + 0xc]
0076C270  F30F11410C                      MOVSS dword ptr [ECX + 0xc], XMM0
0076C275  0F284010                        MOVAPS XMM0, xmmword ptr [EAX + 0x10]
0076C279  0F290424                        MOVAPS xmmword ptr [ESP], XMM0
0076C27D  F30F100424                      MOVSS XMM0, dword ptr [ESP]
0076C282  F30F114110                      MOVSS dword ptr [ECX + 0x10], XMM0
0076C287  0F284010                        MOVAPS XMM0, xmmword ptr [EAX + 0x10]
0076C28B  0F290424                        MOVAPS xmmword ptr [ESP], XMM0
0076C28F  F30F10442404                    MOVSS XMM0, dword ptr [ESP + 0x4]
0076C295  F30F114114                      MOVSS dword ptr [ECX + 0x14], XMM0
0076C29A  0F284010                        MOVAPS XMM0, xmmword ptr [EAX + 0x10]
0076C29E  0F290424                        MOVAPS xmmword ptr [ESP], XMM0
0076C2A2  F30F10442408                    MOVSS XMM0, dword ptr [ESP + 0x8]
0076C2A8  F30F114118                      MOVSS dword ptr [ECX + 0x18], XMM0
0076C2AD  0F284010                        MOVAPS XMM0, xmmword ptr [EAX + 0x10]
0076C2B1  0F290424                        MOVAPS xmmword ptr [ESP], XMM0
0076C2B5  F30F1044240C                    MOVSS XMM0, dword ptr [ESP + 0xc]
0076C2BB  F30F11411C                      MOVSS dword ptr [ECX + 0x1c], XMM0
0076C2C0  0F284020                        MOVAPS XMM0, xmmword ptr [EAX + 0x20]
0076C2C4  0F290424                        MOVAPS xmmword ptr [ESP], XMM0
0076C2C8  F30F100424                      MOVSS XMM0, dword ptr [ESP]
0076C2CD  F30F114120                      MOVSS dword ptr [ECX + 0x20], XMM0
0076C2D2  0F284020                        MOVAPS XMM0, xmmword ptr [EAX + 0x20]
0076C2D6  0F290424                        MOVAPS xmmword ptr [ESP], XMM0
0076C2DA  F30F10442404                    MOVSS XMM0, dword ptr [ESP + 0x4]
0076C2E0  F30F114124                      MOVSS dword ptr [ECX + 0x24], XMM0
0076C2E5  0F284020                        MOVAPS XMM0, xmmword ptr [EAX + 0x20]
0076C2E9  0F290424                        MOVAPS xmmword ptr [ESP], XMM0
0076C2ED  F30F10442408                    MOVSS XMM0, dword ptr [ESP + 0x8]
0076C2F3  F30F114128                      MOVSS dword ptr [ECX + 0x28], XMM0
0076C2F8  0F284020                        MOVAPS XMM0, xmmword ptr [EAX + 0x20]
0076C2FC  0F290424                        MOVAPS xmmword ptr [ESP], XMM0
0076C300  F30F1044240C                    MOVSS XMM0, dword ptr [ESP + 0xc]
0076C306  F30F11412C                      MOVSS dword ptr [ECX + 0x2c], XMM0
0076C30B  0F284030                        MOVAPS XMM0, xmmword ptr [EAX + 0x30]
0076C30F  0F290424                        MOVAPS xmmword ptr [ESP], XMM0
0076C313  F30F100424                      MOVSS XMM0, dword ptr [ESP]
0076C318  F30F114130                      MOVSS dword ptr [ECX + 0x30], XMM0
0076C31D  0F284030                        MOVAPS XMM0, xmmword ptr [EAX + 0x30]
0076C321  0F290424                        MOVAPS xmmword ptr [ESP], XMM0
0076C325  F30F10442404                    MOVSS XMM0, dword ptr [ESP + 0x4]
0076C32B  F30F114134                      MOVSS dword ptr [ECX + 0x34], XMM0
0076C330  0F284030                        MOVAPS XMM0, xmmword ptr [EAX + 0x30]
0076C334  0F290424                        MOVAPS xmmword ptr [ESP], XMM0
0076C338  F30F10442408                    MOVSS XMM0, dword ptr [ESP + 0x8]
0076C33E  F30F114138                      MOVSS dword ptr [ECX + 0x38], XMM0
0076C343  0F284030                        MOVAPS XMM0, xmmword ptr [EAX + 0x30]
0076C347  0F290424                        MOVAPS xmmword ptr [ESP], XMM0
0076C34B  F30F1044240C                    MOVSS XMM0, dword ptr [ESP + 0xc]
0076C351  F30F11413C                      MOVSS dword ptr [ECX + 0x3c], XMM0
0076C356  8BE5                            MOV ESP, EBP
0076C358  5D                              POP EBP
0076C359  C3                              RET
