# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: int FloorFeatureGeometry_GetOrAddVertex(void * this, int * param_1, float param_2, float param_3, undefined4 param_4, uint param_5, char param_6)
Owned ranges: [[00a7dc90, 00a7de38]]

00a7dc90  55  PUSH EBP
00a7dc91  8bec  MOV EBP,ESP
00a7dc93  83e4f0  AND ESP,0xfffffff0
00a7dc96  83ec44  SUB ESP,0x44
00a7dc99  f30f10450c  MOVSS XMM0,dword ptr [EBP + 0xc]
00a7dc9e  8b4514  MOV EAX,dword ptr [EBP + 0x14]
00a7dca1  53  PUSH EBX
00a7dca2  56  PUSH ESI
00a7dca3  8b7508  MOV ESI,dword ptr [EBP + 0x8]
00a7dca6  894c2408  MOV dword ptr [ESP + 0x8],ECX
00a7dcaa  57  PUSH EDI
00a7dcab  8d4d18  LEA ECX,[EBP + 0x18]
00a7dcae  51  PUSH ECX
00a7dcaf  8d542414  LEA EDX,[ESP + 0x14]
00a7dcb3  f30f1144241c  MOVSS dword ptr [ESP + 0x1c],XMM0
00a7dcb9  f30f104510  MOVSS XMM0,dword ptr [EBP + 0x10]
00a7dcbe  8d5e20  LEA EBX,[ESI + 0x20]
00a7dcc1  52  PUSH EDX
00a7dcc2  8bcb  MOV ECX,EBX
00a7dcc4  89442428  MOV dword ptr [ESP + 0x28],EAX
00a7dcc8  f30f11442424  MOVSS dword ptr [ESP + 0x24],XMM0
00a7dcce  e8dddcfdff  CALL 0x00a5b9b0
00a7dcd3  8b4b08  MOV ECX,dword ptr [EBX + 0x8]
00a7dcd6  8b5304  MOV EDX,dword ptr [EBX + 0x4]
00a7dcd9  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00a7dcdd  3b048a  CMP EAX,dword ptr [EDX + ECX*0x4]
00a7dce0  740c  JZ 0x00a7dcee
00a7dce2  8b4004  MOV EAX,dword ptr [EAX + 0x4]
00a7dce5  5f  POP EDI
00a7dce6  5e  POP ESI
00a7dce7  5b  POP EBX
00a7dce8  8be5  MOV ESP,EBP
00a7dcea  5d  POP EBP
00a7dceb  c21800  RET 0x18
00a7dcee  8b7e04  MOV EDI,dword ptr [ESI + 0x4]
00a7dcf1  2b3e  SUB EDI,dword ptr [ESI]
00a7dcf3  8b54240c  MOV EDX,dword ptr [ESP + 0xc]
00a7dcf7  8d442440  LEA EAX,[ESP + 0x40]
00a7dcfb  50  PUSH EAX
00a7dcfc  8d4c241c  LEA ECX,[ESP + 0x1c]
00a7dd00  51  PUSH ECX
00a7dd01  8b8a9c020000  MOV ECX,dword ptr [EDX + 0x29c]
00a7dd07  c1ff04  SAR EDI,0x4
00a7dd0a  e851160600  CALL 0x00adf360
00a7dd0f  807d1c00  CMP byte ptr [EBP + 0x1c],0x0
00a7dd13  740a  JZ 0x00a7dd1f
00a7dd15  f30f1005942c0601  MOVSS XMM0,dword ptr [0x01062c94]
00a7dd1d  eb03  JMP 0x00a7dd22
00a7dd1f  0f57c0  XORPS XMM0,XMM0
00a7dd22  0f284c2440  MOVAPS XMM1,xmmword ptr [ESP + 0x40]
00a7dd27  f30f1015ece60601  MOVSS XMM2,dword ptr [0x0106e6ec]
00a7dd2f  f30f10c0  MOVSS XMM0,XMM0
00a7dd33  0fc6c955  SHUFPS XMM1,XMM1,0x55
00a7dd37  0fc6d200  SHUFPS XMM2,XMM2,0x0
00a7dd3b  0f58ca  ADDPS XMM1,XMM2
00a7dd3e  0fc6c000  SHUFPS XMM0,XMM0,0x0
00a7dd42  0f58c1  ADDPS XMM0,XMM1
00a7dd45  8bce  MOV ECX,ESI
00a7dd47  0f29442430  MOVAPS xmmword ptr [ESP + 0x30],XMM0
00a7dd4c  e80ff7ffff  CALL 0x00a7d460
00a7dd51  8b4604  MOV EAX,dword ptr [ESI + 0x4]
00a7dd54  f30f10450c  MOVSS XMM0,dword ptr [EBP + 0xc]
00a7dd59  83e810  SUB EAX,0x10
00a7dd5c  f30f1100  MOVSS dword ptr [EAX],XMM0
00a7dd60  f30f10442430  MOVSS XMM0,dword ptr [ESP + 0x30]
00a7dd66  f30f114004  MOVSS dword ptr [EAX + 0x4],XMM0
00a7dd6b  f30f104510  MOVSS XMM0,dword ptr [EBP + 0x10]
00a7dd70  f30f114008  MOVSS dword ptr [EAX + 0x8],XMM0
00a7dd75  0fb74e60  MOVZX ECX,word ptr [ESI + 0x60]
00a7dd79  33d2  XOR EDX,EDX
00a7dd7b  663bca  CMP CX,DX
00a7dd7e  7433  JZ 0x00a7ddb3
00a7dd80  d94510  FLD float ptr [EBP + 0x10]
00a7dd83  8d500e  LEA EDX,[EAX + 0xe]
00a7dd86  52  PUSH EDX
00a7dd87  83c00c  ADD EAX,0xc
00a7dd8a  50  PUSH EAX
00a7dd8b  0fb7c1  MOVZX EAX,CX
00a7dd8e  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00a7dd92  8b9178020000  MOV EDX,dword ptr [ECX + 0x278]
00a7dd98  83ec08  SUB ESP,0x8
00a7dd9b  8d0480  LEA EAX,[EAX + EAX*0x4]
00a7dd9e  8d4cc2d8  LEA ECX,[EDX + EAX*0x8 + -0x28]
00a7dda2  d95c2404  FSTP float ptr [ESP + 0x4]
00a7dda6  d9450c  FLD float ptr [EBP + 0xc]
00a7dda9  d91c24  FSTP float ptr [ESP]
00a7ddac  e8afeaffff  CALL 0x00a7c860
00a7ddb1  eb08  JMP 0x00a7ddbb
00a7ddb3  6689500c  MOV word ptr [EAX + 0xc],DX
00a7ddb7  6689500e  MOV word ptr [EAX + 0xe],DX
00a7ddbb  8b4518  MOV EAX,dword ptr [EBP + 0x18]
00a7ddbe  c644240c00  MOV byte ptr [ESP + 0xc],0x0
00a7ddc3  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
00a7ddc7  51  PUSH ECX
00a7ddc8  8d542414  LEA EDX,[ESP + 0x14]
00a7ddcc  89442414  MOV dword ptr [ESP + 0x14],EAX
00a7ddd0  52  PUSH EDX
00a7ddd1  8d44242c  LEA EAX,[ESP + 0x2c]
00a7ddd5  50  PUSH EAX
00a7ddd6  8bcb  MOV ECX,EBX
00a7ddd8  897c2420  MOV dword ptr [ESP + 0x20],EDI
00a7dddc  e88f64d7ff  CALL 0x007f4270
00a7dde1  d94510  FLD float ptr [EBP + 0x10]
00a7dde4  83ec0c  SUB ESP,0xc
00a7dde7  d95c2408  FSTP float ptr [ESP + 0x8]
00a7ddeb  83c640  ADD ESI,0x40
00a7ddee  d944243c  FLD float ptr [ESP + 0x3c]
00a7ddf2  8bce  MOV ECX,ESI
00a7ddf4  d95c2404  FSTP float ptr [ESP + 0x4]
00a7ddf8  d9450c  FLD float ptr [EBP + 0xc]
00a7ddfb  d91c24  FSTP float ptr [ESP]
00a7ddfe  e8dde0c0ff  CALL 0x0068bee0
00a7de03  d94510  FLD float ptr [EBP + 0x10]
00a7de06  f30f10442430  MOVSS XMM0,dword ptr [ESP + 0x30]
00a7de0c  f30f5805ece60601  ADDSS XMM0,dword ptr [0x0106e6ec]
00a7de14  83ec0c  SUB ESP,0xc
00a7de17  d95c2408  FSTP float ptr [ESP + 0x8]
00a7de1b  f30f11442404  MOVSS dword ptr [ESP + 0x4],XMM0
00a7de21  d9450c  FLD float ptr [EBP + 0xc]
00a7de24  8bce  MOV ECX,ESI
00a7de26  d91c24  FSTP float ptr [ESP]
00a7de29  e8b2e0c0ff  CALL 0x0068bee0
00a7de2e  8bc7  MOV EAX,EDI
00a7de30  5f  POP EDI
00a7de31  5e  POP ESI
00a7de32  5b  POP EBX
00a7de33  8be5  MOV ESP,EBP
00a7de35  5d  POP EBP
00a7de36  c21800  RET 0x18
