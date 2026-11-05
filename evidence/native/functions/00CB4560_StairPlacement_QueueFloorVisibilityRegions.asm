# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined4 StairPlacement_QueueFloorVisibilityRegions(int param_1, float * param_2, float * param_3, char param_4, void * param_5, undefined4 param_6, void * param_7, int * param_8)
Owned ranges: [[00cb4560, 00cb4892] [00cb48a0, 00cb4bbc]]

00cb4560  55  PUSH EBP
00cb4561  8bec  MOV EBP,ESP
00cb4563  83e4f0  AND ESP,0xfffffff0
00cb4566  81ecf4000000  SUB ESP,0xf4
00cb456c  53  PUSH EBX
00cb456d  56  PUSH ESI
00cb456e  57  PUSH EDI
00cb456f  8b7d24  MOV EDI,dword ptr [EBP + 0x24]
00cb4572  85ff  TEST EDI,EDI
00cb4574  0f843a060000  JZ 0x00cb4bb4
00cb457a  8b750c  MOV ESI,dword ptr [EBP + 0xc]
00cb457d  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00cb4580  85d2  TEST EDX,EDX
00cb4582  8b4510  MOV EAX,dword ptr [EBP + 0x10]
00cb4585  0f8cab040000  JL 0x00cb4a36
00cb458b  83780800  CMP dword ptr [EAX + 0x8],0x0
00cb458f  0f8da1040000  JGE 0x00cb4a36
00cb4595  85d2  TEST EDX,EDX
00cb4597  0f8528010000  JNZ 0x00cb46c5
00cb459d  f30f1006  MOVSS XMM0,dword ptr [ESI]
00cb45a1  f30f104e04  MOVSS XMM1,dword ptr [ESI + 0x4]
00cb45a6  f30f105804  MOVSS XMM3,dword ptr [EAX + 0x4]
00cb45ab  f30f1144242c  MOVSS dword ptr [ESP + 0x2c],XMM0
00cb45b1  f30f11442428  MOVSS dword ptr [ESP + 0x28],XMM0
00cb45b7  f30f114c2424  MOVSS dword ptr [ESP + 0x24],XMM1
00cb45bd  f30f11442420  MOVSS dword ptr [ESP + 0x20],XMM0
00cb45c3  0f28542420  MOVAPS XMM2,xmmword ptr [ESP + 0x20]
00cb45c8  0f29942490000000  MOVAPS xmmword ptr [ESP + 0x90],XMM2
00cb45d0  f30f1010  MOVSS XMM2,dword ptr [EAX]
00cb45d4  8b451c  MOV EAX,dword ptr [EBP + 0x1c]
00cb45d7  83f806  CMP EAX,0x6
00cb45da  f30f1154242c  MOVSS dword ptr [ESP + 0x2c],XMM2
00cb45e0  f30f11542428  MOVSS dword ptr [ESP + 0x28],XMM2
00cb45e6  f30f115c2424  MOVSS dword ptr [ESP + 0x24],XMM3
00cb45ec  f30f11542420  MOVSS dword ptr [ESP + 0x20],XMM2
00cb45f2  0f28642420  MOVAPS XMM4,xmmword ptr [ESP + 0x20]
00cb45f7  0f29642470  MOVAPS xmmword ptr [ESP + 0x70],XMM4
00cb45fc  0f8783020000  JA 0x00cb4885
00cb4602  ff2485c04bcb00  JMP dword ptr [EAX*0x4 + 0xcb4bc0]
00cb4609  f30f58057c3ffb00  ADDSS XMM0,dword ptr [0x00fb3f7c]
00cb4611  f30f1144242c  MOVSS dword ptr [ESP + 0x2c],XMM0
00cb4617  f30f11442428  MOVSS dword ptr [ESP + 0x28],XMM0
00cb461d  f30f115c2424  MOVSS dword ptr [ESP + 0x24],XMM3
00cb4623  f30f11442420  MOVSS dword ptr [ESP + 0x20],XMM0
00cb4629  0f28442420  MOVAPS XMM0,xmmword ptr [ESP + 0x20]
00cb462e  0f29442470  MOVAPS xmmword ptr [ESP + 0x70],XMM0
00cb4633  e94d020000  JMP 0x00cb4885
00cb4638  f30f5c057c3ffb00  SUBSS XMM0,dword ptr [0x00fb3f7c]
00cb4640  f30f1144242c  MOVSS dword ptr [ESP + 0x2c],XMM0
00cb4646  f30f11442428  MOVSS dword ptr [ESP + 0x28],XMM0
00cb464c  f30f115c2424  MOVSS dword ptr [ESP + 0x24],XMM3
00cb4652  f30f11442420  MOVSS dword ptr [ESP + 0x20],XMM0
00cb4658  0f28442420  MOVAPS XMM0,xmmword ptr [ESP + 0x20]
00cb465d  0f29442470  MOVAPS xmmword ptr [ESP + 0x70],XMM0
00cb4662  e91e020000  JMP 0x00cb4885
00cb4667  f30f580d7c3ffb00  ADDSS XMM1,dword ptr [0x00fb3f7c]
00cb466f  f30f1154242c  MOVSS dword ptr [ESP + 0x2c],XMM2
00cb4675  f30f11542428  MOVSS dword ptr [ESP + 0x28],XMM2
00cb467b  f30f114c2424  MOVSS dword ptr [ESP + 0x24],XMM1
00cb4681  f30f11542420  MOVSS dword ptr [ESP + 0x20],XMM2
00cb4687  0f28442420  MOVAPS XMM0,xmmword ptr [ESP + 0x20]
00cb468c  0f29442470  MOVAPS xmmword ptr [ESP + 0x70],XMM0
00cb4691  e9ef010000  JMP 0x00cb4885
00cb4696  f30f5c0d7c3ffb00  SUBSS XMM1,dword ptr [0x00fb3f7c]
00cb469e  f30f1154242c  MOVSS dword ptr [ESP + 0x2c],XMM2
00cb46a4  f30f11542428  MOVSS dword ptr [ESP + 0x28],XMM2
00cb46aa  f30f114c2424  MOVSS dword ptr [ESP + 0x24],XMM1
00cb46b0  f30f11542420  MOVSS dword ptr [ESP + 0x20],XMM2
00cb46b6  0f28442420  MOVAPS XMM0,xmmword ptr [ESP + 0x20]
00cb46bb  0f29442470  MOVAPS xmmword ptr [ESP + 0x70],XMM0
00cb46c0  e9c0010000  JMP 0x00cb4885
00cb46c5  f30f1000  MOVSS XMM0,dword ptr [EAX]
00cb46c9  f30f104804  MOVSS XMM1,dword ptr [EAX + 0x4]
00cb46ce  f30f105e04  MOVSS XMM3,dword ptr [ESI + 0x4]
00cb46d3  8b451c  MOV EAX,dword ptr [EBP + 0x1c]
00cb46d6  83f806  CMP EAX,0x6
00cb46d9  f30f1144242c  MOVSS dword ptr [ESP + 0x2c],XMM0
00cb46df  f30f11442428  MOVSS dword ptr [ESP + 0x28],XMM0
00cb46e5  f30f114c2424  MOVSS dword ptr [ESP + 0x24],XMM1
00cb46eb  f30f11442420  MOVSS dword ptr [ESP + 0x20],XMM0
00cb46f1  0f28542420  MOVAPS XMM2,xmmword ptr [ESP + 0x20]
00cb46f6  0f29542470  MOVAPS xmmword ptr [ESP + 0x70],XMM2
00cb46fb  f30f1016  MOVSS XMM2,dword ptr [ESI]
00cb46ff  f30f1154242c  MOVSS dword ptr [ESP + 0x2c],XMM2
00cb4705  f30f11542428  MOVSS dword ptr [ESP + 0x28],XMM2
00cb470b  f30f115c2424  MOVSS dword ptr [ESP + 0x24],XMM3
00cb4711  f30f11542420  MOVSS dword ptr [ESP + 0x20],XMM2
00cb4717  0f28642420  MOVAPS XMM4,xmmword ptr [ESP + 0x20]
00cb471c  0f29a424a0000000  MOVAPS xmmword ptr [ESP + 0xa0],XMM4
00cb4724  0f875b010000  JA 0x00cb4885
00cb472a  ff2485dc4bcb00  JMP dword ptr [EAX*0x4 + 0xcb4bdc]
00cb4731  f30f10257c3ffb00  MOVSS XMM4,dword ptr [0x00fb3f7c]
00cb4739  f30f5cc4  SUBSS XMM0,XMM4
00cb473d  f30f1144242c  MOVSS dword ptr [ESP + 0x2c],XMM0
00cb4743  f30f11442428  MOVSS dword ptr [ESP + 0x28],XMM0
00cb4749  f30f115c2424  MOVSS dword ptr [ESP + 0x24],XMM3
00cb474f  f30f11442420  MOVSS dword ptr [ESP + 0x20],XMM0
00cb4755  0f28442420  MOVAPS XMM0,xmmword ptr [ESP + 0x20]
00cb475a  f30f58d4  ADDSS XMM2,XMM4
00cb475e  0f29842490000000  MOVAPS xmmword ptr [ESP + 0x90],XMM0
00cb4766  f30f1154242c  MOVSS dword ptr [ESP + 0x2c],XMM2
00cb476c  f30f11542428  MOVSS dword ptr [ESP + 0x28],XMM2
00cb4772  f30f114c2424  MOVSS dword ptr [ESP + 0x24],XMM1
00cb4778  f30f11542420  MOVSS dword ptr [ESP + 0x20],XMM2
00cb477e  0f28442420  MOVAPS XMM0,xmmword ptr [ESP + 0x20]
00cb4783  e9f5000000  JMP 0x00cb487d
00cb4788  f30f10257c3ffb00  MOVSS XMM4,dword ptr [0x00fb3f7c]
00cb4790  f30f58c4  ADDSS XMM0,XMM4
00cb4794  f30f1144242c  MOVSS dword ptr [ESP + 0x2c],XMM0
00cb479a  f30f11442428  MOVSS dword ptr [ESP + 0x28],XMM0
00cb47a0  f30f115c2424  MOVSS dword ptr [ESP + 0x24],XMM3
00cb47a6  f30f11442420  MOVSS dword ptr [ESP + 0x20],XMM0
00cb47ac  0f28442420  MOVAPS XMM0,xmmword ptr [ESP + 0x20]
00cb47b1  f30f5cd4  SUBSS XMM2,XMM4
00cb47b5  0f29842490000000  MOVAPS xmmword ptr [ESP + 0x90],XMM0
00cb47bd  f30f1154242c  MOVSS dword ptr [ESP + 0x2c],XMM2
00cb47c3  f30f11542428  MOVSS dword ptr [ESP + 0x28],XMM2
00cb47c9  f30f114c2424  MOVSS dword ptr [ESP + 0x24],XMM1
00cb47cf  f30f11542420  MOVSS dword ptr [ESP + 0x20],XMM2
00cb47d5  0f28442420  MOVAPS XMM0,xmmword ptr [ESP + 0x20]
00cb47da  e99e000000  JMP 0x00cb487d
00cb47df  f30f10257c3ffb00  MOVSS XMM4,dword ptr [0x00fb3f7c]
00cb47e7  f30f1154242c  MOVSS dword ptr [ESP + 0x2c],XMM2
00cb47ed  f30f11542428  MOVSS dword ptr [ESP + 0x28],XMM2
00cb47f3  f30f5ccc  SUBSS XMM1,XMM4
00cb47f7  f30f114c2424  MOVSS dword ptr [ESP + 0x24],XMM1
00cb47fd  f30f11542420  MOVSS dword ptr [ESP + 0x20],XMM2
00cb4803  0f284c2420  MOVAPS XMM1,xmmword ptr [ESP + 0x20]
00cb4808  f30f58dc  ADDSS XMM3,XMM4
00cb480c  f30f1144242c  MOVSS dword ptr [ESP + 0x2c],XMM0
00cb4812  f30f11442428  MOVSS dword ptr [ESP + 0x28],XMM0
00cb4818  f30f115c2424  MOVSS dword ptr [ESP + 0x24],XMM3
00cb481e  f30f11442420  MOVSS dword ptr [ESP + 0x20],XMM0
00cb4824  0f28442420  MOVAPS XMM0,xmmword ptr [ESP + 0x20]
00cb4829  eb4a  JMP 0x00cb4875
00cb482b  f30f10257c3ffb00  MOVSS XMM4,dword ptr [0x00fb3f7c]
00cb4833  f30f1154242c  MOVSS dword ptr [ESP + 0x2c],XMM2
00cb4839  f30f11542428  MOVSS dword ptr [ESP + 0x28],XMM2
00cb483f  f30f58cc  ADDSS XMM1,XMM4
00cb4843  f30f114c2424  MOVSS dword ptr [ESP + 0x24],XMM1
00cb4849  f30f11542420  MOVSS dword ptr [ESP + 0x20],XMM2
00cb484f  0f284c2420  MOVAPS XMM1,xmmword ptr [ESP + 0x20]
00cb4854  f30f5cdc  SUBSS XMM3,XMM4
00cb4858  f30f1144242c  MOVSS dword ptr [ESP + 0x2c],XMM0
00cb485e  f30f11442428  MOVSS dword ptr [ESP + 0x28],XMM0
00cb4864  f30f115c2424  MOVSS dword ptr [ESP + 0x24],XMM3
00cb486a  f30f11442420  MOVSS dword ptr [ESP + 0x20],XMM0
00cb4870  0f28442420  MOVAPS XMM0,xmmword ptr [ESP + 0x20]
00cb4875  0f298c2490000000  MOVAPS xmmword ptr [ESP + 0x90],XMM1
00cb487d  0f29842480000000  MOVAPS xmmword ptr [ESP + 0x80],XMM0
00cb4885  33db  XOR EBX,EBX
00cb4887  85d2  TEST EDX,EDX
00cb4889  0f8c25030000  JL 0x00cb4bb4
00cb488f  33ff  XOR EDI,EDI
00cb4891  eb0d  JMP 0x00cb48a0
00cb4893  8da424000000008d9b00000000  .byte 8da424000000008d9b00000000 ; NONOWNED envelope gap bytes
00cb48a0  0f28543c70  MOVAPS XMM2,xmmword ptr [ESP + EDI*0x1 + 0x70]
00cb48a5  0f28843c90000000  MOVAPS XMM0,xmmword ptr [ESP + EDI*0x1 + 0x90]
00cb48ad  0f28c8  MOVAPS XMM1,XMM0
00cb48b0  0f5dca  MINPS XMM1,XMM2
00cb48b3  0f298c24e0000000  MOVAPS xmmword ptr [ESP + 0xe0],XMM1
00cb48bb  0f5fc2  MAXPS XMM0,XMM2
00cb48be  f30f109424e4000000  MOVSS XMM2,dword ptr [ESP + 0xe4]
00cb48c7  f30f1154246c  MOVSS dword ptr [ESP + 0x6c],XMM2
00cb48cd  d944246c  FLD float ptr [ESP + 0x6c]
00cb48d1  db5c2448  FISTP dword ptr [ESP + 0x48]
00cb48d5  8b442448  MOV EAX,dword ptr [ESP + 0x48]
00cb48d9  0f298c24f0000000  MOVAPS xmmword ptr [ESP + 0xf0],XMM1
00cb48e1  f30f108c24f0000000  MOVSS XMM1,dword ptr [ESP + 0xf0]
00cb48ea  f30f114c2464  MOVSS dword ptr [ESP + 0x64],XMM1
00cb48f0  d9442464  FLD float ptr [ESP + 0x64]
00cb48f4  db5c244c  FISTP dword ptr [ESP + 0x4c]
00cb48f8  8a4c244c  MOV CL,byte ptr [ESP + 0x4c]
00cb48fc  0f298424d0000000  MOVAPS xmmword ptr [ESP + 0xd0],XMM0
00cb4904  f30f108c24d4000000  MOVSS XMM1,dword ptr [ESP + 0xd4]
00cb490d  884c241c  MOV byte ptr [ESP + 0x1c],CL
00cb4911  8844241d  MOV byte ptr [ESP + 0x1d],AL
00cb4915  885c241e  MOV byte ptr [ESP + 0x1e],BL
00cb4919  f30f114c2468  MOVSS dword ptr [ESP + 0x68],XMM1
00cb491f  d9442468  FLD float ptr [ESP + 0x68]
00cb4923  db5c2438  FISTP dword ptr [ESP + 0x38]
00cb4927  8b442438  MOV EAX,dword ptr [ESP + 0x38]
00cb492b  0f29442450  MOVAPS xmmword ptr [ESP + 0x50],XMM0
00cb4930  f30f10442450  MOVSS XMM0,dword ptr [ESP + 0x50]
00cb4936  f30f1144243c  MOVSS dword ptr [ESP + 0x3c],XMM0
00cb493c  d944243c  FLD float ptr [ESP + 0x3c]
00cb4940  db5c2440  FISTP dword ptr [ESP + 0x40]
00cb4944  8a542440  MOV DL,byte ptr [ESP + 0x40]
00cb4948  2c01  SUB AL,0x1
00cb494a  88442419  MOV byte ptr [ESP + 0x19],AL
00cb494e  8d442418  LEA EAX,[ESP + 0x18]
00cb4952  50  PUSH EAX
00cb4953  8d4c2420  LEA ECX,[ESP + 0x20]
00cb4957  80ea01  SUB DL,0x1
00cb495a  51  PUSH ECX
00cb495b  8d4c2428  LEA ECX,[ESP + 0x28]
00cb495f  88542420  MOV byte ptr [ESP + 0x20],DL
00cb4963  885c2422  MOV byte ptr [ESP + 0x22],BL
00cb4967  e8e41ae4ff  CALL 0x00af6450
00cb496c  8d4c2420  LEA ECX,[ESP + 0x20]
00cb4970  e81b1be4ff  CALL 0x00af6490
00cb4975  84c0  TEST AL,AL
00cb4977  755d  JNZ 0x00cb49d6
00cb4979  8da42400000000  LEA ESP,[ESP]
00cb4980  8d4c2420  LEA ECX,[ESP + 0x20]
00cb4984  e8571be4ff  CALL 0x00af64e0
00cb4989  8b4d20  MOV ECX,dword ptr [EBP + 0x20]
00cb498c  8bf0  MOV ESI,EAX
00cb498e  56  PUSH ESI
00cb498f  e8fc1ee6ff  CALL 0x00b16890
00cb4994  84c0  TEST AL,AL
00cb4996  7556  JNZ 0x00cb49ee
00cb4998  668b16  MOV DX,word ptr [ESI]
00cb499b  8b4d14  MOV ECX,dword ptr [EBP + 0x14]
00cb499e  8a4602  MOV AL,byte ptr [ESI + 0x2]
00cb49a1  6689542444  MOV word ptr [ESP + 0x44],DX
00cb49a6  51  PUSH ECX
00cb49a7  8b4d24  MOV ECX,dword ptr [EBP + 0x24]
00cb49aa  8d542448  LEA EDX,[ESP + 0x48]
00cb49ae  52  PUSH EDX
00cb49af  8844244e  MOV byte ptr [ESP + 0x4e],AL
00cb49b3  c644244f0f  MOV byte ptr [ESP + 0x4f],0xf
00cb49b8  e823f40600  CALL 0x00d23de0
00cb49bd  8d4c2420  LEA ECX,[ESP + 0x20]
00cb49c1  e84a1ce4ff  CALL 0x00af6610
00cb49c6  8d4c2420  LEA ECX,[ESP + 0x20]
00cb49ca  e8c11ae4ff  CALL 0x00af6490
00cb49cf  84c0  TEST AL,AL
00cb49d1  74ad  JZ 0x00cb4980
00cb49d3  8b750c  MOV ESI,dword ptr [EBP + 0xc]
00cb49d6  83c301  ADD EBX,0x1
00cb49d9  83c710  ADD EDI,0x10
00cb49dc  3b5e08  CMP EBX,dword ptr [ESI + 0x8]
00cb49df  0f8ebbfeffff  JLE 0x00cb48a0
00cb49e5  b001  MOV AL,0x1
00cb49e7  5f  POP EDI
00cb49e8  5e  POP ESI
00cb49e9  5b  POP EBX
00cb49ea  8be5  MOV ESP,EBP
00cb49ec  5d  POP EBP
00cb49ed  c3  RET
00cb49ee  8b7d18  MOV EDI,dword ptr [EBP + 0x18]
00cb49f1  85ff  TEST EDI,EDI
00cb49f3  7438  JZ 0x00cb4a2d
00cb49f5  8b4508  MOV EAX,dword ptr [EBP + 0x8]
00cb49f8  56  PUSH ESI
00cb49f9  50  PUSH EAX
00cb49fa  6a2c  PUSH 0x2c
00cb49fc  8d8c249c000000  LEA ECX,[ESP + 0x9c]
00cb4a03  e8581fe2ff  CALL 0x00ad6960
00cb4a08  8d8c2490000000  LEA ECX,[ESP + 0x90]
00cb4a0f  51  PUSH ECX
00cb4a10  8bcf  MOV ECX,EDI
00cb4a12  e8593be2ff  CALL 0x00ad8570
00cb4a17  8b4d24  MOV ECX,dword ptr [EBP + 0x24]
00cb4a1a  8b11  MOV EDX,dword ptr [ECX]
00cb4a1c  8b4220  MOV EAX,dword ptr [EDX + 0x20]
00cb4a1f  ffd0  CALL EAX
00cb4a21  8d8c2490000000  LEA ECX,[ESP + 0x90]
00cb4a28  e8a326e2ff  CALL 0x00ad70d0
00cb4a2d  32c0  XOR AL,AL
00cb4a2f  5f  POP EDI
00cb4a30  5e  POP ESI
00cb4a31  5b  POP EBX
00cb4a32  8be5  MOV ESP,EBP
00cb4a34  5d  POP EBP
00cb4a35  c3  RET
00cb4a36  8b4808  MOV ECX,dword ptr [EAX + 0x8]
00cb4a39  83c101  ADD ECX,0x1
00cb4a3c  3bd1  CMP EDX,ECX
00cb4a3e  0f8570010000  JNZ 0x00cb4bb4
00cb4a44  f30f1006  MOVSS XMM0,dword ptr [ESI]
00cb4a48  f30f104e04  MOVSS XMM1,dword ptr [ESI + 0x4]
00cb4a4d  f30f105004  MOVSS XMM2,dword ptr [EAX + 0x4]
00cb4a52  f30f114c2424  MOVSS dword ptr [ESP + 0x24],XMM1
00cb4a58  f30f1008  MOVSS XMM1,dword ptr [EAX]
00cb4a5c  f30f1144242c  MOVSS dword ptr [ESP + 0x2c],XMM0
00cb4a62  f30f11442428  MOVSS dword ptr [ESP + 0x28],XMM0
00cb4a68  f30f11442420  MOVSS dword ptr [ESP + 0x20],XMM0
00cb4a6e  0f28442420  MOVAPS XMM0,xmmword ptr [ESP + 0x20]
00cb4a73  f30f114c242c  MOVSS dword ptr [ESP + 0x2c],XMM1
00cb4a79  f30f114c2428  MOVSS dword ptr [ESP + 0x28],XMM1
00cb4a7f  f30f114c2420  MOVSS dword ptr [ESP + 0x20],XMM1
00cb4a85  f30f11542424  MOVSS dword ptr [ESP + 0x24],XMM2
00cb4a8b  0f28542420  MOVAPS XMM2,xmmword ptr [ESP + 0x20]
00cb4a90  0f28c8  MOVAPS XMM1,XMM0
00cb4a93  0f5dca  MINPS XMM1,XMM2
00cb4a96  0f294c2450  MOVAPS xmmword ptr [ESP + 0x50],XMM1
00cb4a9b  0f5fc2  MAXPS XMM0,XMM2
00cb4a9e  f30f10542454  MOVSS XMM2,dword ptr [ESP + 0x54]
00cb4aa4  f30f1154243c  MOVSS dword ptr [ESP + 0x3c],XMM2
00cb4aaa  d944243c  FLD float ptr [ESP + 0x3c]
00cb4aae  db5c2438  FISTP dword ptr [ESP + 0x38]
00cb4ab2  8b442438  MOV EAX,dword ptr [ESP + 0x38]
00cb4ab6  0f294c2450  MOVAPS xmmword ptr [ESP + 0x50],XMM1
00cb4abb  f30f104c2450  MOVSS XMM1,dword ptr [ESP + 0x50]
00cb4ac1  f30f114c243c  MOVSS dword ptr [ESP + 0x3c],XMM1
00cb4ac7  d944243c  FLD float ptr [ESP + 0x3c]
00cb4acb  db5c2440  FISTP dword ptr [ESP + 0x40]
00cb4acf  0fb64c2440  MOVZX ECX,byte ptr [ESP + 0x40]
00cb4ad4  0f29442450  MOVAPS xmmword ptr [ESP + 0x50],XMM0
00cb4ad9  884c2418  MOV byte ptr [ESP + 0x18],CL
00cb4add  f30f104c2454  MOVSS XMM1,dword ptr [ESP + 0x54]
00cb4ae3  88442419  MOV byte ptr [ESP + 0x19],AL
00cb4ae7  8854241a  MOV byte ptr [ESP + 0x1a],DL
00cb4aeb  f30f114c243c  MOVSS dword ptr [ESP + 0x3c],XMM1
00cb4af1  d944243c  FLD float ptr [ESP + 0x3c]
00cb4af5  db5c2438  FISTP dword ptr [ESP + 0x38]
00cb4af9  8b442438  MOV EAX,dword ptr [ESP + 0x38]
00cb4afd  0f29442450  MOVAPS xmmword ptr [ESP + 0x50],XMM0
00cb4b02  f30f10442450  MOVSS XMM0,dword ptr [ESP + 0x50]
00cb4b08  f30f1144243c  MOVSS dword ptr [ESP + 0x3c],XMM0
00cb4b0e  d944243c  FLD float ptr [ESP + 0x3c]
00cb4b12  db5c2440  FISTP dword ptr [ESP + 0x40]
00cb4b16  8a4c2440  MOV CL,byte ptr [ESP + 0x40]
00cb4b1a  80e901  SUB CL,0x1
00cb4b1d  2c01  SUB AL,0x1
00cb4b1f  384c2418  CMP byte ptr [ESP + 0x18],CL
00cb4b23  884c241c  MOV byte ptr [ESP + 0x1c],CL
00cb4b27  8844241d  MOV byte ptr [ESP + 0x1d],AL
00cb4b2b  8854241e  MOV byte ptr [ESP + 0x1e],DL
00cb4b2f  8d4c241c  LEA ECX,[ESP + 0x1c]
00cb4b33  7c04  JL 0x00cb4b39
00cb4b35  8d4c2418  LEA ECX,[ESP + 0x18]
00cb4b39  8a11  MOV DL,byte ptr [ECX]
00cb4b3b  38442419  CMP byte ptr [ESP + 0x19],AL
00cb4b3f  8854241c  MOV byte ptr [ESP + 0x1c],DL
00cb4b43  8d44241d  LEA EAX,[ESP + 0x1d]
00cb4b47  7c04  JL 0x00cb4b4d
00cb4b49  8d442419  LEA EAX,[ESP + 0x19]
00cb4b4d  8a00  MOV AL,byte ptr [EAX]
00cb4b4f  8d4c241c  LEA ECX,[ESP + 0x1c]
00cb4b53  51  PUSH ECX
00cb4b54  8d54241c  LEA EDX,[ESP + 0x1c]
00cb4b58  52  PUSH EDX
00cb4b59  8d4c2428  LEA ECX,[ESP + 0x28]
00cb4b5d  88442425  MOV byte ptr [ESP + 0x25],AL
00cb4b61  e8ea18e4ff  CALL 0x00af6450
00cb4b66  8d4c2420  LEA ECX,[ESP + 0x20]
00cb4b6a  e82119e4ff  CALL 0x00af6490
00cb4b6f  84c0  TEST AL,AL
00cb4b71  7541  JNZ 0x00cb4bb4
00cb4b73  8d4c2420  LEA ECX,[ESP + 0x20]
00cb4b77  e86419e4ff  CALL 0x00af64e0
00cb4b7c  668b08  MOV CX,word ptr [EAX]
00cb4b7f  8a5002  MOV DL,byte ptr [EAX + 0x2]
00cb4b82  6a01  PUSH 0x1
00cb4b84  8d442448  LEA EAX,[ESP + 0x48]
00cb4b88  66894c2448  MOV word ptr [ESP + 0x48],CX
00cb4b8d  50  PUSH EAX
00cb4b8e  8bcf  MOV ECX,EDI
00cb4b90  8854244e  MOV byte ptr [ESP + 0x4e],DL
00cb4b94  c644244f0f  MOV byte ptr [ESP + 0x4f],0xf
00cb4b99  e842f20600  CALL 0x00d23de0
00cb4b9e  8d4c2420  LEA ECX,[ESP + 0x20]
00cb4ba2  e8691ae4ff  CALL 0x00af6610
00cb4ba7  8d4c2420  LEA ECX,[ESP + 0x20]
00cb4bab  e8e018e4ff  CALL 0x00af6490
00cb4bb0  84c0  TEST AL,AL
00cb4bb2  74bf  JZ 0x00cb4b73
00cb4bb4  5f  POP EDI
00cb4bb5  5e  POP ESI
00cb4bb6  b001  MOV AL,0x1
00cb4bb8  5b  POP EBX
00cb4bb9  8be5  MOV ESP,EBP
00cb4bbb  5d  POP EBP
00cb4bbc  c3  RET
