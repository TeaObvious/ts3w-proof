# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined4 Lot_InsertObjectTileMembership(void * this, undefined4 * param_1)
Owned ranges: [[00acc2b0, 00acc376] [00acc380, 00acc91b]]

00acc2b0  83ec30  SUB ESP,0x30
00acc2b3  56  PUSH ESI
00acc2b4  57  PUSH EDI
00acc2b5  8b7c243c  MOV EDI,dword ptr [ESP + 0x3c]
00acc2b9  85ff  TEST EDI,EDI
00acc2bb  8bf1  MOV ESI,ECX
00acc2bd  7415  JZ 0x00acc2d4
00acc2bf  a108df1e01  MOV EAX,[0x011edf08]
00acc2c4  50  PUSH EAX
00acc2c5  8bcf  MOV ECX,EDI
00acc2c7  e8947fe6ff  CALL 0x00934260
00acc2cc  85c0  TEST EAX,EAX
00acc2ce  89442410  MOV dword ptr [ESP + 0x10],EAX
00acc2d2  750a  JNZ 0x00acc2de
00acc2d4  5f  POP EDI
00acc2d5  32c0  XOR AL,AL
00acc2d7  5e  POP ESI
00acc2d8  83c430  ADD ESP,0x30
00acc2db  c20400  RET 0x4
00acc2de  57  PUSH EDI
00acc2df  e89c860300  CALL 0x00b04980
00acc2e4  83c404  ADD ESP,0x4
00acc2e7  84c0  TEST AL,AL
00acc2e9  8844240b  MOV byte ptr [ESP + 0xb],AL
00acc2ed  740e  JZ 0x00acc2fd
00acc2ef  8b86e8020000  MOV EAX,dword ptr [ESI + 0x2e8]
00acc2f5  85c0  TEST EAX,EAX
00acc2f7  7404  JZ 0x00acc2fd
00acc2f9  3bc7  CMP EAX,EDI
00acc2fb  75d7  JNZ 0x00acc2d4
00acc2fd  8b4f08  MOV ECX,dword ptr [EDI + 0x8]
00acc300  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00acc304  8b570c  MOV EDX,dword ptr [EDI + 0xc]
00acc307  894c241c  MOV dword ptr [ESP + 0x1c],ECX
00acc30b  8b4818  MOV ECX,dword ptr [EAX + 0x18]
00acc30e  8bc1  MOV EAX,ECX
00acc310  2dffffff7f  SUB EAX,0x7fffffff
00acc315  53  PUSH EBX
00acc316  f7d8  NEG EAX
00acc318  55  PUSH EBP
00acc319  1bc0  SBB EAX,EAX
00acc31b  23c1  AND EAX,ECX
00acc31d  6a00  PUSH 0x0
00acc31f  8d4c2418  LEA ECX,[ESP + 0x18]
00acc323  51  PUSH ECX
00acc324  89542430  MOV dword ptr [ESP + 0x30],EDX
00acc328  8d542428  LEA EDX,[ESP + 0x28]
00acc32c  89442428  MOV dword ptr [ESP + 0x28],EAX
00acc330  8944241c  MOV dword ptr [ESP + 0x1c],EAX
00acc334  52  PUSH EDX
00acc335  8d44243c  LEA EAX,[ESP + 0x3c]
00acc339  50  PUSH EAX
00acc33a  57  PUSH EDI
00acc33b  8bce  MOV ECX,ESI
00acc33d  c644242600  MOV byte ptr [ESP + 0x26],0x0
00acc342  e829cafeff  CALL 0x00ab8d70
00acc347  8b5c2430  MOV EBX,dword ptr [ESP + 0x30]
00acc34b  3b5c2438  CMP EBX,dword ptr [ESP + 0x38]
00acc34f  8b6c2420  MOV EBP,dword ptr [ESP + 0x20]
00acc353  0f8dd1000000  JGE 0x00acc42a
00acc359  8b4c243c  MOV ECX,dword ptr [ESP + 0x3c]
00acc35d  394c2434  CMP dword ptr [ESP + 0x34],ECX
00acc361  0f8dc3000000  JGE 0x00acc42a
00acc367  3b6c2414  CMP EBP,dword ptr [ESP + 0x14]
00acc36b  896c241c  MOV dword ptr [ESP + 0x1c],EBP
00acc36f  0f8f96000000  JG 0x00acc40b
00acc375  eb09  JMP 0x00acc380
00acc377  8da424000000008bff  .byte 8da424000000008bff ; NONOWNED envelope gap bytes
00acc380  8b5c241c  MOV EBX,dword ptr [ESP + 0x1c]
00acc384  2b9e7c010000  SUB EBX,dword ptr [ESI + 0x17c]
00acc38a  7862  JS 0x00acc3ee
00acc38c  8b6c2434  MOV EBP,dword ptr [ESP + 0x34]
00acc390  c644241201  MOV byte ptr [ESP + 0x12],0x1
00acc395  8b7c2430  MOV EDI,dword ptr [ESP + 0x30]
00acc399  8da42400000000  LEA ESP,[ESP]
00acc3a0  8b8ed0020000  MOV ECX,dword ptr [ESI + 0x2d0]
00acc3a6  53  PUSH EBX
00acc3a7  55  PUSH EBP
00acc3a8  57  PUSH EDI
00acc3a9  e8c2faffff  CALL 0x00acbe70
00acc3ae  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00acc3b1  3b5008  CMP EDX,dword ptr [EAX + 0x8]
00acc3b4  7319  JNC 0x00acc3cf
00acc3b6  85d2  TEST EDX,EDX
00acc3b8  8d4a08  LEA ECX,[EDX + 0x8]
00acc3bb  894804  MOV dword ptr [EAX + 0x4],ECX
00acc3be  741c  JZ 0x00acc3dc
00acc3c0  8b442424  MOV EAX,dword ptr [ESP + 0x24]
00acc3c4  8b4c2428  MOV ECX,dword ptr [ESP + 0x28]
00acc3c8  8902  MOV dword ptr [EDX],EAX
00acc3ca  894a04  MOV dword ptr [EDX + 0x4],ECX
00acc3cd  eb0d  JMP 0x00acc3dc
00acc3cf  8d4c2424  LEA ECX,[ESP + 0x24]
00acc3d3  51  PUSH ECX
00acc3d4  52  PUSH EDX
00acc3d5  8bc8  MOV ECX,EAX
00acc3d7  e87428ffff  CALL 0x00abec50
00acc3dc  83c701  ADD EDI,0x1
00acc3df  3b7c2438  CMP EDI,dword ptr [ESP + 0x38]
00acc3e3  7cbb  JL 0x00acc3a0
00acc3e5  83c501  ADD EBP,0x1
00acc3e8  3b6c243c  CMP EBP,dword ptr [ESP + 0x3c]
00acc3ec  7ca7  JL 0x00acc395
00acc3ee  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
00acc3f2  83c001  ADD EAX,0x1
00acc3f5  3b442414  CMP EAX,dword ptr [ESP + 0x14]
00acc3f9  8944241c  MOV dword ptr [ESP + 0x1c],EAX
00acc3fd  7e81  JLE 0x00acc380
00acc3ff  8b5c2430  MOV EBX,dword ptr [ESP + 0x30]
00acc403  8b7c2444  MOV EDI,dword ptr [ESP + 0x44]
00acc407  8b6c2420  MOV EBP,dword ptr [ESP + 0x20]
00acc40b  8b542414  MOV EDX,dword ptr [ESP + 0x14]
00acc40f  8b44243c  MOV EAX,dword ptr [ESP + 0x3c]
00acc413  8b4c2438  MOV ECX,dword ptr [ESP + 0x38]
00acc417  52  PUSH EDX
00acc418  8b542438  MOV EDX,dword ptr [ESP + 0x38]
00acc41c  55  PUSH EBP
00acc41d  50  PUSH EAX
00acc41e  51  PUSH ECX
00acc41f  8b4c2428  MOV ECX,dword ptr [ESP + 0x28]
00acc423  52  PUSH EDX
00acc424  53  PUSH EBX
00acc425  e856d21b00  CALL 0x00c89680
00acc42a  57  PUSH EDI
00acc42b  e8f0400300  CALL 0x00b00520
00acc430  83c404  ADD ESP,0x4
00acc433  84c0  TEST AL,AL
00acc435  7422  JZ 0x00acc459
00acc437  a1c49f1e01  MOV EAX,[0x011e9fc4]
00acc43c  50  PUSH EAX
00acc43d  8bcf  MOV ECX,EDI
00acc43f  e81c7ee6ff  CALL 0x00934260
00acc444  85c0  TEST EAX,EAX
00acc446  7411  JZ 0x00acc459
00acc448  8b4850  MOV ECX,dword ptr [EAX + 0x50]
00acc44b  81c900000200  OR ECX,0x20000
00acc451  51  PUSH ECX
00acc452  8bc8  MOV ECX,EAX
00acc454  e827c9e7ff  CALL 0x00948d80
00acc459  57  PUSH EDI
00acc45a  e861410300  CALL 0x00b005c0
00acc45f  83c404  ADD ESP,0x4
00acc462  84c0  TEST AL,AL
00acc464  7437  JZ 0x00acc49d
00acc466  8a542434  MOV DL,byte ptr [ESP + 0x34]
00acc46a  8a442438  MOV AL,byte ptr [ESP + 0x38]
00acc46e  8a4c243c  MOV CL,byte ptr [ESP + 0x3c]
00acc472  6a01  PUSH 0x1
00acc474  55  PUSH EBP
00acc475  8854241d  MOV byte ptr [ESP + 0x1d],DL
00acc479  8d54241c  LEA EDX,[ESP + 0x1c]
00acc47d  8844241e  MOV byte ptr [ESP + 0x1e],AL
00acc481  8b470c  MOV EAX,dword ptr [EDI + 0xc]
00acc484  52  PUSH EDX
00acc485  884c2423  MOV byte ptr [ESP + 0x23],CL
00acc489  8b4f08  MOV ECX,dword ptr [EDI + 0x8]
00acc48c  50  PUSH EAX
00acc48d  51  PUSH ECX
00acc48e  8b8ed8020000  MOV ECX,dword ptr [ESI + 0x2d8]
00acc494  885c2428  MOV byte ptr [ESP + 0x28],BL
00acc498  e8b3d11300  CALL 0x00c09650
00acc49d  807c241300  CMP byte ptr [ESP + 0x13],0x0
00acc4a2  0f84a0020000  JZ 0x00acc748
00acc4a8  39bee8020000  CMP dword ptr [ESI + 0x2e8],EDI
00acc4ae  0f8414020000  JZ 0x00acc6c8
00acc4b4  8b8ee8020000  MOV ECX,dword ptr [ESI + 0x2e8]
00acc4ba  3bf9  CMP EDI,ECX
00acc4bc  7434  JZ 0x00acc4f2
00acc4be  8d5704  LEA EDX,[EDI + 0x4]
00acc4c1  b801000000  MOV EAX,0x1
00acc4c6  f00fc102  XADD.LOCK dword ptr [EDX],EAX
00acc4ca  85c9  TEST ECX,ECX
00acc4cc  89bee8020000  MOV dword ptr [ESI + 0x2e8],EDI
00acc4d2  741e  JZ 0x00acc4f2
00acc4d4  8d4104  LEA EAX,[ECX + 0x4]
00acc4d7  8bd0  MOV EDX,EAX
00acc4d9  83cfff  OR EDI,0xffffffff
00acc4dc  f00fc13a  XADD.LOCK dword ptr [EDX],EDI
00acc4e0  4f  DEC EDI
00acc4e1  750f  JNZ 0x00acc4f2
00acc4e3  ba01000000  MOV EDX,0x1
00acc4e8  8710  XCHG dword ptr [EAX],EDX
00acc4ea  8b01  MOV EAX,dword ptr [ECX]
00acc4ec  8b10  MOV EDX,dword ptr [EAX]
00acc4ee  6a01  PUSH 0x1
00acc4f0  ffd2  CALL EDX
00acc4f2  f30f100518b2fa00  MOVSS XMM0,dword ptr [0x00fab218]
00acc4fa  f30f11442424  MOVSS dword ptr [ESP + 0x24],XMM0
00acc500  8b4c2424  MOV ECX,dword ptr [ESP + 0x24]
00acc504  898e00030000  MOV dword ptr [ESI + 0x300],ECX
00acc50a  8d9e00030000  LEA EBX,[ESI + 0x300]
00acc510  f30f11442428  MOVSS dword ptr [ESP + 0x28],XMM0
00acc516  8b542428  MOV EDX,dword ptr [ESP + 0x28]
00acc51a  0f57c0  XORPS XMM0,XMM0
00acc51d  33c0  XOR EAX,EAX
00acc51f  895304  MOV dword ptr [EBX + 0x4],EDX
00acc522  894308  MOV dword ptr [EBX + 0x8],EAX
00acc525  8886fc020000  MOV byte ptr [ESI + 0x2fc],AL
00acc52b  8daeec020000  LEA EBP,[ESI + 0x2ec]
00acc531  f30f114500  MOVSS dword ptr [EBP],XMM0
00acc536  f30f114504  MOVSS dword ptr [EBP + 0x4],XMM0
00acc53b  f30f114508  MOVSS dword ptr [EBP + 0x8],XMM0
00acc540  f30f11450c  MOVSS dword ptr [EBP + 0xc],XMM0
00acc545  8b86e8020000  MOV EAX,dword ptr [ESI + 0x2e8]
00acc54b  33ff  XOR EDI,EDI
00acc54d  3bc7  CMP EAX,EDI
00acc54f  0f849c000000  JZ 0x00acc5f1
00acc555  55  PUSH EBP
00acc556  8d4c2434  LEA ECX,[ESP + 0x34]
00acc55a  51  PUSH ECX
00acc55b  50  PUSH EAX
00acc55c  56  PUSH ESI
00acc55d  897c2440  MOV dword ptr [ESP + 0x40],EDI
00acc561  897c2444  MOV dword ptr [ESP + 0x44],EDI
00acc565  897c2448  MOV dword ptr [ESP + 0x48],EDI
00acc569  c744244c04600601  MOV dword ptr [ESP + 0x4c],0x1066004
00acc571  e8aa260400  CALL 0x00b0ec20
00acc576  8b8ee8020000  MOV ECX,dword ptr [ESI + 0x2e8]
00acc57c  83c410  ADD ESP,0x10
00acc57f  3bcf  CMP ECX,EDI
00acc581  745b  JZ 0x00acc5de
00acc583  8b1514a11e01  MOV EDX,dword ptr [0x011ea114]
00acc589  52  PUSH EDX
00acc58a  e8d17ce6ff  CALL 0x00934260
00acc58f  8bf8  MOV EDI,EAX
00acc591  85ff  TEST EDI,EDI
00acc593  7449  JZ 0x00acc5de
00acc595  8bcf  MOV ECX,EDI
00acc597  e8f43ce8ff  CALL 0x00950290
00acc59c  85c0  TEST EAX,EAX
00acc59e  763e  JBE 0x00acc5de
00acc5a0  6a00  PUSH 0x0
00acc5a2  8bcf  MOV ECX,EDI
00acc5a4  e8f73ce8ff  CALL 0x009502a0
00acc5a9  85c0  TEST EAX,EAX
00acc5ab  7431  JZ 0x00acc5de
00acc5ad  8b401c  MOV EAX,dword ptr [EAX + 0x1c]
00acc5b0  85c0  TEST EAX,EAX
00acc5b2  742a  JZ 0x00acc5de
00acc5b4  50  PUSH EAX
00acc5b5  e8c6f5c7ff  CALL 0x0074bb80
00acc5ba  83c404  ADD ESP,0x4
00acc5bd  85c0  TEST EAX,EAX
00acc5bf  741d  JZ 0x00acc5de
00acc5c1  8d8e08030000  LEA ECX,[ESI + 0x308]
00acc5c7  51  PUSH ECX
00acc5c8  8d9604030000  LEA EDX,[ESI + 0x304]
00acc5ce  52  PUSH EDX
00acc5cf  53  PUSH EBX
00acc5d0  8bc8  MOV ECX,EAX
00acc5d2  c686fc02000001  MOV byte ptr [ESI + 0x2fc],0x1
00acc5d9  e802cf1b00  CALL 0x00c894e0
00acc5de  8b442430  MOV EAX,dword ptr [ESP + 0x30]
00acc5e2  33ff  XOR EDI,EDI
00acc5e4  3bc7  CMP EAX,EDI
00acc5e6  7409  JZ 0x00acc5f1
00acc5e8  50  PUSH EAX
00acc5e9  e8f27ea1ff  CALL 0x004e44e0
00acc5ee  83c404  ADD ESP,0x4
00acc5f1  6a38  PUSH 0x38
00acc5f3  e8582b0100  CALL 0x00adf150
00acc5f8  83c404  ADD ESP,0x4
00acc5fb  3bc7  CMP EAX,EDI
00acc5fd  0f843e010000  JZ 0x00acc741
00acc603  c7008c5f0601  MOV dword ptr [EAX],0x1065f8c
00acc609  33c9  XOR ECX,ECX
00acc60b  8d5004  LEA EDX,[EAX + 0x4]
00acc60e  870a  XCHG dword ptr [EDX],ECX
00acc610  f30f100518b2fa00  MOVSS XMM0,dword ptr [0x00fab218]
00acc618  c7008c5f0601  MOV dword ptr [EAX],0x1065f8c
00acc61e  f30f114028  MOVSS dword ptr [EAX + 0x28],XMM0
00acc623  f30f11402c  MOVSS dword ptr [EAX + 0x2c],XMM0
00acc628  c7403000000000  MOV dword ptr [EAX + 0x30],0x0
00acc62f  8b10  MOV EDX,dword ptr [EAX]
00acc631  8bf8  MOV EDI,EAX
00acc633  8bc8  MOV ECX,EAX
00acc635  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00acc638  ffd0  CALL EAX
00acc63a  8b4e48  MOV ECX,dword ptr [ESI + 0x48]
00acc63d  8b442444  MOV EAX,dword ptr [ESP + 0x44]
00acc641  894f08  MOV dword ptr [EDI + 0x8],ECX
00acc644  8b564c  MOV EDX,dword ptr [ESI + 0x4c]
00acc647  89570c  MOV dword ptr [EDI + 0xc],EDX
00acc64a  8b4808  MOV ECX,dword ptr [EAX + 0x8]
00acc64d  894f10  MOV dword ptr [EDI + 0x10],ECX
00acc650  8b500c  MOV EDX,dword ptr [EAX + 0xc]
00acc653  895714  MOV dword ptr [EDI + 0x14],EDX
00acc656  d94500  FLD float ptr [EBP]
00acc659  d95f18  FSTP float ptr [EDI + 0x18]
00acc65c  d94504  FLD float ptr [EBP + 0x4]
00acc65f  d95f1c  FSTP float ptr [EDI + 0x1c]
00acc662  d94508  FLD float ptr [EBP + 0x8]
00acc665  d95f20  FSTP float ptr [EDI + 0x20]
00acc668  d9450c  FLD float ptr [EBP + 0xc]
00acc66b  d95f24  FSTP float ptr [EDI + 0x24]
00acc66e  8a86fc020000  MOV AL,byte ptr [ESI + 0x2fc]
00acc674  884734  MOV byte ptr [EDI + 0x34],AL
00acc677  8b0b  MOV ECX,dword ptr [EBX]
00acc679  894f28  MOV dword ptr [EDI + 0x28],ECX
00acc67c  8b5304  MOV EDX,dword ptr [EBX + 0x4]
00acc67f  89572c  MOV dword ptr [EDI + 0x2c],EDX
00acc682  8b4308  MOV EAX,dword ptr [EBX + 0x8]
00acc685  894730  MOV dword ptr [EDI + 0x30],EAX
00acc688  80bec900000000  CMP byte ptr [ESI + 0xc9],0x0
00acc68f  752a  JNZ 0x00acc6bb
00acc691  83be6403000000  CMP dword ptr [ESI + 0x364],0x0
00acc698  7421  JZ 0x00acc6bb
00acc69a  e851fe97ff  CALL 0x0044c4f0
00acc69f  85c0  TEST EAX,EAX
00acc6a1  7418  JZ 0x00acc6bb
00acc6a3  8b8e64030000  MOV ECX,dword ptr [ESI + 0x364]
00acc6a9  8b10  MOV EDX,dword ptr [EAX]
00acc6ab  8b521c  MOV EDX,dword ptr [EDX + 0x1c]
00acc6ae  51  PUSH ECX
00acc6af  6a00  PUSH 0x0
00acc6b1  57  PUSH EDI
00acc6b2  6889b1800a  PUSH 0xa80b189
00acc6b7  8bc8  MOV ECX,EAX
00acc6b9  ffd2  CALL EDX
00acc6bb  8b07  MOV EAX,dword ptr [EDI]
00acc6bd  8b5008  MOV EDX,dword ptr [EAX + 0x8]
00acc6c0  8bcf  MOV ECX,EDI
00acc6c2  ffd2  CALL EDX
00acc6c4  8b7c2444  MOV EDI,dword ptr [ESP + 0x44]
00acc6c8  33db  XOR EBX,EBX
00acc6ca  53  PUSH EBX
00acc6cb  8bce  MOV ECX,ESI
00acc6cd  e82e76feff  CALL 0x00ab3d00
00acc6d2  399e90020000  CMP dword ptr [ESI + 0x290],EBX
00acc6d8  7470  JZ 0x00acc74a
00acc6da  8b460c  MOV EAX,dword ptr [ESI + 0xc]
00acc6dd  3bc3  CMP EAX,EBX
00acc6df  7469  JZ 0x00acc74a
00acc6e1  8b8054010000  MOV EAX,dword ptr [EAX + 0x154]
00acc6e7  3dc9000000  CMP EAX,0xc9
00acc6ec  740e  JZ 0x00acc6fc
00acc6ee  3dca000000  CMP EAX,0xca
00acc6f3  7407  JZ 0x00acc6fc
00acc6f5  3dcc000000  CMP EAX,0xcc
00acc6fa  754e  JNZ 0x00acc74a
00acc6fc  8d442430  LEA EAX,[ESP + 0x30]
00acc700  50  PUSH EAX
00acc701  56  PUSH ESI
00acc702  895c2438  MOV dword ptr [ESP + 0x38],EBX
00acc706  895c243c  MOV dword ptr [ESP + 0x3c],EBX
00acc70a  895c2440  MOV dword ptr [ESP + 0x40],EBX
00acc70e  c7442444dc5f0601  MOV dword ptr [ESP + 0x44],0x1065fdc
00acc716  e8755a0000  CALL 0x00ad2190
00acc71b  83c408  ADD ESP,0x8
00acc71e  8d4c2430  LEA ECX,[ESP + 0x30]
00acc722  51  PUSH ECX
00acc723  8b8e90020000  MOV ECX,dword ptr [ESI + 0x290]
00acc729  e8e2d8fcff  CALL 0x00a9a010
00acc72e  8b442430  MOV EAX,dword ptr [ESP + 0x30]
00acc732  3bc3  CMP EAX,EBX
00acc734  7414  JZ 0x00acc74a
00acc736  50  PUSH EAX
00acc737  e8a47da1ff  CALL 0x004e44e0
00acc73c  83c404  ADD ESP,0x4
00acc73f  eb09  JMP 0x00acc74a
00acc741  33ff  XOR EDI,EDI
00acc743  e9f2feffff  JMP 0x00acc63a
00acc748  33db  XOR EBX,EBX
00acc74a  e881c51b00  CALL 0x00c88cd0
00acc74f  84c0  TEST AL,AL
00acc751  0f84c9000000  JZ 0x00acc820
00acc757  57  PUSH EDI
00acc758  e8a33e0300  CALL 0x00b00600
00acc75d  83c404  ADD ESP,0x4
00acc760  84c0  TEST AL,AL
00acc762  0f84b8000000  JZ 0x00acc820
00acc768  39be18030000  CMP dword ptr [ESI + 0x318],EDI
00acc76e  0f84ac000000  JZ 0x00acc820
00acc774  8d86f0000000  LEA EAX,[ESI + 0xf0]
00acc77a  50  PUSH EAX
00acc77b  ff152c61f900  CALL dword ptr [0x00f9612c]
00acc781  8b8e18030000  MOV ECX,dword ptr [ESI + 0x318]
00acc787  3bf9  CMP EDI,ECX
00acc789  7434  JZ 0x00acc7bf
00acc78b  8d5704  LEA EDX,[EDI + 0x4]
00acc78e  b801000000  MOV EAX,0x1
00acc793  f00fc102  XADD.LOCK dword ptr [EDX],EAX
00acc797  3bcb  CMP ECX,EBX
00acc799  89be18030000  MOV dword ptr [ESI + 0x318],EDI
00acc79f  741e  JZ 0x00acc7bf
00acc7a1  8d4104  LEA EAX,[ECX + 0x4]
00acc7a4  8bd0  MOV EDX,EAX
00acc7a6  83cdff  OR EBP,0xffffffff
00acc7a9  f00fc12a  XADD.LOCK dword ptr [EDX],EBP
00acc7ad  4d  DEC EBP
00acc7ae  750f  JNZ 0x00acc7bf
00acc7b0  ba01000000  MOV EDX,0x1
00acc7b5  8710  XCHG dword ptr [EAX],EDX
00acc7b7  8b01  MOV EAX,dword ptr [ECX]
00acc7b9  8b10  MOV EDX,dword ptr [EAX]
00acc7bb  6a01  PUSH 0x1
00acc7bd  ffd2  CALL EDX
00acc7bf  8b8e18030000  MOV ECX,dword ptr [ESI + 0x318]
00acc7c5  3bcb  CMP ECX,EBX
00acc7c7  0f8596000000  JNZ 0x00acc863
00acc7cd  399e1c030000  CMP dword ptr [ESI + 0x31c],EBX
00acc7d3  7410  JZ 0x00acc7e5
00acc7d5  80bea503000000  CMP byte ptr [ESI + 0x3a5],0x0
00acc7dc  7407  JZ 0x00acc7e5
00acc7de  c6862003000001  MOV byte ptr [ESI + 0x320],0x1
00acc7e5  8b8e1c030000  MOV ECX,dword ptr [ESI + 0x31c]
00acc7eb  3bcb  CMP ECX,EBX
00acc7ed  7424  JZ 0x00acc813
00acc7ef  8d4104  LEA EAX,[ECX + 0x4]
00acc7f2  899e1c030000  MOV dword ptr [ESI + 0x31c],EBX
00acc7f8  83cbff  OR EBX,0xffffffff
00acc7fb  8bd0  MOV EDX,EAX
00acc7fd  f00fc11a  XADD.LOCK dword ptr [EDX],EBX
00acc801  4b  DEC EBX
00acc802  750f  JNZ 0x00acc813
00acc804  ba01000000  MOV EDX,0x1
00acc809  8710  XCHG dword ptr [EAX],EDX
00acc80b  8b01  MOV EAX,dword ptr [ECX]
00acc80d  8b10  MOV EDX,dword ptr [EAX]
00acc80f  6a01  PUSH 0x1
00acc811  ffd2  CALL EDX
00acc813  8d86f0000000  LEA EAX,[ESI + 0xf0]
00acc819  50  PUSH EAX
00acc81a  ff153061f900  CALL dword ptr [0x00f96130]
00acc820  807c241200  CMP byte ptr [ESP + 0x12],0x0
00acc825  5d  POP EBP
00acc826  5b  POP EBX
00acc827  0f84e5000000  JZ 0x00acc912
00acc82d  8b460c  MOV EAX,dword ptr [ESI + 0xc]
00acc830  81b854010000c8000000  CMP dword ptr [EAX + 0x154],0xc8
00acc83a  0f85bd000000  JNZ 0x00acc8fd
00acc840  57  PUSH EDI
00acc841  e80a400300  CALL 0x00b00850
00acc846  83c404  ADD ESP,0x4
00acc849  84c0  TEST AL,AL
00acc84b  0f84ac000000  JZ 0x00acc8fd
00acc851  8b742410  MOV ESI,dword ptr [ESP + 0x10]
00acc855  6a01  PUSH 0x1
00acc857  8bce  MOV ECX,ESI
00acc859  e802d11b00  CALL 0x00c89960
00acc85e  e99e000000  JMP 0x00acc901
00acc863  a108df1e01  MOV EAX,[0x011edf08]
00acc868  50  PUSH EAX
00acc869  e8f279e6ff  CALL 0x00934260
00acc86e  3bc3  CMP EAX,EBX
00acc870  0f845fffffff  JZ 0x00acc7d5
00acc876  f30f100518b2fa00  MOVSS XMM0,dword ptr [0x00fab218]
00acc87e  8d4c2424  LEA ECX,[ESP + 0x24]
00acc882  51  PUSH ECX
00acc883  8bc8  MOV ECX,EAX
00acc885  f30f11442428  MOVSS dword ptr [ESP + 0x28],XMM0
00acc88b  f30f1144242c  MOVSS dword ptr [ESP + 0x2c],XMM0
00acc891  895c2430  MOV dword ptr [ESP + 0x30],EBX
00acc895  e866cc1b00  CALL 0x00c89500
00acc89a  53  PUSH EBX
00acc89b  53  PUSH EBX
00acc89c  53  PUSH EBX
00acc89d  53  PUSH EBX
00acc89e  689c5f0601  PUSH 0x1065f9c
00acc8a3  6a18  PUSH 0x18
00acc8a5  e8567ca1ff  CALL 0x004e4500
00acc8aa  83c418  ADD ESP,0x18
00acc8ad  3bc3  CMP EAX,EBX
00acc8af  7425  JZ 0x00acc8d6
00acc8b1  d905985f0601  FLD float ptr [0x01065f98]
00acc8b7  83ec0c  SUB ESP,0xc
00acc8ba  d95c2408  FSTP float ptr [ESP + 0x8]
00acc8be  8bc8  MOV ECX,EAX
00acc8c0  d9442434  FLD float ptr [ESP + 0x34]
00acc8c4  d95c2404  FSTP float ptr [ESP + 0x4]
00acc8c8  d9442430  FLD float ptr [ESP + 0x30]
00acc8cc  d91c24  FSTP float ptr [ESP]
00acc8cf  e86ccb0300  CALL 0x00b09440
00acc8d4  eb02  JMP 0x00acc8d8
00acc8d6  33c0  XOR EAX,EAX
00acc8d8  50  PUSH EAX
00acc8d9  8d8e1c030000  LEA ECX,[ESI + 0x31c]
00acc8df  e8cc86daff  CALL 0x00874fb0
00acc8e4  80bea503000000  CMP byte ptr [ESI + 0x3a5],0x0
00acc8eb  0f8422ffffff  JZ 0x00acc813
00acc8f1  c6862003000001  MOV byte ptr [ESI + 0x320],0x1
00acc8f8  e916ffffff  JMP 0x00acc813
00acc8fd  8b742410  MOV ESI,dword ptr [ESP + 0x10]
00acc901  8b4e2c  MOV ECX,dword ptr [ESI + 0x2c]
00acc904  d1e9  SHR ECX,0x1
00acc906  f6c101  TEST CL,0x1
00acc909  7407  JZ 0x00acc912
00acc90b  8bce  MOV ECX,ESI
00acc90d  e85ecd1b00  CALL 0x00c89670
00acc912  5f  POP EDI
00acc913  b001  MOV AL,0x1
00acc915  5e  POP ESI
00acc916  83c430  ADD ESP,0x30
00acc919  c20400  RET 0x4
