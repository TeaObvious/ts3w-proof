# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete current Ghidra function envelope.
Analyst name: LotImposter_BuildMaterialModel
Paired actual annotated Ghidra pseudocode: 00ADD320_LotImposter_BuildMaterialModel.c
Owned body: [[00add320, 00add639] [00add640, 00add693]]
Envelope bytes=884

GHIDRA LISTING (actual current owned instructions; current memory nonowned bytes explicit)
00add320  83ec4c  SUB ESP,0x4c
00add323  53  PUSH EBX
00add324  55  PUSH EBP
00add325  56  PUSH ESI
00add326  57  PUSH EDI
00add327  33db  XOR EBX,EBX
00add329  53  PUSH EBX
00add32a  53  PUSH EBX
00add32b  53  PUSH EBX
00add32c  53  PUSH EBX
00add32d  6804950601  PUSH 0x1069504
00add332  68e0020000  PUSH 0x2e0
00add337  8bf1  MOV ESI,ECX
00add339  e8c271a0ff  CALL 0x004e4500
00add33e  83c418  ADD ESP,0x18
00add341  3bc3  CMP EAX,EBX
00add343  740a  JZ 0x00add34f
00add345  53  PUSH EBX
00add346  8bc8  MOV ECX,EAX
00add348  e82368bfff  CALL 0x006d3b70
00add34d  eb02  JMP 0x00add351
00add34f  33c0  XOR EAX,EAX
00add351  3bc3  CMP EAX,EBX
00add353  8b6c2460  MOV EBP,dword ptr [ESP + 0x60]
00add357  894500  MOV dword ptr [EBP],EAX
00add35a  750c  JNZ 0x00add368
00add35c  32c0  XOR AL,AL
00add35e  5f  POP EDI
00add35f  5e  POP ESI
00add360  5d  POP EBP
00add361  5b  POP EBX
00add362  83c44c  ADD ESP,0x4c
00add365  c20c00  RET 0xc
00add368  c680c002000001  MOV byte ptr [EAX + 0x2c0],0x1
00add36f  8b4500  MOV EAX,dword ptr [EBP]
00add372  8d4c2460  LEA ECX,[ESP + 0x60]
00add376  51  PUSH ECX
00add377  c680c102000001  MOV byte ptr [EAX + 0x2c1],0x1
00add37e  8b4d00  MOV ECX,dword ptr [EBP]
00add381  6a02  PUSH 0x2
00add383  c644246801  MOV byte ptr [ESP + 0x68],0x1
00add388  e8e38fbfff  CALL 0x006d6370
00add38d  d9050cf0fb00  FLD float ptr [0x00fbf00c]
00add393  8b4d00  MOV ECX,dword ptr [EBP]
00add396  83ec08  SUB ESP,0x8
00add399  d95c2404  FSTP float ptr [ESP + 0x4]
00add39d  d9ee  FLDZ
00add39f  d91c24  FSTP float ptr [ESP]
00add3a2  53  PUSH EBX
00add3a3  e8f838bfff  CALL 0x006d0ca0
00add3a8  d90560930601  FLD float ptr [0x01069360]
00add3ae  8b4d00  MOV ECX,dword ptr [EBP]
00add3b1  83ec08  SUB ESP,0x8
00add3b4  d95c2404  FSTP float ptr [ESP + 0x4]
00add3b8  d905f4c6fc00  FLD float ptr [0x00fcc6f4]
00add3be  d91c24  FSTP float ptr [ESP]
00add3c1  6a01  PUSH 0x1
00add3c3  e8d838bfff  CALL 0x006d0ca0
00add3c8  8b4d00  MOV ECX,dword ptr [EBP]
00add3cb  e8609fbfff  CALL 0x006d7330
00add3d0  8b4d00  MOV ECX,dword ptr [EBP]
00add3d3  53  PUSH EBX
00add3d4  6a02  PUSH 0x2
00add3d6  53  PUSH EBX
00add3d7  e8846fbfff  CALL 0x006d4360
00add3dc  8b4d00  MOV ECX,dword ptr [EBP]
00add3df  53  PUSH EBX
00add3e0  6a05  PUSH 0x5
00add3e2  6a01  PUSH 0x1
00add3e4  e8776fbfff  CALL 0x006d4360
00add3e9  8b4d00  MOV ECX,dword ptr [EBP]
00add3ec  53  PUSH EBX
00add3ed  6a01  PUSH 0x1
00add3ef  6a02  PUSH 0x2
00add3f1  e86a6fbfff  CALL 0x006d4360
00add3f6  8b4d00  MOV ECX,dword ptr [EBP]
00add3f9  e8e28bbfff  CALL 0x006d5fe0
00add3fe  f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
00add406  33ff  XOR EDI,EDI
00add408  f30f1144242c  MOVSS dword ptr [ESP + 0x2c],XMM0
00add40e  f30f11442430  MOVSS dword ptr [ESP + 0x30],XMM0
00add414  f30f11442434  MOVSS dword ptr [ESP + 0x34],XMM0
00add41a  f30f11442438  MOVSS dword ptr [ESP + 0x38],XMM0
00add420  897c2414  MOV dword ptr [ESP + 0x14],EDI
00add424  eb06  JMP 0x00add42c
00add426  8b7c2414  MOV EDI,dword ptr [ESP + 0x14]
00add42a  33db  XOR EBX,EBX
00add42c  8d4c243c  LEA ECX,[ESP + 0x3c]
00add430  e84bc2cbff  CALL 0x00799680
00add435  53  PUSH EBX
00add436  83ec10  SUB ESP,0x10
00add439  3bfb  CMP EDI,EBX
00add43b  8bc4  MOV EAX,ESP
00add43d  68f4940601  PUSH 0x10694f4
00add442  7542  JNZ 0x00add486
00add444  8b5658  MOV EDX,dword ptr [ESI + 0x58]
00add447  8b4e5c  MOV ECX,dword ptr [ESI + 0x5c]
00add44a  8910  MOV dword ptr [EAX],EDX
00add44c  8b5660  MOV EDX,dword ptr [ESI + 0x60]
00add44f  894804  MOV dword ptr [EAX + 0x4],ECX
00add452  8b4e64  MOV ECX,dword ptr [ESI + 0x64]
00add455  895008  MOV dword ptr [EAX + 0x8],EDX
00add458  89480c  MOV dword ptr [EAX + 0xc],ECX
00add45b  e8902ccfff  CALL 0x007d00f0
00add460  83c404  ADD ESP,0x4
00add463  50  PUSH EAX
00add464  8d4c2454  LEA ECX,[ESP + 0x54]
00add468  e8c3c5cbff  CALL 0x00799a30
00add46d  8b5670  MOV EDX,dword ptr [ESI + 0x70]
00add470  8b4e74  MOV ECX,dword ptr [ESI + 0x74]
00add473  53  PUSH EBX
00add474  83ec10  SUB ESP,0x10
00add477  8bc4  MOV EAX,ESP
00add479  8910  MOV dword ptr [EAX],EDX
00add47b  8b5678  MOV EDX,dword ptr [ESI + 0x78]
00add47e  894804  MOV dword ptr [EAX + 0x4],ECX
00add481  8b4e7c  MOV ECX,dword ptr [ESI + 0x7c]
00add484  eb58  JMP 0x00add4de
00add486  8b96a0000000  MOV EDX,dword ptr [ESI + 0xa0]
00add48c  8b8ea4000000  MOV ECX,dword ptr [ESI + 0xa4]
00add492  8910  MOV dword ptr [EAX],EDX
00add494  8b96a8000000  MOV EDX,dword ptr [ESI + 0xa8]
00add49a  894804  MOV dword ptr [EAX + 0x4],ECX
00add49d  8b8eac000000  MOV ECX,dword ptr [ESI + 0xac]
00add4a3  895008  MOV dword ptr [EAX + 0x8],EDX
00add4a6  89480c  MOV dword ptr [EAX + 0xc],ECX
00add4a9  e8422ccfff  CALL 0x007d00f0
00add4ae  83c404  ADD ESP,0x4
00add4b1  50  PUSH EAX
00add4b2  8d4c2454  LEA ECX,[ESP + 0x54]
00add4b6  e875c5cbff  CALL 0x00799a30
00add4bb  8b96b8000000  MOV EDX,dword ptr [ESI + 0xb8]
00add4c1  8b8ebc000000  MOV ECX,dword ptr [ESI + 0xbc]
00add4c7  53  PUSH EBX
00add4c8  83ec10  SUB ESP,0x10
00add4cb  8bc4  MOV EAX,ESP
00add4cd  8910  MOV dword ptr [EAX],EDX
00add4cf  8b96c0000000  MOV EDX,dword ptr [ESI + 0xc0]
00add4d5  894804  MOV dword ptr [EAX + 0x4],ECX
00add4d8  8b8ec4000000  MOV ECX,dword ptr [ESI + 0xc4]
00add4de  895008  MOV dword ptr [EAX + 0x8],EDX
00add4e1  68dc940601  PUSH 0x10694dc
00add4e6  89480c  MOV dword ptr [EAX + 0xc],ECX
00add4e9  e8022ccfff  CALL 0x007d00f0
00add4ee  83c404  ADD ESP,0x4
00add4f1  50  PUSH EAX
00add4f2  8d4c2454  LEA ECX,[ESP + 0x54]
00add4f6  e835c5cbff  CALL 0x00799a30
00add4fb  8b9688000000  MOV EDX,dword ptr [ESI + 0x88]
00add501  8b8e8c000000  MOV ECX,dword ptr [ESI + 0x8c]
00add507  53  PUSH EBX
00add508  83ec10  SUB ESP,0x10
00add50b  8bc4  MOV EAX,ESP
00add50d  8910  MOV dword ptr [EAX],EDX
00add50f  8b9690000000  MOV EDX,dword ptr [ESI + 0x90]
00add515  894804  MOV dword ptr [EAX + 0x4],ECX
00add518  8b8e94000000  MOV ECX,dword ptr [ESI + 0x94]
00add51e  895008  MOV dword ptr [EAX + 0x8],EDX
00add521  68c4940601  PUSH 0x10694c4
00add526  89480c  MOV dword ptr [EAX + 0xc],ECX
00add529  e8c22bcfff  CALL 0x007d00f0
00add52e  83c404  ADD ESP,0x4
00add531  50  PUSH EAX
00add532  8d4c2454  LEA ECX,[ESP + 0x54]
00add536  e8f5c4cbff  CALL 0x00799a30
00add53b  53  PUSH EBX
00add53c  53  PUSH EBX
00add53d  53  PUSH EBX
00add53e  6882d8b200  PUSH 0xb2d882
00add543  8d54242c  LEA EDX,[ESP + 0x2c]
00add547  6864c1ff00  PUSH 0xffc164
00add54c  52  PUSH EDX
00add54d  895c2434  MOV dword ptr [ESP + 0x34],EBX
00add551  895c2438  MOV dword ptr [ESP + 0x38],EBX
00add555  895c243c  MOV dword ptr [ESP + 0x3c],EBX
00add559  895c2440  MOV dword ptr [ESP + 0x40],EBX
00add55d  e8de189dff  CALL 0x004aee40
00add562  83c418  ADD ESP,0x18
00add565  84c0  TEST AL,AL
00add567  7438  JZ 0x00add5a1
00add569  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
00add56d  8b542420  MOV EDX,dword ptr [ESP + 0x20]
00add571  53  PUSH EBX
00add572  83ec10  SUB ESP,0x10
00add575  8bc4  MOV EAX,ESP
00add577  8908  MOV dword ptr [EAX],ECX
00add579  8b4c2438  MOV ECX,dword ptr [ESP + 0x38]
00add57d  895004  MOV dword ptr [EAX + 0x4],EDX
00add580  8b54243c  MOV EDX,dword ptr [ESP + 0x3c]
00add584  894808  MOV dword ptr [EAX + 0x8],ECX
00add587  68ac940601  PUSH 0x10694ac
00add58c  89500c  MOV dword ptr [EAX + 0xc],EDX
00add58f  e85c2bcfff  CALL 0x007d00f0
00add594  83c404  ADD ESP,0x4
00add597  50  PUSH EAX
00add598  8d4c2454  LEA ECX,[ESP + 0x54]
00add59c  e88fc4cbff  CALL 0x00799a30
00add5a1  6a04  PUSH 0x4
00add5a3  8d442430  LEA EAX,[ESP + 0x30]
00add5a7  50  PUSH EAX
00add5a8  682845fe00  PUSH 0xfe4528
00add5ad  e83e2bcfff  CALL 0x007d00f0
00add5b2  83c404  ADD ESP,0x4
00add5b5  50  PUSH EAX
00add5b6  8d4c2448  LEA ECX,[ESP + 0x48]
00add5ba  e811c4cbff  CALL 0x007999d0
00add5bf  8b4604  MOV EAX,dword ptr [ESI + 0x4]
00add5c2  3bc3  CMP EAX,EBX
00add5c4  7427  JZ 0x00add5ed
00add5c6  80b8bc04000000  CMP byte ptr [EAX + 0x4bc],0x0
00add5cd  741e  JZ 0x00add5ed
00add5cf  6a01  PUSH 0x1
00add5d1  68f898f900  PUSH 0xf998f8
00add5d6  689c940601  PUSH 0x106949c
00add5db  e8102bcfff  CALL 0x007d00f0
00add5e0  83c404  ADD ESP,0x4
00add5e3  50  PUSH EAX
00add5e4  8d4c2448  LEA ECX,[ESP + 0x48]
00add5e8  e8e3c3cbff  CALL 0x007999d0
00add5ed  8b542468  MOV EDX,dword ptr [ESP + 0x68]
00add5f1  8d4c243c  LEA ECX,[ESP + 0x3c]
00add5f5  51  PUSH ECX
00add5f6  8b4d00  MOV ECX,dword ptr [EBP]
00add5f9  52  PUSH EDX
00add5fa  e8c16ebfff  CALL 0x006d44c0
00add5ff  53  PUSH EBX
00add600  57  PUSH EDI
00add601  8d442468  LEA EAX,[ESP + 0x68]
00add605  50  PUSH EAX
00add606  8d4c241f  LEA ECX,[ESP + 0x1f]
00add60a  51  PUSH ECX
00add60b  8b4d00  MOV ECX,dword ptr [EBP]
00add60e  8d542428  LEA EDX,[ESP + 0x28]
00add612  52  PUSH EDX
00add613  c644247401  MOV byte ptr [ESP + 0x74],0x1
00add618  c644242701  MOV byte ptr [ESP + 0x27],0x1
00add61d  c744242c03000000  MOV dword ptr [ESP + 0x2c],0x3
00add625  e8869dbfff  CALL 0x006d73b0
00add62a  8b442464  MOV EAX,dword ptr [ESP + 0x64]
00add62e  8b7804  MOV EDI,dword ptr [EAX + 0x4]
00add631  2b38  SUB EDI,dword ptr [EAX]
00add633  c1ff02  SAR EDI,0x2
00add636  7423  JZ 0x00add65b
00add638  eb0a  JMP 0x00add644
00add63a  8d  .byte nonowned gap
00add63b  9b  .byte nonowned gap
00add63c  00  .byte nonowned gap
00add63d  00  .byte nonowned gap
00add63e  00  .byte nonowned gap
00add63f  00  .byte nonowned gap
00add640  8b442464  MOV EAX,dword ptr [ESP + 0x64]
00add644  8b00  MOV EAX,dword ptr [EAX]
00add646  8b0c98  MOV ECX,dword ptr [EAX + EBX*0x4]
00add649  8b11  MOV EDX,dword ptr [ECX]
00add64b  8b4500  MOV EAX,dword ptr [EBP]
00add64e  8b5218  MOV EDX,dword ptr [EDX + 0x18]
00add651  50  PUSH EAX
00add652  ffd2  CALL EDX
00add654  83c301  ADD EBX,0x1
00add657  3bdf  CMP EBX,EDI
00add659  72e5  JC 0x00add640
00add65b  8b4d00  MOV ECX,dword ptr [EBP]
00add65e  e80d44bfff  CALL 0x006d1a70
00add663  8d4c243c  LEA ECX,[ESP + 0x3c]
00add667  e844c0cbff  CALL 0x007996b0
00add66c  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00add670  83c001  ADD EAX,0x1
00add673  83f802  CMP EAX,0x2
00add676  89442414  MOV dword ptr [ESP + 0x14],EAX
00add67a  0f82a6fdffff  JC 0x00add426
00add680  8b4d00  MOV ECX,dword ptr [EBP]
00add683  e8989cbfff  CALL 0x006d7320
00add688  5f  POP EDI
00add689  5e  POP ESI
00add68a  5d  POP EBP
00add68b  b001  MOV AL,0x1
00add68d  5b  POP EBX
00add68e  83c44c  ADD ESP,0x4c
00add691  c20c00  RET 0xc

Owned instructions=273 owned bytes=878 nonowned bytes=6
