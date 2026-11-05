; PC1.67 original Ghidra-owned instruction listing.
; Analyst-assigned name: ModelComponent_PublishRenderFlagsOverride
; Inclusive owned ranges: 00948B00..00948B60
; Paired C retains actual provisional types; original instructions govern physical ABI.

00948B00  55                              PUSH EBP
00948B01  8BEC                            MOV EBP, ESP
00948B03  83E4F0                          AND ESP, 0xfffffff0
00948B06  8B5150                          MOV EDX, dword ptr [ECX + 0x50]
00948B09  83EC50                          SUB ESP, 0x50
00948B0C  83FAFF                          CMP EDX, -0x1
00948B0F  744C                            JZ 0x00948b5d
00948B11  8B4104                          MOV EAX, dword ptr [ECX + 0x4]
00948B14  8B4808                          MOV ECX, dword ptr [EAX + 0x8]
00948B17  8B400C                          MOV EAX, dword ptr [EAX + 0xc]
00948B1A  8944240C                        MOV dword ptr [ESP + 0xc], EAX
00948B1E  8D0424                          LEA EAX, [ESP]
00948B21  50                              PUSH EAX
00948B22  C7442404C48B8704                MOV dword ptr [ESP + 0x4], 0x4878bc4
00948B2A  C744240800000000                MOV dword ptr [ESP + 0x8], 0x0
00948B32  894C240C                        MOV dword ptr [ESP + 0xc], ECX
00948B36  C744241400FCFF7F                MOV dword ptr [ESP + 0x14], 0x7ffffc00
00948B3E  89542418                        MOV dword ptr [ESP + 0x18], EDX
00948B42  E839A8D4FF                      CALL 0x00693380
00948B47  8B4C2408                        MOV ECX, dword ptr [ESP + 0x8]
00948B4B  83C404                          ADD ESP, 0x4
00948B4E  85C9                            TEST ECX, ECX
00948B50  740B                            JZ 0x00948b5d
00948B52  8B11                            MOV EDX, dword ptr [ECX]
00948B54  8B12                            MOV EDX, dword ptr [EDX]
00948B56  8D442410                        LEA EAX, [ESP + 0x10]
00948B5A  50                              PUSH EAX
00948B5B  FFD2                            CALL EDX
00948B5D  8BE5                            MOV ESP, EBP
00948B5F  5D                              POP EBP
00948B60  C3                              RET
