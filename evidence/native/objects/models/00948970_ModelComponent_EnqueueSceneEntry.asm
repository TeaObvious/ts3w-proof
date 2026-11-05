; PC1.67 original Ghidra-owned instruction listing.
; Analyst-assigned name: ModelComponent_EnqueueSceneEntry
; Inclusive owned ranges: 00948970..00948A91
; Paired C retains actual provisional types; original instructions govern physical ABI.

00948970  55                              PUSH EBP
00948971  8BEC                            MOV EBP, ESP
00948973  83E4F0                          AND ESP, 0xfffffff0
00948976  81ECAC000000                    SUB ESP, 0xac
0094897C  8B5510                          MOV EDX, dword ptr [EBP + 0x10]
0094897F  56                              PUSH ESI
00948980  8BF1                            MOV ESI, ECX
00948982  8B4604                          MOV EAX, dword ptr [ESI + 0x4]
00948985  8B4808                          MOV ECX, dword ptr [EAX + 0x8]
00948988  8B400C                          MOV EAX, dword ptr [EAX + 0xc]
0094898B  8944246C                        MOV dword ptr [ESP + 0x6c], EAX
0094898F  8B4508                          MOV EAX, dword ptr [EBP + 0x8]
00948992  89442470                        MOV dword ptr [ESP + 0x70], EAX
00948996  894C2468                        MOV dword ptr [ESP + 0x68], ECX
0094899A  8B4D0C                          MOV ECX, dword ptr [EBP + 0xc]
0094899D  8D442460                        LEA EAX, [ESP + 0x60]
009489A1  50                              PUSH EAX
009489A2  C74424648B393EF3                MOV dword ptr [ESP + 0x64], 0xf33e398b
009489AA  C744246800000000                MOV dword ptr [ESP + 0x68], 0x0
009489B2  894C247C                        MOV dword ptr [ESP + 0x7c], ECX
009489B6  89942480000000                  MOV dword ptr [ESP + 0x80], EDX
009489BD  E8BEA9D4FF                      CALL 0x00693380
009489C2  83C404                          ADD ESP, 0x4
009489C5  817E5400000040                  CMP dword ptr [ESI + 0x54], 0x40000000
009489CC  0F858F000000                    JNZ 0x00948a61
009489D2  8B4604                          MOV EAX, dword ptr [ESI + 0x4]
009489D5  8B4808                          MOV ECX, dword ptr [EAX + 0x8]
009489D8  8B400C                          MOV EAX, dword ptr [EAX + 0xc]
009489DB  894C2418                        MOV dword ptr [ESP + 0x18], ECX
009489DF  8944241C                        MOV dword ptr [ESP + 0x1c], EAX
009489E3  B820000000                      MOV EAX, 0x20
009489E8  8D4C2410                        LEA ECX, [ESP + 0x10]
009489EC  51                              PUSH ECX
009489ED  C7442414C48B8704                MOV dword ptr [ESP + 0x14], 0x4878bc4
009489F5  C744241800000000                MOV dword ptr [ESP + 0x18], 0x0
009489FD  89442424                        MOV dword ptr [ESP + 0x24], EAX
00948A01  89442428                        MOV dword ptr [ESP + 0x28], EAX
00948A05  E876A9D4FF                      CALL 0x00693380
00948A0A  8B4C2418                        MOV ECX, dword ptr [ESP + 0x18]
00948A0E  83C404                          ADD ESP, 0x4
00948A11  85C9                            TEST ECX, ECX
00948A13  740B                            JZ 0x00948a20
00948A15  8B11                            MOV EDX, dword ptr [ECX]
00948A17  8B12                            MOV EDX, dword ptr [EDX]
00948A19  8D442420                        LEA EAX, [ESP + 0x20]
00948A1D  50                              PUSH EAX
00948A1E  FFD2                            CALL EDX
00948A20  8B4604                          MOV EAX, dword ptr [ESI + 0x4]
00948A23  8B4808                          MOV ECX, dword ptr [EAX + 0x8]
00948A26  8B400C                          MOV EAX, dword ptr [EAX + 0xc]
00948A29  8944241C                        MOV dword ptr [ESP + 0x1c], EAX
00948A2D  8D442410                        LEA EAX, [ESP + 0x10]
00948A31  50                              PUSH EAX
00948A32  C744241455D2CC0D                MOV dword ptr [ESP + 0x14], 0xdccd255
00948A3A  C744241800000000                MOV dword ptr [ESP + 0x18], 0x0
00948A42  894C241C                        MOV dword ptr [ESP + 0x1c], ECX
00948A46  E835A9D4FF                      CALL 0x00693380
00948A4B  8B4C2418                        MOV ECX, dword ptr [ESP + 0x18]
00948A4F  83C404                          ADD ESP, 0x4
00948A52  85C9                            TEST ECX, ECX
00948A54  740B                            JZ 0x00948a61
00948A56  8B11                            MOV EDX, dword ptr [ECX]
00948A58  8B12                            MOV EDX, dword ptr [EDX]
00948A5A  8D442420                        LEA EAX, [ESP + 0x20]
00948A5E  50                              PUSH EAX
00948A5F  FFD2                            CALL EDX
00948A61  0FB68681000000                  MOVZX EAX, byte ptr [ESI + 0x81]
00948A68  C0E802                          SHR AL, 0x2
00948A6B  8BCE                            MOV ECX, ESI
00948A6D  2501FFFFFF                      AND EAX, 0xffffff01
00948A72  50                              PUSH EAX
00948A73  E818FEFFFF                      CALL 0x00948890
00948A78  8B4C2464                        MOV ECX, dword ptr [ESP + 0x64]
00948A7C  85C9                            TEST ECX, ECX
00948A7E  740B                            JZ 0x00948a8b
00948A80  8B11                            MOV EDX, dword ptr [ECX]
00948A82  8B12                            MOV EDX, dword ptr [EDX]
00948A84  8D442470                        LEA EAX, [ESP + 0x70]
00948A88  50                              PUSH EAX
00948A89  FFD2                            CALL EDX
00948A8B  5E                              POP ESI
00948A8C  8BE5                            MOV ESP, EBP
00948A8E  5D                              POP EBP
00948A8F  C20C00                          RET 0xc
