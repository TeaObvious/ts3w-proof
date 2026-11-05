# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool Geometry_PolygonsIntersectWithBounds(undefined4 * param_1, float * param_2, undefined4 * param_3, float * param_4)
Owned ranges: [[007ceaa0, 007ced17]]

007ceaa0  8b442408  MOV EAX,dword ptr [ESP + 0x8]
007ceaa4  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
007ceaa8  f30f104808  MOVSS XMM1,dword ptr [EAX + 0x8]
007ceaad  f30f1019  MOVSS XMM3,dword ptr [ECX]
007ceab1  83ec14  SUB ESP,0x14
007ceab4  0f2fcb  COMISS XMM1,XMM3
007ceab7  7624  JBE 0x007ceadd
007ceab9  f30f1010  MOVSS XMM2,dword ptr [EAX]
007ceabd  f30f104108  MOVSS XMM0,dword ptr [ECX + 0x8]
007ceac2  0f2fc2  COMISS XMM0,XMM2
007ceac5  7616  JBE 0x007ceadd
007ceac7  f30f10600c  MOVSS XMM4,dword ptr [EAX + 0xc]
007ceacc  0f2f6104  COMISS XMM4,dword ptr [ECX + 0x4]
007cead0  760b  JBE 0x007ceadd
007cead2  f30f10610c  MOVSS XMM4,dword ptr [ECX + 0xc]
007cead7  0f2f6004  COMISS XMM4,dword ptr [EAX + 0x4]
007ceadb  7706  JA 0x007ceae3
007ceadd  32c0  XOR AL,AL
007ceadf  83c414  ADD ESP,0x14
007ceae2  c3  RET
007ceae3  8b442418  MOV EAX,dword ptr [ESP + 0x18]
007ceae7  53  PUSH EBX
007ceae8  55  PUSH EBP
007ceae9  8b6804  MOV EBP,dword ptr [EAX + 0x4]
007ceaec  56  PUSH ESI
007ceaed  8b30  MOV ESI,dword ptr [EAX]
007ceaef  8b44242c  MOV EAX,dword ptr [ESP + 0x2c]
007ceaf3  8b10  MOV EDX,dword ptr [EAX]
007ceaf5  8b5804  MOV EBX,dword ptr [EAX + 0x4]
007ceaf8  2bee  SUB EBP,ESI
007ceafa  2bda  SUB EBX,EDX
007ceafc  c1fd03  SAR EBP,0x3
007ceaff  c1fb03  SAR EBX,0x3
007ceb02  85ed  TEST EBP,EBP
007ceb04  896c241c  MOV dword ptr [ESP + 0x1c],EBP
007ceb08  89542428  MOV dword ptr [ESP + 0x28],EDX
007ceb0c  0f84fd010000  JZ 0x007ced0f
007ceb12  85db  TEST EBX,EBX
007ceb14  0f84f5010000  JZ 0x007ced0f
007ceb1a  f30f5cc3  SUBSS XMM0,XMM3
007ceb1e  f30f5cca  SUBSS XMM1,XMM2
007ceb22  0f2fc8  COMISS XMM1,XMM0
007ceb25  f30f11442430  MOVSS dword ptr [ESP + 0x30],XMM0
007ceb2b  f30f114c240c  MOVSS dword ptr [ESP + 0xc],XMM1
007ceb31  8d442430  LEA EAX,[ESP + 0x30]
007ceb35  7704  JA 0x007ceb3b
007ceb37  8d44240c  LEA EAX,[ESP + 0xc]
007ceb3b  f30f1000  MOVSS XMM0,dword ptr [EAX]
007ceb3f  f30f5905b435fb00  MULSS XMM0,dword ptr [0x00fb35b4]
007ceb47  f30f100d508b0101  MOVSS XMM1,dword ptr [0x01018b50]
007ceb4f  0f2fc8  COMISS XMM1,XMM0
007ceb52  f30f11442430  MOVSS dword ptr [ESP + 0x30],XMM0
007ceb58  b8508b0101  MOV EAX,0x1018b50
007ceb5d  7704  JA 0x007ceb63
007ceb5f  8d442430  LEA EAX,[ESP + 0x30]
007ceb63  f30f1000  MOVSS XMM0,dword ptr [EAX]
007ceb67  57  PUSH EDI
007ceb68  33ff  XOR EDI,EDI
007ceb6a  85ed  TEST EBP,EBP
007ceb6c  f30f11442434  MOVSS dword ptr [ESP + 0x34],XMM0
007ceb72  0f8645010000  JBE 0x007cecbd
007ceb78  d9442434  FLD float ptr [ESP + 0x34]
007ceb7c  8d4f01  LEA ECX,[EDI + 0x1]
007ceb7f  8bc1  MOV EAX,ECX
007ceb81  3bc5  CMP EAX,EBP
007ceb83  894c241c  MOV dword ptr [ESP + 0x1c],ECX
007ceb87  7502  JNZ 0x007ceb8b
007ceb89  33c0  XOR EAX,EAX
007ceb8b  85db  TEST EBX,EBX
007ceb8d  0f861e010000  JBE 0x007cecb1
007ceb93  f30f1054c604  MOVSS XMM2,dword ptr [ESI + EAX*0x8 + 0x4]
007ceb99  f30f101cfe  MOVSS XMM3,dword ptr [ESI + EDI*0x8]
007ceb9e  f30f103cc6  MOVSS XMM7,dword ptr [ESI + EAX*0x8]
007ceba3  f30f11542410  MOVSS dword ptr [ESP + 0x10],XMM2
007ceba9  f30f5c54fe04  SUBSS XMM2,dword ptr [ESI + EDI*0x8 + 0x4]
007cebaf  f30f11542414  MOVSS dword ptr [ESP + 0x14],XMM2
007cebb5  f30f115c2418  MOVSS dword ptr [ESP + 0x18],XMM3
007cebbb  f30f5cfb  SUBSS XMM7,XMM3
007cebbf  b901000000  MOV ECX,0x1
007cebc4  3bcb  CMP ECX,EBX
007cebc6  8bc1  MOV EAX,ECX
007cebc8  7502  JNZ 0x007cebcc
007cebca  33c0  XOR EAX,EAX
007cebcc  8b6c242c  MOV EBP,dword ptr [ESP + 0x2c]
007cebd0  f30f1002  MOVSS XMM0,dword ptr [EDX]
007cebd4  f30f1074c504  MOVSS XMM6,dword ptr [EBP + EAX*0x8 + 0x4]
007cebda  f30f104a04  MOVSS XMM1,dword ptr [EDX + 0x4]
007cebdf  0f28e8  MOVAPS XMM5,XMM0
007cebe2  f30f5c6cc500  SUBSS XMM5,dword ptr [EBP + EAX*0x8]
007cebe8  f30f5cce  SUBSS XMM1,XMM6
007cebec  0f28e2  MOVAPS XMM4,XMM2
007cebef  f30f59cf  MULSS XMM1,XMM7
007cebf3  f30f59e5  MULSS XMM4,XMM5
007cebf7  f30f5ccc  SUBSS XMM1,XMM4
007cebfb  f30f114c2434  MOVSS dword ptr [ESP + 0x34],XMM1
007cec01  d9442434  FLD float ptr [ESP + 0x34]
007cec05  d9e1  FABS
007cec07  d9c9  FXCH
007cec09  dbf1  FCOMI ST0,ST1
007cec0b  ddd9  FSTP ST1
007cec0d  0f8781000000  JA 0x007cec94
007cec13  f30f1015f898f900  MOVSS XMM2,dword ptr [0x00f998f8]
007cec1b  f30f1064fe04  MOVSS XMM4,dword ptr [ESI + EDI*0x8 + 0x4]
007cec21  f30f5ed1  DIVSS XMM2,XMM1
007cec25  f30f104a04  MOVSS XMM1,dword ptr [EDX + 0x4]
007cec2a  f30f5cc3  SUBSS XMM0,XMM3
007cec2e  0f28d8  MOVAPS XMM3,XMM0
007cec31  0f28c1  MOVAPS XMM0,XMM1
007cec34  f30f5cce  SUBSS XMM1,XMM6
007cec38  f30f5cc4  SUBSS XMM0,XMM4
007cec3c  0f28f0  MOVAPS XMM6,XMM0
007cec3f  f30f59f5  MULSS XMM6,XMM5
007cec43  f30f106c2410  MOVSS XMM5,dword ptr [ESP + 0x10]
007cec49  f30f59cb  MULSS XMM1,XMM3
007cec4d  f30f59c7  MULSS XMM0,XMM7
007cec51  f30f5cec  SUBSS XMM5,XMM4
007cec55  f30f59eb  MULSS XMM5,XMM3
007cec59  f30f5cce  SUBSS XMM1,XMM6
007cec5d  f30f59ca  MULSS XMM1,XMM2
007cec61  f30f5cc5  SUBSS XMM0,XMM5
007cec65  f30f59c2  MULSS XMM0,XMM2
007cec69  0f57d2  XORPS XMM2,XMM2
007cec6c  0f2fca  COMISS XMM1,XMM2
007cec6f  7217  JC 0x007cec88
007cec71  f30f101df898f900  MOVSS XMM3,dword ptr [0x00f998f8]
007cec79  0f2fd9  COMISS XMM3,XMM1
007cec7c  720a  JC 0x007cec88
007cec7e  0f2fc2  COMISS XMM0,XMM2
007cec81  7205  JC 0x007cec88
007cec83  0f2fd8  COMISS XMM3,XMM0
007cec86  737b  JNC 0x007ced03
007cec88  f30f10542414  MOVSS XMM2,dword ptr [ESP + 0x14]
007cec8e  f30f105c2418  MOVSS XMM3,dword ptr [ESP + 0x18]
007cec94  83c101  ADD ECX,0x1
007cec97  8d41ff  LEA EAX,[ECX + -0x1]
007cec9a  83c208  ADD EDX,0x8
007cec9d  3bc3  CMP EAX,EBX
007cec9f  0f821fffffff  JC 0x007cebc4
007ceca5  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
007ceca9  8b6c2420  MOV EBP,dword ptr [ESP + 0x20]
007cecad  8b54242c  MOV EDX,dword ptr [ESP + 0x2c]
007cecb1  8bf9  MOV EDI,ECX
007cecb3  3bfd  CMP EDI,EBP
007cecb5  0f82c1feffff  JC 0x007ceb7c
007cecbb  ddd8  FSTP ST0
007cecbd  53  PUSH EBX
007cecbe  52  PUSH EDX
007cecbf  56  PUSH ESI
007cecc0  e81bedffff  CALL 0x007cd9e0
007cecc5  83c40c  ADD ESP,0xc
007cecc8  84c0  TEST AL,AL
007cecca  7539  JNZ 0x007ced05
007ceccc  8b4c242c  MOV ECX,dword ptr [ESP + 0x2c]
007cecd0  55  PUSH EBP
007cecd1  56  PUSH ESI
007cecd2  51  PUSH ECX
007cecd3  e808edffff  CALL 0x007cd9e0
007cecd8  83c40c  ADD ESP,0xc
007cecdb  84c0  TEST AL,AL
007cecdd  7526  JNZ 0x007ced05
007cecdf  3beb  CMP EBP,EBX
007cece1  7516  JNZ 0x007cecf9
007cece3  8b542430  MOV EDX,dword ptr [ESP + 0x30]
007cece7  8b442428  MOV EAX,dword ptr [ESP + 0x28]
007ceceb  52  PUSH EDX
007cecec  50  PUSH EAX
007ceced  e8aefcffff  CALL 0x007ce9a0
007cecf2  83c408  ADD ESP,0x8
007cecf5  84c0  TEST AL,AL
007cecf7  750c  JNZ 0x007ced05
007cecf9  5f  POP EDI
007cecfa  5e  POP ESI
007cecfb  5d  POP EBP
007cecfc  32c0  XOR AL,AL
007cecfe  5b  POP EBX
007cecff  83c414  ADD ESP,0x14
007ced02  c3  RET
007ced03  ddd8  FSTP ST0
007ced05  5f  POP EDI
007ced06  5e  POP ESI
007ced07  5d  POP EBP
007ced08  b001  MOV AL,0x1
007ced0a  5b  POP EBX
007ced0b  83c414  ADD ESP,0x14
007ced0e  c3  RET
007ced0f  5e  POP ESI
007ced10  5d  POP EBP
007ced11  32c0  XOR AL,AL
007ced13  5b  POP EBX
007ced14  83c414  ADD ESP,0x14
007ced17  c3  RET
