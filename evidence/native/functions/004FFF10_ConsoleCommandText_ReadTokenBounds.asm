# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete actual owned Listing
; Analyst name: ConsoleCommandText_ReadTokenBounds
; Owned ranges: [[004fff10, 004fff5c] [004fff60, 0050002a]]

004fff10  51  PUSH ECX
004fff11  8b442408  MOV EAX,dword ptr [ESP + 0x8]
004fff15  8b542414  MOV EDX,dword ptr [ESP + 0x14]
004fff19  53  PUSH EBX
004fff1a  55  PUSH EBP
004fff1b  8b6c2414  MOV EBP,dword ptr [ESP + 0x14]
004fff1f  3bc5  CMP EAX,EBP
004fff21  56  PUSH ESI
004fff22  57  PUSH EDI
004fff23  c744241000000000  MOV dword ptr [ESP + 0x10],0x0
004fff2b  8902  MOV dword ptr [EDX],EAX
004fff2d  731b  JNC 0x004fff4a
004fff2f  90  NOP
004fff30  8b02  MOV EAX,dword ptr [EDX]
004fff32  0fb708  MOVZX ECX,word ptr [EAX]
004fff35  6683f920  CMP CX,0x20
004fff39  7406  JZ 0x004fff41
004fff3b  6683f909  CMP CX,0x9
004fff3f  7509  JNZ 0x004fff4a
004fff41  83c002  ADD EAX,0x2
004fff44  3bc5  CMP EAX,EBP
004fff46  8902  MOV dword ptr [EDX],EAX
004fff48  72e6  JC 0x004fff30
004fff4a  8b0a  MOV ECX,dword ptr [EDX]
004fff4c  3bcd  CMP ECX,EBP
004fff4e  8b442428  MOV EAX,dword ptr [ESP + 0x28]
004fff52  8908  MOV dword ptr [EAX],ECX
004fff54  735d  JNC 0x004fffb3
004fff56  668b7c2420  MOV DI,word ptr [ESP + 0x20]
004fff5b  eb03  JMP 0x004fff60
004fff60  8b08  MOV ECX,dword ptr [EAX]
004fff62  8d7102  LEA ESI,[ECX + 0x2]
004fff65  0fb709  MOVZX ECX,word ptr [ECX]
004fff68  3bf5  CMP ESI,EBP
004fff6a  0f94c3  SETZ BL
004fff6d  6683ff20  CMP DI,0x20
004fff71  750d  JNZ 0x004fff80
004fff73  663bcf  CMP CX,DI
004fff76  7429  JZ 0x004fffa1
004fff78  6683f909  CMP CX,0x9
004fff7c  7510  JNZ 0x004fff8e
004fff7e  eb21  JMP 0x004fffa1
004fff80  663bcf  CMP CX,DI
004fff83  0f94c2  SETZ DL
004fff86  84d2  TEST DL,DL
004fff88  8b542424  MOV EDX,dword ptr [ESP + 0x24]
004fff8c  7513  JNZ 0x004fffa1
004fff8e  84db  TEST BL,BL
004fff90  750d  JNZ 0x004fff9f
004fff92  6683f922  CMP CX,0x22
004fff96  7514  JNZ 0x004fffac
004fff98  8344241001  ADD dword ptr [ESP + 0x10],0x1
004fff9d  eb0d  JMP 0x004fffac
004fff9f  8930  MOV dword ptr [EAX],ESI
004fffa1  f644241001  TEST byte ptr [ESP + 0x10],0x1
004fffa6  741f  JZ 0x004fffc7
004fffa8  84db  TEST BL,BL
004fffaa  751b  JNZ 0x004fffc7
004fffac  830002  ADD dword ptr [EAX],0x2
004fffaf  3928  CMP dword ptr [EAX],EBP
004fffb1  72ad  JC 0x004fff60
004fffb3  8b4c242c  MOV ECX,dword ptr [ESP + 0x2c]
004fffb7  85c9  TEST ECX,ECX
004fffb9  7404  JZ 0x004fffbf
004fffbb  8b00  MOV EAX,dword ptr [EAX]
004fffbd  8901  MOV dword ptr [ECX],EAX
004fffbf  5f  POP EDI
004fffc0  5e  POP ESI
004fffc1  5d  POP EBP
004fffc2  32c0  XOR AL,AL
004fffc4  5b  POP EBX
004fffc5  59  POP ECX
004fffc6  c3  RET
004fffc7  8b4c242c  MOV ECX,dword ptr [ESP + 0x2c]
004fffcb  85c9  TEST ECX,ECX
004fffcd  7404  JZ 0x004fffd3
004fffcf  8b30  MOV ESI,dword ptr [EAX]
004fffd1  8931  MOV dword ptr [ECX],ESI
004fffd3  6683ff20  CMP DI,0x20
004fffd7  742d  JZ 0x00500006
004fffd9  8b08  MOV ECX,dword ptr [EAX]
004fffdb  3bcd  CMP ECX,EBP
004fffdd  7427  JZ 0x00500006
004fffdf  3b0a  CMP ECX,dword ptr [EDX]
004fffe1  7423  JZ 0x00500006
004fffe3  8b08  MOV ECX,dword ptr [EAX]
004fffe5  0fb751fe  MOVZX EDX,word ptr [ECX + -0x2]
004fffe9  83c1fe  ADD ECX,-0x2
004fffec  6683fa20  CMP DX,0x20
004ffff0  7406  JZ 0x004ffff8
004ffff2  6683fa09  CMP DX,0x9
004ffff6  750a  JNZ 0x00500002
004ffff8  8b542424  MOV EDX,dword ptr [ESP + 0x24]
004ffffc  8908  MOV dword ptr [EAX],ECX
004ffffe  3b0a  CMP ECX,dword ptr [EDX]
00500000  75e1  JNZ 0x004fffe3
00500002  8b542424  MOV EDX,dword ptr [ESP + 0x24]
00500006  8b0a  MOV ECX,dword ptr [EDX]
00500008  3bcd  CMP ECX,EBP
0050000a  7417  JZ 0x00500023
0050000c  66833922  CMP word ptr [ECX],0x22
00500010  7511  JNZ 0x00500023
00500012  8b30  MOV ESI,dword ptr [EAX]
00500014  66837efe22  CMP word ptr [ESI + -0x2],0x22
00500019  7508  JNZ 0x00500023
0050001b  83c102  ADD ECX,0x2
0050001e  890a  MOV dword ptr [EDX],ECX
00500020  8300fe  ADD dword ptr [EAX],-0x2
00500023  5f  POP EDI
00500024  5e  POP ESI
00500025  5d  POP EBP
00500026  b001  MOV AL,0x1
00500028  5b  POP EBX
00500029  59  POP ECX
0050002a  c3  RET
