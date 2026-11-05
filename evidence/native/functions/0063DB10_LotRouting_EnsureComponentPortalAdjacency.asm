# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete existing owned Listing.
; Analyst-assigned name: LotRouting_EnsureComponentPortalAdjacency
; Owned ranges: [[0063db10, 0063dcec] [0063dcf0, 0063df31]]
; Actual entry PLATE: Original PC1.67; descriptive analyst name. ECX routing owner plus lotrecord pointer and low16 component ordinal, RET8, AL-only status. If lotrecord+8C is false require63D3B0 success; unsigned component bounds use44hex-byte records. Return existing component ready byte if initialized. Otherwise prepare portal-goal/adjoining-node state, cap portal count toFFFE when count>=FFFF, select portal From when component matches portal+48 or special selectedcomponent+16C edge bit1, otherwise To. Rebuild connected groups via634210, append symmetric neighbor relations, bracket existing optional owner+BC service callbacks, mark component byte1 and release scoped temporary state. Complete1055 owned bytes/309instructions in two existing ranges, three unowned gap bytes excluded; unknown children retain separate contracts.

0063db10  55  PUSH EBP
0063db11  8bec  MOV EBP,ESP
0063db13  83e4f8  AND ESP,0xfffffff8
0063db16  81ecbc000000  SUB ESP,0xbc
0063db1c  53  PUSH EBX
0063db1d  8b5d08  MOV EBX,dword ptr [EBP + 0x8]
0063db20  80bb8c00000000  CMP byte ptr [EBX + 0x8c],0x0
0063db27  56  PUSH ESI
0063db28  57  PUSH EDI
0063db29  894c2420  MOV dword ptr [ESP + 0x20],ECX
0063db2d  7515  JNZ 0x0063db44
0063db2f  53  PUSH EBX
0063db30  e87bf8ffff  CALL 0x0063d3b0
0063db35  84c0  TEST AL,AL
0063db37  750b  JNZ 0x0063db44
0063db39  32c0  XOR AL,AL
0063db3b  5f  POP EDI
0063db3c  5e  POP ESI
0063db3d  5b  POP EBX
0063db3e  8be5  MOV ESP,EBP
0063db40  5d  POP EBP
0063db41  c20800  RET 0x8
0063db44  8b8b94000000  MOV ECX,dword ptr [EBX + 0x94]
0063db4a  2b8b90000000  SUB ECX,dword ptr [EBX + 0x90]
0063db50  668b7d0c  MOV DI,word ptr [EBP + 0xc]
0063db54  b879787878  MOV EAX,0x78787879
0063db59  f7e9  IMUL ECX
0063db5b  c1fa05  SAR EDX,0x5
0063db5e  8bc2  MOV EAX,EDX
0063db60  c1e81f  SHR EAX,0x1f
0063db63  0fb7f7  MOVZX ESI,DI
0063db66  03c2  ADD EAX,EDX
0063db68  3bf0  CMP ESI,EAX
0063db6a  73cd  JNC 0x0063db39
0063db6c  8b9390000000  MOV EDX,dword ptr [EBX + 0x90]
0063db72  8bce  MOV ECX,ESI
0063db74  c1e104  SHL ECX,0x4
0063db77  03ce  ADD ECX,ESI
0063db79  803c8a00  CMP byte ptr [EDX + ECX*0x4],0x0
0063db7d  8d1c8a  LEA EBX,[EDX + ECX*0x4]
0063db80  895c2410  MOV dword ptr [ESP + 0x10],EBX
0063db84  0f859d030000  JNZ 0x0063df27
0063db8a  8d4c2468  LEA ECX,[ESP + 0x68]
0063db8e  c744245048cdfe00  MOV dword ptr [ESP + 0x50],0xfecd48
0063db96  e885c4feff  CALL 0x0062a020
0063db9b  8b5334  MOV EDX,dword ptr [EBX + 0x34]
0063db9e  8b442420  MOV EAX,dword ptr [ESP + 0x20]
0063dba2  33f6  XOR ESI,ESI
0063dba4  3b5338  CMP EDX,dword ptr [EBX + 0x38]
0063dba7  8d4c2450  LEA ECX,[ESP + 0x50]
0063dbab  89b424a8000000  MOV dword ptr [ESP + 0xa8],ESI
0063dbb2  898424ac000000  MOV dword ptr [ESP + 0xac],EAX
0063dbb9  89b424b4000000  MOV dword ptr [ESP + 0xb4],ESI
0063dbc0  c78424b800000000001100  MOV dword ptr [ESP + 0xb8],0x110000
0063dbcb  89b424bc000000  MOV dword ptr [ESP + 0xbc],ESI
0063dbd2  89b424c0000000  MOV dword ptr [ESP + 0xc0],ESI
0063dbd9  898c24b0000000  MOV dword ptr [ESP + 0xb0],ECX
0063dbe0  0f8404030000  JZ 0x0063deea
0063dbe6  8b88bc000000  MOV ECX,dword ptr [EAX + 0xbc]
0063dbec  3bce  CMP ECX,ESI
0063dbee  7406  JZ 0x0063dbf6
0063dbf0  56  PUSH ESI
0063dbf1  e8ba0ffeff  CALL 0x0061ebb0
0063dbf6  8b4308  MOV EAX,dword ptr [EBX + 0x8]
0063dbf9  2b4304  SUB EAX,dword ptr [EBX + 0x4]
0063dbfc  c1f802  SAR EAX,0x2
0063dbff  3dffff0000  CMP EAX,0xffff
0063dc04  89442414  MOV dword ptr [ESP + 0x14],EAX
0063dc08  720c  JC 0x0063dc16
0063dc0a  c7442414feff0000  MOV dword ptr [ESP + 0x14],0xfffe
0063dc12  8b442414  MOV EAX,dword ptr [ESP + 0x14]
0063dc16  85c0  TEST EAX,EAX
0063dc18  89742458  MOV dword ptr [ESP + 0x58],ESI
0063dc1c  8974245c  MOV dword ptr [ESP + 0x5c],ESI
0063dc20  89742460  MOV dword ptr [ESP + 0x60],ESI
0063dc24  c744246474dcfe00  MOV dword ptr [ESP + 0x64],0xfedc74
0063dc2c  0f8685000000  JBE 0x0063dcb7
0063dc32  8b5508  MOV EDX,dword ptr [EBP + 0x8]
0063dc35  663bba6c010000  CMP DI,word ptr [EDX + 0x16c]
0063dc3c  8b4304  MOV EAX,dword ptr [EBX + 0x4]
0063dc3f  0f57c0  XORPS XMM0,XMM0
0063dc42  8b0cb0  MOV ECX,dword ptr [EAX + ESI*0x4]
0063dc45  7511  JNZ 0x0063dc58
0063dc47  85c9  TEST ECX,ECX
0063dc49  740d  JZ 0x0063dc58
0063dc4b  8a4158  MOV AL,byte ptr [ECX + 0x58]
0063dc4e  d0e8  SHR AL,0x1
0063dc50  2401  AND AL,0x1
0063dc52  7404  JZ 0x0063dc58
0063dc54  b001  MOV AL,0x1
0063dc56  eb02  JMP 0x0063dc5a
0063dc58  32c0  XOR AL,AL
0063dc5a  66397948  CMP word ptr [ECX + 0x48],DI
0063dc5e  7407  JZ 0x0063dc67
0063dc60  84c0  TEST AL,AL
0063dc62  8d4120  LEA EAX,[ECX + 0x20]
0063dc65  7403  JZ 0x0063dc6a
0063dc67  8d4114  LEA EAX,[ECX + 0x14]
0063dc6a  f30f1008  MOVSS XMM1,dword ptr [EAX]
0063dc6e  f30f114c2424  MOVSS dword ptr [ESP + 0x24],XMM1
0063dc74  f30f104804  MOVSS XMM1,dword ptr [EAX + 0x4]
0063dc79  8b4008  MOV EAX,dword ptr [EAX + 0x8]
0063dc7c  8d4c2424  LEA ECX,[ESP + 0x24]
0063dc80  51  PUSH ECX
0063dc81  8d4c245c  LEA ECX,[ESP + 0x5c]
0063dc85  f30f114c242c  MOVSS dword ptr [ESP + 0x2c],XMM1
0063dc8b  89442430  MOV dword ptr [ESP + 0x30],EAX
0063dc8f  8974243c  MOV dword ptr [ESP + 0x3c],ESI
0063dc93  f30f11442440  MOVSS dword ptr [ESP + 0x40],XMM0
0063dc99  f30f11442434  MOVSS dword ptr [ESP + 0x34],XMM0
0063dc9f  f30f11442438  MOVSS dword ptr [ESP + 0x38],XMM0
0063dca5  e866d3feff  CALL 0x0062b010
0063dcaa  83c601  ADD ESI,0x1
0063dcad  3b742414  CMP ESI,dword ptr [ESP + 0x14]
0063dcb1  0f827bffffff  JC 0x0063dc32
0063dcb7  8b5324  MOV EDX,dword ptr [EBX + 0x24]
0063dcba  8d7334  LEA ESI,[EBX + 0x34]
0063dcbd  8bce  MOV ECX,ESI
0063dcbf  895328  MOV dword ptr [EBX + 0x28],EDX
0063dcc2  e8d946feff  CALL 0x006223a0
0063dcc7  8b442414  MOV EAX,dword ptr [ESP + 0x14]
0063dccb  50  PUSH EAX
0063dccc  8bce  MOV ECX,ESI
0063dcce  e84d55feff  CALL 0x00623220
0063dcd3  8b742414  MOV ESI,dword ptr [ESP + 0x14]
0063dcd7  33c0  XOR EAX,EAX
0063dcd9  33db  XOR EBX,EBX
0063dcdb  3bf0  CMP ESI,EAX
0063dcdd  0f86db010000  JBE 0x0063debe
0063dce3  89442418  MOV dword ptr [ESP + 0x18],EAX
0063dce7  8944241c  MOV dword ptr [ESP + 0x1c],EAX
0063dceb  eb03  JMP 0x0063dcf0
0063dcf0  8b442410  MOV EAX,dword ptr [ESP + 0x10]
0063dcf4  83c034  ADD EAX,0x34
0063dcf7  8b00  MOV EAX,dword ptr [EAX]
0063dcf9  03442418  ADD EAX,dword ptr [ESP + 0x18]
0063dcfd  8b08  MOV ECX,dword ptr [EAX]
0063dcff  3b4804  CMP ECX,dword ptr [EAX + 0x4]
0063dd02  0f859d010000  JNZ 0x0063dea5
0063dd08  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
0063dd0c  8b4128  MOV EAX,dword ptr [ECX + 0x28]
0063dd0f  0fb7fb  MOVZX EDI,BX
0063dd12  83c124  ADD ECX,0x24
0063dd15  3b4108  CMP EAX,dword ptr [ECX + 0x8]
0063dd18  0fb7d7  MOVZX EDX,DI
0063dd1b  89542454  MOV dword ptr [ESP + 0x54],EDX
0063dd1f  730f  JNC 0x0063dd30
0063dd21  85c0  TEST EAX,EAX
0063dd23  8d5002  LEA EDX,[EAX + 0x2]
0063dd26  895104  MOV dword ptr [ECX + 0x4],EDX
0063dd29  7410  JZ 0x0063dd3b
0063dd2b  668938  MOV word ptr [EAX],DI
0063dd2e  eb0b  JMP 0x0063dd3b
0063dd30  8d542454  LEA EDX,[ESP + 0x54]
0063dd34  52  PUSH EDX
0063dd35  50  PUSH EAX
0063dd36  e8f549f9ff  CALL 0x005d2730
0063dd3b  2bf3  SUB ESI,EBX
0063dd3d  83fe01  CMP ESI,0x1
0063dd40  0f865f010000  JBE 0x0063dea5
0063dd46  33c0  XOR EAX,EAX
0063dd48  89442428  MOV dword ptr [ESP + 0x28],EAX
0063dd4c  89442430  MOV dword ptr [ESP + 0x30],EAX
0063dd50  89442434  MOV dword ptr [ESP + 0x34],EAX
0063dd54  8944242c  MOV dword ptr [ESP + 0x2c],EAX
0063dd58  8d4c2428  LEA ECX,[ESP + 0x28]
0063dd5c  8bd1  MOV EDX,ECX
0063dd5e  894c2428  MOV dword ptr [ESP + 0x28],ECX
0063dd62  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
0063dd66  89442430  MOV dword ptr [ESP + 0x30],EAX
0063dd6a  88442434  MOV byte ptr [ESP + 0x34],AL
0063dd6e  89442438  MOV dword ptr [ESP + 0x38],EAX
0063dd72  8b442458  MOV EAX,dword ptr [ESP + 0x58]
0063dd76  03c1  ADD EAX,ECX
0063dd78  8954242c  MOV dword ptr [ESP + 0x2c],EDX
0063dd7c  8d542424  LEA EDX,[ESP + 0x24]
0063dd80  52  PUSH EDX
0063dd81  8d4c245c  LEA ECX,[ESP + 0x5c]
0063dd85  51  PUSH ECX
0063dd86  50  PUSH EAX
0063dd87  8b4508  MOV EAX,dword ptr [EBP + 0x8]
0063dd8a  8b5004  MOV EDX,dword ptr [EAX + 0x4]
0063dd8d  8b00  MOV EAX,dword ptr [EAX]
0063dd8f  52  PUSH EDX
0063dd90  50  PUSH EAX
0063dd91  8d4c247c  LEA ECX,[ESP + 0x7c]
0063dd95  51  PUSH ECX
0063dd96  8b4c2438  MOV ECX,dword ptr [ESP + 0x38]
0063dd9a  c744245460dcfe00  MOV dword ptr [ESP + 0x54],0xfedc60
0063dda2  e86964ffff  CALL 0x00634210
0063dda7  84c0  TEST AL,AL
0063dda9  0f84d0000000  JZ 0x0063de7f
0063ddaf  8b74242c  MOV ESI,dword ptr [ESP + 0x2c]
0063ddb3  8d542428  LEA EDX,[ESP + 0x28]
0063ddb7  3bf2  CMP ESI,EDX
0063ddb9  0f84c0000000  JZ 0x0063de7f
0063ddbf  90  NOP
0063ddc0  395e10  CMP dword ptr [ESI + 0x10],EBX
0063ddc3  0f869f000000  JBE 0x0063de68
0063ddc9  668b4610  MOV AX,word ptr [ESI + 0x10]
0063ddcd  f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
0063ddd5  6689442440  MOV word ptr [ESP + 0x40],AX
0063ddda  8b442410  MOV EAX,dword ptr [ESP + 0x10]
0063ddde  8b4834  MOV ECX,dword ptr [EAX + 0x34]
0063dde1  034c2418  ADD ECX,dword ptr [ESP + 0x18]
0063dde5  83c034  ADD EAX,0x34
0063dde8  8b4104  MOV EAX,dword ptr [ECX + 0x4]
0063ddeb  3b4108  CMP EAX,dword ptr [ECX + 0x8]
0063ddee  f30f11442444  MOVSS dword ptr [ESP + 0x44],XMM0
0063ddf4  7319  JNC 0x0063de0f
0063ddf6  85c0  TEST EAX,EAX
0063ddf8  8d5008  LEA EDX,[EAX + 0x8]
0063ddfb  895104  MOV dword ptr [ECX + 0x4],EDX
0063ddfe  741a  JZ 0x0063de1a
0063de00  8b4c2440  MOV ECX,dword ptr [ESP + 0x40]
0063de04  8b542444  MOV EDX,dword ptr [ESP + 0x44]
0063de08  8908  MOV dword ptr [EAX],ECX
0063de0a  895004  MOV dword ptr [EAX + 0x4],EDX
0063de0d  eb0b  JMP 0x0063de1a
0063de0f  8d542440  LEA EDX,[ESP + 0x40]
0063de13  52  PUSH EDX
0063de14  50  PUSH EAX
0063de15  e826e7dcff  CALL 0x0040c540
0063de1a  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
0063de1d  8b442410  MOV EAX,dword ptr [ESP + 0x10]
0063de21  f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
0063de29  83c034  ADD EAX,0x34
0063de2c  c1e104  SHL ECX,0x4
0063de2f  0308  ADD ECX,dword ptr [EAX]
0063de31  66897c2448  MOV word ptr [ESP + 0x48],DI
0063de36  8b4104  MOV EAX,dword ptr [ECX + 0x4]
0063de39  3b4108  CMP EAX,dword ptr [ECX + 0x8]
0063de3c  f30f1144244c  MOVSS dword ptr [ESP + 0x4c],XMM0
0063de42  7319  JNC 0x0063de5d
0063de44  85c0  TEST EAX,EAX
0063de46  8d5008  LEA EDX,[EAX + 0x8]
0063de49  895104  MOV dword ptr [ECX + 0x4],EDX
0063de4c  741a  JZ 0x0063de68
0063de4e  8b4c2448  MOV ECX,dword ptr [ESP + 0x48]
0063de52  8b54244c  MOV EDX,dword ptr [ESP + 0x4c]
0063de56  8908  MOV dword ptr [EAX],ECX
0063de58  895004  MOV dword ptr [EAX + 0x4],EDX
0063de5b  eb0b  JMP 0x0063de68
0063de5d  8d542448  LEA EDX,[ESP + 0x48]
0063de61  52  PUSH EDX
0063de62  50  PUSH EAX
0063de63  e8d8e6dcff  CALL 0x0040c540
0063de68  56  PUSH ESI
0063de69  e8c231eaff  CALL 0x004e1030
0063de6e  8bf0  MOV ESI,EAX
0063de70  8d44242c  LEA EAX,[ESP + 0x2c]
0063de74  83c404  ADD ESP,0x4
0063de77  3bf0  CMP ESI,EAX
0063de79  0f8541ffffff  JNZ 0x0063ddc0
0063de7f  8b742430  MOV ESI,dword ptr [ESP + 0x30]
0063de83  85f6  TEST ESI,ESI
0063de85  741e  JZ 0x0063dea5
0063de87  8b0e  MOV ECX,dword ptr [ESI]
0063de89  51  PUSH ECX
0063de8a  8d4c2428  LEA ECX,[ESP + 0x28]
0063de8e  e81d3b2700  CALL 0x008b19b0
0063de93  8b7e04  MOV EDI,dword ptr [ESI + 0x4]
0063de96  56  PUSH ESI
0063de97  e84466eaff  CALL 0x004e44e0
0063de9c  83c404  ADD ESP,0x4
0063de9f  85ff  TEST EDI,EDI
0063dea1  8bf7  MOV ESI,EDI
0063dea3  75e2  JNZ 0x0063de87
0063dea5  8b742414  MOV ESI,dword ptr [ESP + 0x14]
0063dea9  8344241c1c  ADD dword ptr [ESP + 0x1c],0x1c
0063deae  8344241810  ADD dword ptr [ESP + 0x18],0x10
0063deb3  83c301  ADD EBX,0x1
0063deb6  3bde  CMP EBX,ESI
0063deb8  0f8232feffff  JC 0x0063dcf0
0063debe  8b542420  MOV EDX,dword ptr [ESP + 0x20]
0063dec2  8b8abc000000  MOV ECX,dword ptr [EDX + 0xbc]
0063dec8  85c9  TEST ECX,ECX
0063deca  7407  JZ 0x0063ded3
0063decc  6a01  PUSH 0x1
0063dece  e8dd0cfeff  CALL 0x0061ebb0
0063ded3  8b442458  MOV EAX,dword ptr [ESP + 0x58]
0063ded7  85c0  TEST EAX,EAX
0063ded9  7409  JZ 0x0063dee4
0063dedb  50  PUSH EAX
0063dedc  e8ff65eaff  CALL 0x004e44e0
0063dee1  83c404  ADD ESP,0x4
0063dee4  8b5c2410  MOV EBX,dword ptr [ESP + 0x10]
0063dee8  33f6  XOR ESI,ESI
0063deea  8b84248c000000  MOV EAX,dword ptr [ESP + 0x8c]
0063def1  8b8c2488000000  MOV ECX,dword ptr [ESP + 0x88]
0063def8  50  PUSH EAX
0063def9  51  PUSH ECX
0063defa  8d4c2470  LEA ECX,[ESP + 0x70]
0063defe  c60301  MOV byte ptr [EBX],0x1
0063df01  e8ea883900  CALL 0x009d67f0
0063df06  83bc248c00000001  CMP dword ptr [ESP + 0x8c],0x1
0063df0e  89b42490000000  MOV dword ptr [ESP + 0x90],ESI
0063df15  7610  JBE 0x0063df27
0063df17  8b942488000000  MOV EDX,dword ptr [ESP + 0x88]
0063df1e  52  PUSH EDX
0063df1f  e8bc65eaff  CALL 0x004e44e0
0063df24  83c404  ADD ESP,0x4
0063df27  8a03  MOV AL,byte ptr [EBX]
0063df29  5f  POP EDI
0063df2a  5e  POP ESI
0063df2b  5b  POP EBX
0063df2c  8be5  MOV ESP,EBP
0063df2e  5d  POP EBP
0063df2f  c20800  RET 0x8
