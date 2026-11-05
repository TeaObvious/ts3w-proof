# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void TerrainBrush_ComputeRectangleSpans(void * this, float * cornersXZ, int * spanLow, int * spanHigh, int * firstRow, int * lastRow)
Owned ranges: [[00d18e60, 00d18e8c] [00d18e90, 00d19063]]

00d18e60  83ec1c  SUB ESP,0x1c
00d18e63  53  PUSH EBX
00d18e64  55  PUSH EBP
00d18e65  8b6c2428  MOV EBP,dword ptr [ESP + 0x28]
00d18e69  56  PUSH ESI
00d18e6a  8b742438  MOV ESI,dword ptr [ESP + 0x38]
00d18e6e  57  PUSH EDI
00d18e6f  8b7c2440  MOV EDI,dword ptr [ESP + 0x40]
00d18e73  c706ffffff7f  MOV dword ptr [ESI],0x7fffffff
00d18e79  894c2428  MOV dword ptr [ESP + 0x28],ECX
00d18e7d  c70700000080  MOV dword ptr [EDI],0x80000000
00d18e83  8d5504  LEA EDX,[EBP + 0x4]
00d18e86  bb04000000  MOV EBX,0x4
00d18e8b  eb03  JMP 0x00d18e90
00d18e8d  8d4900  .byte 8d4900 ; NONOWNED envelope gap bytes
00d18e90  f30f1002  MOVSS XMM0,dword ptr [EDX]
00d18e94  f30f11442418  MOVSS dword ptr [ESP + 0x18],XMM0
00d18e9a  d9442418  FLD float ptr [ESP + 0x18]
00d18e9e  db542410  FIST dword ptr [ESP + 0x10]
00d18ea2  db442410  FILD dword ptr [ESP + 0x10]
00d18ea6  dee9  FSUBP
00d18ea8  d95c2430  FSTP float ptr [ESP + 0x30]
00d18eac  817c243001000080  CMP dword ptr [ESP + 0x30],0x80000001
00d18eb4  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00d18eb8  83d0ff  ADC EAX,-0x1
00d18ebb  3b07  CMP EAX,dword ptr [EDI]
00d18ebd  7e02  JLE 0x00d18ec1
00d18ebf  8907  MOV dword ptr [EDI],EAX
00d18ec1  3b06  CMP EAX,dword ptr [ESI]
00d18ec3  7d02  JGE 0x00d18ec7
00d18ec5  8906  MOV dword ptr [ESI],EAX
00d18ec7  83c208  ADD EDX,0x8
00d18eca  83eb01  SUB EBX,0x1
00d18ecd  75c1  JNZ 0x00d18e90
00d18ecf  8b4114  MOV EAX,dword ptr [ECX + 0x14]
00d18ed2  3906  CMP dword ptr [ESI],EAX
00d18ed4  7d02  JGE 0x00d18ed8
00d18ed6  8906  MOV dword ptr [ESI],EAX
00d18ed8  8b411c  MOV EAX,dword ptr [ECX + 0x1c]
00d18edb  3907  CMP dword ptr [EDI],EAX
00d18edd  7e02  JLE 0x00d18ee1
00d18edf  8907  MOV dword ptr [EDI],EAX
00d18ee1  8b06  MOV EAX,dword ptr [ESI]
00d18ee3  3b07  CMP EAX,dword ptr [EDI]
00d18ee5  89442430  MOV dword ptr [ESP + 0x30],EAX
00d18ee9  0f8f6b010000  JG 0x00d1905a
00d18eef  8b4c2438  MOV ECX,dword ptr [ESP + 0x38]
00d18ef3  eb08  JMP 0x00d18efd
00d18ef5  8b442430  MOV EAX,dword ptr [ESP + 0x30]
00d18ef9  8b74243c  MOV ESI,dword ptr [ESP + 0x3c]
00d18efd  8bd0  MOV EDX,EAX
00d18eff  2b16  SUB EDX,dword ptr [ESI]
00d18f01  8b742434  MOV ESI,dword ptr [ESP + 0x34]
00d18f05  c70496ffffff7f  MOV dword ptr [ESI + EDX*0x4],0x7fffffff
00d18f0c  c7049100000080  MOV dword ptr [ECX + EDX*0x4],0x80000000
00d18f13  f30f2ad0  CVTSI2SS XMM2,EAX
00d18f17  33f6  XOR ESI,ESI
00d18f19  8da42400000000  LEA ESP,[ESP]
00d18f20  8d7e01  LEA EDI,[ESI + 0x1]
00d18f23  897c2424  MOV dword ptr [ESP + 0x24],EDI
00d18f27  81e703000080  AND EDI,0x80000003
00d18f2d  7905  JNS 0x00d18f34
00d18f2f  4f  DEC EDI
00d18f30  83cffc  OR EDI,0xfffffffc
00d18f33  47  INC EDI
00d18f34  f30f1044f504  MOVSS XMM0,dword ptr [EBP + ESI*0x8 + 0x4]
00d18f3a  0f2fd0  COMISS XMM2,XMM0
00d18f3d  8d4504  LEA EAX,[EBP + 0x4]
00d18f40  720f  JC 0x00d18f51
00d18f42  f30f104cfd04  MOVSS XMM1,dword ptr [EBP + EDI*0x8 + 0x4]
00d18f48  0f2fca  COMISS XMM1,XMM2
00d18f4b  8d5cfd04  LEA EBX,[EBP + EDI*0x8 + 0x4]
00d18f4f  7718  JA 0x00d18f69
00d18f51  0f2f54fd04  COMISS XMM2,dword ptr [EBP + EDI*0x8 + 0x4]
00d18f56  8d5cfd04  LEA EBX,[EBP + EDI*0x8 + 0x4]
00d18f5a  0f82b2000000  JC 0x00d19012
00d18f60  0f2fc2  COMISS XMM0,XMM2
00d18f63  0f86a9000000  JBE 0x00d19012
00d18f69  f30f1044f500  MOVSS XMM0,dword ptr [EBP + ESI*0x8]
00d18f6f  0f2e44fd00  UCOMISS XMM0,dword ptr [EBP + EDI*0x8]
00d18f74  9f  LAHF
00d18f75  f6c444  TEST AH,0x44
00d18f78  7a29  JP 0x00d18fa3
00d18f7a  f30f1144241c  MOVSS dword ptr [ESP + 0x1c],XMM0
00d18f80  d944241c  FLD float ptr [ESP + 0x1c]
00d18f84  db542410  FIST dword ptr [ESP + 0x10]
00d18f88  db442410  FILD dword ptr [ESP + 0x10]
00d18f8c  dee9  FSUBP
00d18f8e  d95c2438  FSTP float ptr [ESP + 0x38]
00d18f92  817c243801000080  CMP dword ptr [ESP + 0x38],0x80000001
00d18f9a  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00d18f9e  83d0ff  ADC EAX,-0x1
00d18fa1  eb5b  JMP 0x00d18ffe
00d18fa3  f30f1044f500  MOVSS XMM0,dword ptr [EBP + ESI*0x8]
00d18fa9  f30f104cf504  MOVSS XMM1,dword ptr [EBP + ESI*0x8 + 0x4]
00d18faf  f30f105cfd00  MOVSS XMM3,dword ptr [EBP + EDI*0x8]
00d18fb5  f30f1023  MOVSS XMM4,dword ptr [EBX]
00d18fb9  8d4504  LEA EAX,[EBP + 0x4]
00d18fbc  f30f5cd8  SUBSS XMM3,XMM0
00d18fc0  f30f5ce1  SUBSS XMM4,XMM1
00d18fc4  f30f5edc  DIVSS XMM3,XMM4
00d18fc8  0f28e2  MOVAPS XMM4,XMM2
00d18fcb  f30f5ce1  SUBSS XMM4,XMM1
00d18fcf  f30f59dc  MULSS XMM3,XMM4
00d18fd3  f30f58d8  ADDSS XMM3,XMM0
00d18fd7  f30f115c2420  MOVSS dword ptr [ESP + 0x20],XMM3
00d18fdd  d9442420  FLD float ptr [ESP + 0x20]
00d18fe1  db542418  FIST dword ptr [ESP + 0x18]
00d18fe5  db442418  FILD dword ptr [ESP + 0x18]
00d18fe9  dee9  FSUBP
00d18feb  d95c2414  FSTP float ptr [ESP + 0x14]
00d18fef  817c241401000080  CMP dword ptr [ESP + 0x14],0x80000001
00d18ff7  8b442418  MOV EAX,dword ptr [ESP + 0x18]
00d18ffb  83d0ff  ADC EAX,-0x1
00d18ffe  8b742434  MOV ESI,dword ptr [ESP + 0x34]
00d19002  3b0496  CMP EAX,dword ptr [ESI + EDX*0x4]
00d19005  7d03  JGE 0x00d1900a
00d19007  890496  MOV dword ptr [ESI + EDX*0x4],EAX
00d1900a  3b0491  CMP EAX,dword ptr [ECX + EDX*0x4]
00d1900d  7e03  JLE 0x00d19012
00d1900f  890491  MOV dword ptr [ECX + EDX*0x4],EAX
00d19012  8b742424  MOV ESI,dword ptr [ESP + 0x24]
00d19016  83fe04  CMP ESI,0x4
00d19019  0f8c01ffffff  JL 0x00d18f20
00d1901f  8b7c2428  MOV EDI,dword ptr [ESP + 0x28]
00d19023  8b4710  MOV EAX,dword ptr [EDI + 0x10]
00d19026  8b742434  MOV ESI,dword ptr [ESP + 0x34]
00d1902a  390496  CMP dword ptr [ESI + EDX*0x4],EAX
00d1902d  7d03  JGE 0x00d19032
00d1902f  890496  MOV dword ptr [ESI + EDX*0x4],EAX
00d19032  83049101  ADD dword ptr [ECX + EDX*0x4],0x1
00d19036  8b3491  MOV ESI,dword ptr [ECX + EDX*0x4]
00d19039  8b4718  MOV EAX,dword ptr [EDI + 0x18]
00d1903c  3bf0  CMP ESI,EAX
00d1903e  7e03  JLE 0x00d19043
00d19040  890491  MOV dword ptr [ECX + EDX*0x4],EAX
00d19043  8b442430  MOV EAX,dword ptr [ESP + 0x30]
00d19047  8b542440  MOV EDX,dword ptr [ESP + 0x40]
00d1904b  83c001  ADD EAX,0x1
00d1904e  3b02  CMP EAX,dword ptr [EDX]
00d19050  89442430  MOV dword ptr [ESP + 0x30],EAX
00d19054  0f8e9bfeffff  JLE 0x00d18ef5
00d1905a  5f  POP EDI
00d1905b  5e  POP ESI
00d1905c  5d  POP EBP
00d1905d  5b  POP EBX
00d1905e  83c41c  ADD ESP,0x1c
00d19061  c21400  RET 0x14
