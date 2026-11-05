# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe SHA256 694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3
Explicit program /TS3W.exe; read-only stored function body, no analyzer/definitions/metadata edits/save.
Paired actual Ghidra pseudocode: 00BFC450_FUN_00bfc450.c
Body [[00bfc450, 00bfc4eb] [00bfc4f0, 00bfc677] [00bfc680, 00bfc7d5]]; envelope exclusive end 00bfc7d6

GHIDRA LISTING (original bytes)
00bfc450  83ec40  SUB ESP,0x40
00bfc453  53  PUSH EBX
00bfc454  55  PUSH EBP
00bfc455  56  PUSH ESI
00bfc456  8bf1  MOV ESI,ECX
00bfc458  f30f10465c  MOVSS XMM0,dword ptr [ESI + 0x5c]
00bfc45d  8b06  MOV EAX,dword ptr [ESI]
00bfc45f  8b5028  MOV EDX,dword ptr [EAX + 0x28]
00bfc462  57  PUSH EDI
00bfc463  6a00  PUSH 0x0
00bfc465  f30f11442418  MOVSS dword ptr [ESP + 0x18],XMM0
00bfc46b  f30f104660  MOVSS XMM0,dword ptr [ESI + 0x60]
00bfc470  6a00  PUSH 0x0
00bfc472  f30f11442418  MOVSS dword ptr [ESP + 0x18],XMM0
00bfc478  ffd2  CALL EDX
00bfc47a  ddd8  FSTP ST0
00bfc47c  8b4674  MOV EAX,dword ptr [ESI + 0x74]
00bfc47f  d9442414  FLD float ptr [ESP + 0x14]
00bfc483  d9442410  FLD float ptr [ESP + 0x10]
00bfc487  8b5c2458  MOV EBX,dword ptr [ESP + 0x58]
00bfc48b  d905b4b5f900  FLD float ptr [0x00f9b5b4]
00bfc491  33c9  XOR ECX,ECX
00bfc493  83e801  SUB EAX,0x1
00bfc496  384c2454  CMP byte ptr [ESP + 0x54],CL
00bfc49a  c744243000000000  MOV dword ptr [ESP + 0x30],0x0
00bfc4a2  0f95c1  SETNZ CL
00bfc4a5  89442434  MOV dword ptr [ESP + 0x34],EAX
00bfc4a9  83c101  ADD ECX,0x1
00bfc4ac  894c2454  MOV dword ptr [ESP + 0x54],ECX
00bfc4b0  33c9  XOR ECX,ECX
00bfc4b2  894c2418  MOV dword ptr [ESP + 0x18],ECX
00bfc4b6  8b448c30  MOV EAX,dword ptr [ESP + ECX*0x4 + 0x30]
00bfc4ba  8bd0  MOV EDX,EAX
00bfc4bc  85d2  TEST EDX,EDX
00bfc4be  8954242c  MOV dword ptr [ESP + 0x2c],EDX
00bfc4c2  db44242c  FILD dword ptr [ESP + 0x2c]
00bfc4c6  89442458  MOV dword ptr [ESP + 0x58],EAX
00bfc4ca  7d06  JGE 0x00bfc4d2
00bfc4cc  d8054899f900  FADD float ptr [0x00f99948]
00bfc4d2  8b5678  MOV EDX,dword ptr [ESI + 0x78]
00bfc4d5  d8c9  FMUL ST1
00bfc4d7  33ff  XOR EDI,EDI
00bfc4d9  83ea01  SUB EDX,0x1
00bfc4dc  d8c3  FADD ST0,ST3
00bfc4de  d95c241c  FSTP float ptr [ESP + 0x1c]
00bfc4e2  0f8436010000  JZ 0x00bfc61e
00bfc4e8  ddda  FSTP ST2
00bfc4ea  eb08  JMP 0x00bfc4f4
00bfc4f0  8b442458  MOV EAX,dword ptr [ESP + 0x58]
00bfc4f4  8bcf  MOV ECX,EDI
00bfc4f6  85c9  TEST ECX,ECX
00bfc4f8  894c242c  MOV dword ptr [ESP + 0x2c],ECX
00bfc4fc  db44242c  FILD dword ptr [ESP + 0x2c]
00bfc500  7d06  JGE 0x00bfc508
00bfc502  d8054899f900  FADD float ptr [0x00f99948]
00bfc508  8b542454  MOV EDX,dword ptr [ESP + 0x54]
00bfc50c  d8ca  FMUL ST2
00bfc50e  8d6f01  LEA EBP,[EDI + 0x1]
00bfc511  8d4c2aff  LEA ECX,[EDX + EBP*0x1 + -0x1]
00bfc515  85c9  TEST ECX,ECX
00bfc517  d8c1  FADD ST0,ST1
00bfc519  894c2428  MOV dword ptr [ESP + 0x28],ECX
00bfc51d  d95c242c  FSTP float ptr [ESP + 0x2c]
00bfc521  db442428  FILD dword ptr [ESP + 0x28]
00bfc525  7d06  JGE 0x00bfc52d
00bfc527  d8054899f900  FADD float ptr [0x00f99948]
00bfc52d  8b16  MOV EDX,dword ptr [ESI]
00bfc52f  deca  FMULP ST2
00bfc531  57  PUSH EDI
00bfc532  50  PUSH EAX
00bfc533  8b4228  MOV EAX,dword ptr [EDX + 0x28]
00bfc536  dec1  FADDP
00bfc538  8bce  MOV ECX,ESI
00bfc53a  d95c242c  FSTP float ptr [ESP + 0x2c]
00bfc53e  ffd0  CALL EAX
00bfc540  8b16  MOV EDX,dword ptr [ESI]
00bfc542  d95c2428  FSTP float ptr [ESP + 0x28]
00bfc546  8b442458  MOV EAX,dword ptr [ESP + 0x58]
00bfc54a  8b5228  MOV EDX,dword ptr [EDX + 0x28]
00bfc54d  55  PUSH EBP
00bfc54e  50  PUSH EAX
00bfc54f  8bce  MOV ECX,ESI
00bfc551  ffd2  CALL EDX
00bfc553  d95c2420  FSTP float ptr [ESP + 0x20]
00bfc557  837c241800  CMP dword ptr [ESP + 0x18],0x0
00bfc55c  f30f1044241c  MOVSS XMM0,dword ptr [ESP + 0x1c]
00bfc562  8b4304  MOV EAX,dword ptr [EBX + 0x4]
00bfc565  f30f11442438  MOVSS dword ptr [ESP + 0x38],XMM0
00bfc56b  f30f11442444  MOVSS dword ptr [ESP + 0x44],XMM0
00bfc571  751a  JNZ 0x00bfc58d
00bfc573  f30f104c2428  MOVSS XMM1,dword ptr [ESP + 0x28]
00bfc579  f30f1054242c  MOVSS XMM2,dword ptr [ESP + 0x2c]
00bfc57f  f30f105c2420  MOVSS XMM3,dword ptr [ESP + 0x20]
00bfc585  f30f10642424  MOVSS XMM4,dword ptr [ESP + 0x24]
00bfc58b  eb18  JMP 0x00bfc5a5
00bfc58d  f30f104c2420  MOVSS XMM1,dword ptr [ESP + 0x20]
00bfc593  f30f10542424  MOVSS XMM2,dword ptr [ESP + 0x24]
00bfc599  f30f105c2428  MOVSS XMM3,dword ptr [ESP + 0x28]
00bfc59f  f30f1064242c  MOVSS XMM4,dword ptr [ESP + 0x2c]
00bfc5a5  3b4308  CMP EAX,dword ptr [EBX + 0x8]
00bfc5a8  f30f1164244c  MOVSS dword ptr [ESP + 0x4c],XMM4
00bfc5ae  f30f115c2448  MOVSS dword ptr [ESP + 0x48],XMM3
00bfc5b4  f30f11542440  MOVSS dword ptr [ESP + 0x40],XMM2
00bfc5ba  f30f114c243c  MOVSS dword ptr [ESP + 0x3c],XMM1
00bfc5c0  7329  JNC 0x00bfc5eb
00bfc5c2  85c0  TEST EAX,EAX
00bfc5c4  8d4818  LEA ECX,[EAX + 0x18]
00bfc5c7  894b04  MOV dword ptr [EBX + 0x4],ECX
00bfc5ca  742c  JZ 0x00bfc5f8
00bfc5cc  f30f1100  MOVSS dword ptr [EAX],XMM0
00bfc5d0  f30f114804  MOVSS dword ptr [EAX + 0x4],XMM1
00bfc5d5  f30f115008  MOVSS dword ptr [EAX + 0x8],XMM2
00bfc5da  f30f116014  MOVSS dword ptr [EAX + 0x14],XMM4
00bfc5df  f30f115810  MOVSS dword ptr [EAX + 0x10],XMM3
00bfc5e4  f30f11400c  MOVSS dword ptr [EAX + 0xc],XMM0
00bfc5e9  eb0d  JMP 0x00bfc5f8
00bfc5eb  8d542438  LEA EDX,[ESP + 0x38]
00bfc5ef  52  PUSH EDX
00bfc5f0  50  PUSH EAX
00bfc5f1  8bcb  MOV ECX,EBX
00bfc5f3  e838ebffff  CALL 0x00bfb130
00bfc5f8  8b4678  MOV EAX,dword ptr [ESI + 0x78]
00bfc5fb  d905b4b5f900  FLD float ptr [0x00f9b5b4]
00bfc601  037c2454  ADD EDI,dword ptr [ESP + 0x54]
00bfc605  d9442410  FLD float ptr [ESP + 0x10]
00bfc609  83e801  SUB EAX,0x1
00bfc60c  3bf8  CMP EDI,EAX
00bfc60e  0f82dcfeffff  JC 0x00bfc4f0
00bfc614  d9442414  FLD float ptr [ESP + 0x14]
00bfc618  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
00bfc61c  d9ca  FXCH ST2
00bfc61e  83c101  ADD ECX,0x1
00bfc621  83f902  CMP ECX,0x2
00bfc624  894c2418  MOV dword ptr [ESP + 0x18],ECX
00bfc628  0f8288feffff  JC 0x00bfc4b6
00bfc62e  8b5678  MOV EDX,dword ptr [ESI + 0x78]
00bfc631  33c9  XOR ECX,ECX
00bfc633  83ea01  SUB EDX,0x1
00bfc636  894c2430  MOV dword ptr [ESP + 0x30],ECX
00bfc63a  89542434  MOV dword ptr [ESP + 0x34],EDX
00bfc63e  894c2458  MOV dword ptr [ESP + 0x58],ECX
00bfc642  8b448c30  MOV EAX,dword ptr [ESP + ECX*0x4 + 0x30]
00bfc646  8bd0  MOV EDX,EAX
00bfc648  85d2  TEST EDX,EDX
00bfc64a  89542428  MOV dword ptr [ESP + 0x28],EDX
00bfc64e  db442428  FILD dword ptr [ESP + 0x28]
00bfc652  8944242c  MOV dword ptr [ESP + 0x2c],EAX
00bfc656  7d06  JGE 0x00bfc65e
00bfc658  d8054899f900  FADD float ptr [0x00f99948]
00bfc65e  8b5674  MOV EDX,dword ptr [ESI + 0x74]
00bfc661  d8c9  FMUL ST1
00bfc663  33ff  XOR EDI,EDI
00bfc665  83ea01  SUB EDX,0x1
00bfc668  d8c2  FADD ST0,ST2
00bfc66a  d95c2420  FSTP float ptr [ESP + 0x20]
00bfc66e  0f8440010000  JZ 0x00bfc7b4
00bfc674  ddd9  FSTP ST1
00bfc676  eb12  JMP 0x00bfc68a
00bfc680  d9442414  FLD float ptr [ESP + 0x14]
00bfc684  8b44242c  MOV EAX,dword ptr [ESP + 0x2c]
00bfc688  d9c9  FXCH
00bfc68a  8bcf  MOV ECX,EDI
00bfc68c  85c9  TEST ECX,ECX
00bfc68e  894c2428  MOV dword ptr [ESP + 0x28],ECX
00bfc692  db442428  FILD dword ptr [ESP + 0x28]
00bfc696  7d06  JGE 0x00bfc69e
00bfc698  d8054899f900  FADD float ptr [0x00f99948]
00bfc69e  8b542454  MOV EDX,dword ptr [ESP + 0x54]
00bfc6a2  d8c9  FMUL ST1
00bfc6a4  8d6f01  LEA EBP,[EDI + 0x1]
00bfc6a7  8d4c2aff  LEA ECX,[EDX + EBP*0x1 + -0x1]
00bfc6ab  85c9  TEST ECX,ECX
00bfc6ad  d8c2  FADD ST0,ST2
00bfc6af  894c2428  MOV dword ptr [ESP + 0x28],ECX
00bfc6b3  d95c241c  FSTP float ptr [ESP + 0x1c]
00bfc6b7  db442428  FILD dword ptr [ESP + 0x28]
00bfc6bb  7d06  JGE 0x00bfc6c3
00bfc6bd  d8054899f900  FADD float ptr [0x00f99948]
00bfc6c3  8b16  MOV EDX,dword ptr [ESI]
00bfc6c5  dec9  FMULP
00bfc6c7  50  PUSH EAX
00bfc6c8  8b4228  MOV EAX,dword ptr [EDX + 0x28]
00bfc6cb  dec1  FADDP
00bfc6cd  57  PUSH EDI
00bfc6ce  8bce  MOV ECX,ESI
00bfc6d0  d95c2430  FSTP float ptr [ESP + 0x30]
00bfc6d4  ffd0  CALL EAX
00bfc6d6  8b44242c  MOV EAX,dword ptr [ESP + 0x2c]
00bfc6da  d95c2418  FSTP float ptr [ESP + 0x18]
00bfc6de  8b16  MOV EDX,dword ptr [ESI]
00bfc6e0  8b5228  MOV EDX,dword ptr [EDX + 0x28]
00bfc6e3  50  PUSH EAX
00bfc6e4  55  PUSH EBP
00bfc6e5  8bce  MOV ECX,ESI
00bfc6e7  ffd2  CALL EDX
00bfc6e9  d95c2424  FSTP float ptr [ESP + 0x24]
00bfc6ed  837c245801  CMP dword ptr [ESP + 0x58],0x1
00bfc6f2  f30f10442420  MOVSS XMM0,dword ptr [ESP + 0x20]
00bfc6f8  8b4304  MOV EAX,dword ptr [EBX + 0x4]
00bfc6fb  f30f11442440  MOVSS dword ptr [ESP + 0x40],XMM0
00bfc701  f30f1144244c  MOVSS dword ptr [ESP + 0x4c],XMM0
00bfc707  751a  JNZ 0x00bfc723
00bfc709  f30f104c241c  MOVSS XMM1,dword ptr [ESP + 0x1c]
00bfc70f  f30f10542418  MOVSS XMM2,dword ptr [ESP + 0x18]
00bfc715  f30f105c2428  MOVSS XMM3,dword ptr [ESP + 0x28]
00bfc71b  f30f10642424  MOVSS XMM4,dword ptr [ESP + 0x24]
00bfc721  eb18  JMP 0x00bfc73b
00bfc723  f30f104c2428  MOVSS XMM1,dword ptr [ESP + 0x28]
00bfc729  f30f10542424  MOVSS XMM2,dword ptr [ESP + 0x24]
00bfc72f  f30f105c241c  MOVSS XMM3,dword ptr [ESP + 0x1c]
00bfc735  f30f10642418  MOVSS XMM4,dword ptr [ESP + 0x18]
00bfc73b  3b4308  CMP EAX,dword ptr [EBX + 0x8]
00bfc73e  f30f11642448  MOVSS dword ptr [ESP + 0x48],XMM4
00bfc744  f30f115c2444  MOVSS dword ptr [ESP + 0x44],XMM3
00bfc74a  f30f1154243c  MOVSS dword ptr [ESP + 0x3c],XMM2
00bfc750  f30f114c2438  MOVSS dword ptr [ESP + 0x38],XMM1
00bfc756  7329  JNC 0x00bfc781
00bfc758  85c0  TEST EAX,EAX
00bfc75a  8d4818  LEA ECX,[EAX + 0x18]
00bfc75d  894b04  MOV dword ptr [EBX + 0x4],ECX
00bfc760  742c  JZ 0x00bfc78e
00bfc762  f30f1108  MOVSS dword ptr [EAX],XMM1
00bfc766  f30f115004  MOVSS dword ptr [EAX + 0x4],XMM2
00bfc76b  f30f114008  MOVSS dword ptr [EAX + 0x8],XMM0
00bfc770  f30f114014  MOVSS dword ptr [EAX + 0x14],XMM0
00bfc775  f30f116010  MOVSS dword ptr [EAX + 0x10],XMM4
00bfc77a  f30f11580c  MOVSS dword ptr [EAX + 0xc],XMM3
00bfc77f  eb0d  JMP 0x00bfc78e
00bfc781  8d542438  LEA EDX,[ESP + 0x38]
00bfc785  52  PUSH EDX
00bfc786  50  PUSH EAX
00bfc787  8bcb  MOV ECX,EBX
00bfc789  e8a2e9ffff  CALL 0x00bfb130
00bfc78e  8b4674  MOV EAX,dword ptr [ESI + 0x74]
00bfc791  d905b4b5f900  FLD float ptr [0x00f9b5b4]
00bfc797  037c2454  ADD EDI,dword ptr [ESP + 0x54]
00bfc79b  83e801  SUB EAX,0x1
00bfc79e  3bf8  CMP EDI,EAX
00bfc7a0  0f82dafeffff  JC 0x00bfc680
00bfc7a6  d9442410  FLD float ptr [ESP + 0x10]
00bfc7aa  8b4c2458  MOV ECX,dword ptr [ESP + 0x58]
00bfc7ae  d9442414  FLD float ptr [ESP + 0x14]
00bfc7b2  d9ca  FXCH ST2
00bfc7b4  83c101  ADD ECX,0x1
00bfc7b7  83f902  CMP ECX,0x2
00bfc7ba  894c2458  MOV dword ptr [ESP + 0x58],ECX
00bfc7be  0f827efeffff  JC 0x00bfc642
00bfc7c4  5f  POP EDI
00bfc7c5  ddd8  FSTP ST0
00bfc7c7  5e  POP ESI
00bfc7c8  ddd9  FSTP ST1
00bfc7ca  5d  POP EBP
00bfc7cb  ddd8  FSTP ST0
00bfc7cd  b001  MOV AL,0x1
00bfc7cf  5b  POP EBX
00bfc7d0  83c440  ADD ESP,0x40
00bfc7d3  c20c00  RET 0xc
