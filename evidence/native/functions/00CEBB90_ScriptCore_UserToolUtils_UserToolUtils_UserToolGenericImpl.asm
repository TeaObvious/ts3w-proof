# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; actual Ghidra Listing and preserved non-owned envelope gaps.
Owned ranges: [[00cebb90, 00cebe84]]
Signature: undefined UserToolUtils_UserToolGenericImpl(uint param_1, uint param_2, undefined4 param_3, undefined4 param_4, uint param_5, uint param_6)

00cebb90  55  PUSH EBP
00cebb91  8bec  MOV EBP,ESP
00cebb93  83e4f0  AND ESP,0xfffffff0
00cebb96  81ec38020000  SUB ESP,0x238
00cebb9c  56  PUSH ESI
00cebb9d  57  PUSH EDI
00cebb9e  e85d390000  CALL 0x00cef500
00cebba3  8bf8  MOV EDI,EAX
00cebba5  85ff  TEST EDI,EDI
00cebba7  0f84d2020000  JZ 0x00cebe7f
00cebbad  8b7508  MOV ESI,dword ptr [EBP + 0x8]
00cebbb0  81fecc000000  CMP ESI,0xcc
00cebbb6  0f8704010000  JA 0x00cebcc0
00cebbbc  81fec8000000  CMP ESI,0xc8
00cebbc2  0f83de000000  JNC 0x00cebca6
00cebbc8  8d469c  LEA EAX,[ESI + -0x64]
00cebbcb  83f804  CMP EAX,0x4
00cebbce  0f879d010000  JA 0x00cebd71
00cebbd4  ff248588bece00  JMP dword ptr [EAX*0x4 + 0xcebe88]
00cebbdb  8b7728  MOV ESI,dword ptr [EDI + 0x28]
00cebbde  85f6  TEST ESI,ESI
00cebbe0  0f8499020000  JZ 0x00cebe7f
00cebbe6  8bce  MOV ECX,ESI
00cebbe8  e8f3da0400  CALL 0x00d396e0
00cebbed  84c0  TEST AL,AL
00cebbef  0f848a020000  JZ 0x00cebe7f
00cebbf5  8bce  MOV ECX,ESI
00cebbf7  e854de0400  CALL 0x00d39a50
00cebbfc  5f  POP EDI
00cebbfd  5e  POP ESI
00cebbfe  8be5  MOV ESP,EBP
00cebc00  5d  POP EBP
00cebc01  c3  RET
00cebc02  8b7728  MOV ESI,dword ptr [EDI + 0x28]
00cebc05  85f6  TEST ESI,ESI
00cebc07  0f8472020000  JZ 0x00cebe7f
00cebc0d  8bce  MOV ECX,ESI
00cebc0f  e80cdb0400  CALL 0x00d39720
00cebc14  84c0  TEST AL,AL
00cebc16  0f8463020000  JZ 0x00cebe7f
00cebc1c  8bce  MOV ECX,ESI
00cebc1e  e86ddf0400  CALL 0x00d39b90
00cebc23  5f  POP EDI
00cebc24  5e  POP ESI
00cebc25  8be5  MOV ESP,EBP
00cebc27  5d  POP EBP
00cebc28  c3  RET
00cebc29  8b4f28  MOV ECX,dword ptr [EDI + 0x28]
00cebc2c  85c9  TEST ECX,ECX
00cebc2e  0f844b020000  JZ 0x00cebe7f
00cebc34  e837dc0400  CALL 0x00d39870
00cebc39  5f  POP EDI
00cebc3a  5e  POP ESI
00cebc3b  8be5  MOV ESP,EBP
00cebc3d  5d  POP EBP
00cebc3e  c3  RET
00cebc3f  8b35c4db1e01  MOV ESI,dword ptr [0x011edbc4]
00cebc45  85f6  TEST ESI,ESI
00cebc47  0f8432020000  JZ 0x00cebe7f
00cebc4d  6a00  PUSH 0x0
00cebc4f  8bce  MOV ECX,ESI
00cebc51  e80a39f7ff  CALL 0x00c5f560
00cebc56  52  PUSH EDX
00cebc57  50  PUSH EAX
00cebc58  8bce  MOV ECX,ESI
00cebc5a  e8b16bf7ff  CALL 0x00c62810
00cebc5f  85c0  TEST EAX,EAX
00cebc61  0f8418020000  JZ 0x00cebe7f
00cebc67  50  PUSH EAX
00cebc68  8d8c24f4000000  LEA ECX,[ESP + 0xf4]
00cebc6f  c687d001000001  MOV byte ptr [EDI + 0x1d0],0x1
00cebc76  e815fbffff  CALL 0x00ceb790
00cebc7b  8d8c24f0000000  LEA ECX,[ESP + 0xf0]
00cebc82  e879abfbff  CALL 0x00ca6800
00cebc87  8d8c24f0000000  LEA ECX,[ESP + 0xf0]
00cebc8e  e80dfdffff  CALL 0x00ceb9a0
00cebc93  5f  POP EDI
00cebc94  5e  POP ESI
00cebc95  8be5  MOV ESP,EBP
00cebc97  5d  POP EBP
00cebc98  c3  RET
00cebc99  c687d001000000  MOV byte ptr [EDI + 0x1d0],0x0
00cebca0  5f  POP EDI
00cebca1  5e  POP ESI
00cebca2  8be5  MOV ESP,EBP
00cebca4  5d  POP EBP
00cebca5  c3  RET
00cebca6  8b0dc4db1e01  MOV ECX,dword ptr [0x011edbc4]
00cebcac  85c9  TEST ECX,ECX
00cebcae  0f84cb010000  JZ 0x00cebe7f
00cebcb4  56  PUSH ESI
00cebcb5  e81696f7ff  CALL 0x00c652d0
00cebcba  5f  POP EDI
00cebcbb  5e  POP ESI
00cebcbc  8be5  MOV ESP,EBP
00cebcbe  5d  POP EBP
00cebcbf  c3  RET
00cebcc0  81fef5010000  CMP ESI,0x1f5
00cebcc6  7773  JA 0x00cebd3b
00cebcc8  81fef4010000  CMP ESI,0x1f4
00cebcce  7351  JNC 0x00cebd21
00cebcd0  8d86d4feffff  LEA EAX,[ESI + 0xfffffed4]
00cebcd6  83f865  CMP EAX,0x65
00cebcd9  0f8792000000  JA 0x00cebd71
00cebcdf  0fb680a8bece00  MOVZX EAX,byte ptr [EAX + 0xcebea8]
00cebce6  ff24859cbece00  JMP dword ptr [EAX*0x4 + 0xcebe9c]
00cebced  8b0dc4db1e01  MOV ECX,dword ptr [0x011edbc4]
00cebcf3  85c9  TEST ECX,ECX
00cebcf5  0f8484010000  JZ 0x00cebe7f
00cebcfb  56  PUSH ESI
00cebcfc  e84f6af7ff  CALL 0x00c62750
00cebd01  5f  POP EDI
00cebd02  5e  POP ESI
00cebd03  8be5  MOV ESP,EBP
00cebd05  5d  POP EBP
00cebd06  c3  RET
00cebd07  8b0dc4db1e01  MOV ECX,dword ptr [0x011edbc4]
00cebd0d  85c9  TEST ECX,ECX
00cebd0f  0f846a010000  JZ 0x00cebe7f
00cebd15  56  PUSH ESI
00cebd16  e8a56af7ff  CALL 0x00c627c0
00cebd1b  5f  POP EDI
00cebd1c  5e  POP ESI
00cebd1d  8be5  MOV ESP,EBP
00cebd1f  5d  POP EBP
00cebd20  c3  RET
00cebd21  8b0dc4db1e01  MOV ECX,dword ptr [0x011edbc4]
00cebd27  85c9  TEST ECX,ECX
00cebd29  0f8450010000  JZ 0x00cebe7f
00cebd2f  56  PUSH ESI
00cebd30  e8cbc277ff  CALL 0x00468000
00cebd35  5f  POP EDI
00cebd36  5e  POP ESI
00cebd37  8be5  MOV ESP,EBP
00cebd39  5d  POP EBP
00cebd3a  c3  RET
00cebd3b  81fef6010000  CMP ESI,0x1f6
00cebd41  0f842c010000  JZ 0x00cebe73
00cebd47  81fe57020000  CMP ESI,0x257
00cebd4d  7622  JBE 0x00cebd71
00cebd4f  81fe59020000  CMP ESI,0x259
00cebd55  771a  JA 0x00cebd71
00cebd57  8b0dc4db1e01  MOV ECX,dword ptr [0x011edbc4]
00cebd5d  85c9  TEST ECX,ECX
00cebd5f  0f841a010000  JZ 0x00cebe7f
00cebd65  56  PUSH ESI
00cebd66  e83537f7ff  CALL 0x00c5f4a0
00cebd6b  5f  POP EDI
00cebd6c  5e  POP ESI
00cebd6d  8be5  MOV ESP,EBP
00cebd6f  5d  POP EBP
00cebd70  c3  RET
00cebd71  8d4c2468  LEA ECX,[ESP + 0x68]
00cebd75  e8463dfbff  CALL 0x00c9fac0
00cebd7a  8d4c2420  LEA ECX,[ESP + 0x20]
00cebd7e  e86dc1e2ff  CALL 0x00b17ef0
00cebd83  83fe33  CMP ESI,0x33
00cebd86  8b4d0c  MOV ECX,dword ptr [EBP + 0xc]
00cebd89  8b5510  MOV EDX,dword ptr [EBP + 0x10]
00cebd8c  8b4518  MOV EAX,dword ptr [EBP + 0x18]
00cebd8f  894c2410  MOV dword ptr [ESP + 0x10],ECX
00cebd93  8b4d14  MOV ECX,dword ptr [EBP + 0x14]
00cebd96  89542414  MOV dword ptr [ESP + 0x14],EDX
00cebd9a  89442418  MOV dword ptr [ESP + 0x18],EAX
00cebd9e  894c241c  MOV dword ptr [ESP + 0x1c],ECX
00cebda2  757f  JNZ 0x00cebe23
00cebda4  3d01ccf304  CMP EAX,0x4f3cc01
00cebda9  7733  JA 0x00cebdde
00cebdab  742a  JZ 0x00cebdd7
00cebdad  3d2afe1804  CMP EAX,0x418fe2a
00cebdb2  741c  JZ 0x00cebdd0
00cebdb4  3dcda49c04  CMP EAX,0x49ca4cd
00cebdb9  740e  JZ 0x00cebdc9
00cebdbb  3d0381c504  CMP EAX,0x4c58103
00cebdc0  755c  JNZ 0x00cebe1e
00cebdc2  be11000000  MOV ESI,0x11
00cebdc7  eb5a  JMP 0x00cebe23
00cebdc9  be10000000  MOV ESI,0x10
00cebdce  eb53  JMP 0x00cebe23
00cebdd0  be08000000  MOV ESI,0x8
00cebdd5  eb4c  JMP 0x00cebe23
00cebdd7  be13000000  MOV ESI,0x13
00cebddc  eb45  JMP 0x00cebe23
00cebdde  3d1d4f9e31  CMP EAX,0x319e4f1d
00cebde3  7439  JZ 0x00cebe1e
00cebde5  3dcda45c51  CMP EAX,0x515ca4cd
00cebdea  7532  JNZ 0x00cebe1e
00cebdec  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00cebdf2  85c9  TEST ECX,ECX
00cebdf4  742d  JZ 0x00cebe23
00cebdf6  8d542410  LEA EDX,[ESP + 0x10]
00cebdfa  52  PUSH EDX
00cebdfb  e8e02cfaff  CALL 0x00c8eae0
00cebe00  85c0  TEST EAX,EAX
00cebe02  741f  JZ 0x00cebe23
00cebe04  8b8088000000  MOV EAX,dword ptr [EAX + 0x88]
00cebe0a  83f802  CMP EAX,0x2
00cebe0d  7505  JNZ 0x00cebe14
00cebe0f  8d70ff  LEA ESI,[EAX + -0x1]
00cebe12  eb0f  JMP 0x00cebe23
00cebe14  83f801  CMP EAX,0x1
00cebe17  750a  JNZ 0x00cebe23
00cebe19  8d7001  LEA ESI,[EAX + 0x1]
00cebe1c  eb05  JMP 0x00cebe23
00cebe1e  be04000000  MOV ESI,0x4
00cebe23  8b551c  MOV EDX,dword ptr [EBP + 0x1c]
00cebe26  8d442420  LEA EAX,[ESP + 0x20]
00cebe2a  50  PUSH EAX
00cebe2b  8d4c246c  LEA ECX,[ESP + 0x6c]
00cebe2f  51  PUSH ECX
00cebe30  52  PUSH EDX
00cebe31  8d44241c  LEA EAX,[ESP + 0x1c]
00cebe35  50  PUSH EAX
00cebe36  56  PUSH ESI
00cebe37  e8e4d1ffff  CALL 0x00ce9020
00cebe3c  83c414  ADD ESP,0x14
00cebe3f  8d4c2468  LEA ECX,[ESP + 0x68]
00cebe43  51  PUSH ECX
00cebe44  56  PUSH ESI
00cebe45  8bcf  MOV ECX,EDI
00cebe47  e874410000  CALL 0x00ceffc0
00cebe4c  8d4c2424  LEA ECX,[ESP + 0x24]
00cebe50  e8fbaf93ff  CALL 0x00626e50
00cebe55  8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
00cebe59  85c9  TEST ECX,ECX
00cebe5b  7407  JZ 0x00cebe64
00cebe5d  8b11  MOV EDX,dword ptr [ECX]
00cebe5f  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00cebe62  ffd0  CALL EAX
00cebe64  8d4c2468  LEA ECX,[ESP + 0x68]
00cebe68  e8c33bfbff  CALL 0x00c9fa30
00cebe6d  5f  POP EDI
00cebe6e  5e  POP ESI
00cebe6f  8be5  MOV ESP,EBP
00cebe71  5d  POP EBP
00cebe72  c3  RET
00cebe73  8b4f28  MOV ECX,dword ptr [EDI + 0x28]
00cebe76  85c9  TEST ECX,ECX
00cebe78  7405  JZ 0x00cebe7f
00cebe7a  e831d90400  CALL 0x00d397b0
00cebe7f  5f  POP EDI
00cebe80  5e  POP ESI
00cebe81  8be5  MOV ESP,EBP
00cebe83  5d  POP EBP
00cebe84  c3  RET
