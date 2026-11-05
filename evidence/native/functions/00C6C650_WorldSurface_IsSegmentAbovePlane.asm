# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Actual complete Ghidra Listing function WorldSurface_IsSegmentAbovePlane 00c6c650..00c6c9fc; original envelope includes explicitly marked nonowned gaps; PE envelope SHA256=e9df4ce105bd56878eebbbdcb0fe57140af4fa92c3abdacaedc8a621a49f8501
; PC 1.67 original: ECX world, six stack words, RET 0x18; AL truth with unrelated high EAX unspecified. With terrain +0x54, both endpoint WorldSurface_QueryHeight results must be strictly above supplied plane. Traverses terrain collider windows and hit fractions, then queries subsequent points against the plane; absence of terrain owner returns true. The virtual collider operation remains the concrete collision-owner boundary. Decompiler ROUND expressions require inherited x87 conversion and residual sign-bit instructions for their coordinate meaning.
00c6c650: 55  PUSH EBP
00c6c651: 8bec  MOV EBP,ESP
00c6c653: 83e4f0  AND ESP,0xfffffff0
00c6c656: 81ecf4000000  SUB ESP,0xf4
00c6c65c: 53  PUSH EBX
00c6c65d: 56  PUSH ESI
00c6c65e: 8bf1  MOV ESI,ECX
00c6c660: 8b4654  MOV EAX,dword ptr [ESI + 0x54]
00c6c663: 85c0  TEST EAX,EAX
00c6c665: 57  PUSH EDI
00c6c666: 89742424  MOV dword ptr [ESP + 0x24],ESI
00c6c66a: 89442428  MOV dword ptr [ESP + 0x28],EAX
00c6c66e: 0f844f030000  JZ 0x00c6c9c3
00c6c674: 8b7d1c  MOV EDI,dword ptr [EBP + 0x1c]
00c6c677: d94510  FLD float ptr [EBP + 0x10]
00c6c67a: 6a00  PUSH 0x0
00c6c67c: 6a00  PUSH 0x0
00c6c67e: 6a00  PUSH 0x0
00c6c680: 6a00  PUSH 0x0
00c6c682: 57  PUSH EDI
00c6c683: 6a01  PUSH 0x1
00c6c685: 6a00  PUSH 0x0
00c6c687: 83ec08  SUB ESP,0x8
00c6c68a: d95c2404  FSTP float ptr [ESP + 0x4]
00c6c68e: d9450c  FLD float ptr [EBP + 0xc]
00c6c691: d91c24  FSTP float ptr [ESP]
00c6c694: e8f7d9ffff  CALL 0x00c6a090
00c6c699: d94508  FLD float ptr [EBP + 0x8]
00c6c69c: dff1  FCOMIP ST0,ST1
00c6c69e: ddd8  FSTP ST0
00c6c6a0: 720b  JC 0x00c6c6ad
00c6c6a2: 32c0  XOR AL,AL
00c6c6a4: 5f  POP EDI
00c6c6a5: 5e  POP ESI
00c6c6a6: 5b  POP EBX
00c6c6a7: 8be5  MOV ESP,EBP
00c6c6a9: 5d  POP EBP
00c6c6aa: c21800  RET 0x18
00c6c6ad: d94518  FLD float ptr [EBP + 0x18]
00c6c6b0: 6a00  PUSH 0x0
00c6c6b2: 6a00  PUSH 0x0
00c6c6b4: 6a00  PUSH 0x0
00c6c6b6: 6a00  PUSH 0x0
00c6c6b8: 57  PUSH EDI
00c6c6b9: 6a01  PUSH 0x1
00c6c6bb: 6a00  PUSH 0x0
00c6c6bd: 83ec08  SUB ESP,0x8
00c6c6c0: d95c2404  FSTP float ptr [ESP + 0x4]
00c6c6c4: 8bce  MOV ECX,ESI
00c6c6c6: d94514  FLD float ptr [EBP + 0x14]
00c6c6c9: d91c24  FSTP float ptr [ESP]
00c6c6cc: e8bfd9ffff  CALL 0x00c6a090
00c6c6d1: d94508  FLD float ptr [EBP + 0x8]
00c6c6d4: dff1  FCOMIP ST0,ST1
00c6c6d6: ddd8  FSTP ST0
00c6c6d8: 73c8  JNC 0x00c6c6a2
00c6c6da: f30f104514  MOVSS XMM0,dword ptr [EBP + 0x14]
00c6c6df: 0f2e450c  UCOMISS XMM0,dword ptr [EBP + 0xc]
00c6c6e3: 9f  LAHF
00c6c6e4: f6c444  TEST AH,0x44
00c6c6e7: 7a13  JP 0x00c6c6fc
00c6c6e9: f30f104518  MOVSS XMM0,dword ptr [EBP + 0x18]
00c6c6ee: 0f2e4510  UCOMISS XMM0,dword ptr [EBP + 0x10]
00c6c6f2: 9f  LAHF
00c6c6f3: f6c444  TEST AH,0x44
00c6c6f6: 0f8bc7020000  JNP 0x00c6c9c3
00c6c6fc: d9450c  FLD float ptr [EBP + 0xc]
00c6c6ff: db542418  FIST dword ptr [ESP + 0x18]
00c6c703: db442418  FILD dword ptr [ESP + 0x18]
00c6c707: dee9  FSUBP
00c6c709: d95c241c  FSTP float ptr [ESP + 0x1c]
00c6c70d: 817c241c01000080  CMP dword ptr [ESP + 0x1c],0x80000001
00c6c715: 8b442418  MOV EAX,dword ptr [ESP + 0x18]
00c6c719: 83d0ff  ADC EAX,-0x1
00c6c71c: 8bc8  MOV ECX,EAX
00c6c71e: d94510  FLD float ptr [EBP + 0x10]
00c6c721: db54241c  FIST dword ptr [ESP + 0x1c]
00c6c725: db44241c  FILD dword ptr [ESP + 0x1c]
00c6c729: dee9  FSUBP
00c6c72b: d95c2418  FSTP float ptr [ESP + 0x18]
00c6c72f: 817c241801000080  CMP dword ptr [ESP + 0x18],0x80000001
00c6c737: 8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
00c6c73b: 83d0ff  ADC EAX,-0x1
00c6c73e: 8bd8  MOV EBX,EAX
00c6c740: 895c241c  MOV dword ptr [ESP + 0x1c],EBX
00c6c744: d94514  FLD float ptr [EBP + 0x14]
00c6c747: db542420  FIST dword ptr [ESP + 0x20]
00c6c74b: db442420  FILD dword ptr [ESP + 0x20]
00c6c74f: dee9  FSUBP
00c6c751: d95c2418  FSTP float ptr [ESP + 0x18]
00c6c755: 817c241801000080  CMP dword ptr [ESP + 0x18],0x80000001
00c6c75d: 8b442420  MOV EAX,dword ptr [ESP + 0x20]
00c6c761: 83d0ff  ADC EAX,-0x1
00c6c764: 8bd0  MOV EDX,EAX
00c6c766: d94518  FLD float ptr [EBP + 0x18]
00c6c769: db542418  FIST dword ptr [ESP + 0x18]
00c6c76d: db442418  FILD dword ptr [ESP + 0x18]
00c6c771: dee9  FSUBP
00c6c773: d95c2420  FSTP float ptr [ESP + 0x20]
00c6c777: 817c242001000080  CMP dword ptr [ESP + 0x20],0x80000001
00c6c77f: 8b442418  MOV EAX,dword ptr [ESP + 0x18]
00c6c783: 83d0ff  ADC EAX,-0x1
00c6c786: 3bca  CMP ECX,EDX
00c6c788: 7e06  JLE 0x00c6c790
00c6c78a: 8bf1  MOV ESI,ECX
00c6c78c: 8bca  MOV ECX,EDX
00c6c78e: 8bd6  MOV EDX,ESI
00c6c790: 3bd8  CMP EBX,EAX
00c6c792: 7e0c  JLE 0x00c6c7a0
00c6c794: 8bf3  MOV ESI,EBX
00c6c796: 8944241c  MOV dword ptr [ESP + 0x1c],EAX
00c6c79a: 8b5c241c  MOV EBX,dword ptr [ESP + 0x1c]
00c6c79e: 8bc6  MOV EAX,ESI
00c6c7a0: 81c200010000  ADD EDX,0x100
00c6c7a6: 3bca  CMP ECX,EDX
00c6c7a8: 8bf9  MOV EDI,ECX
00c6c7aa: 897c2418  MOV dword ptr [ESP + 0x18],EDI
00c6c7ae: 8954242c  MOV dword ptr [ESP + 0x2c],EDX
00c6c7b2: 0f8d0b020000  JGE 0x00c6c9c3
00c6c7b8: 0500010000  ADD EAX,0x100
00c6c7bd: 89442420  MOV dword ptr [ESP + 0x20],EAX
00c6c7c1: 8b442420  MOV EAX,dword ptr [ESP + 0x20]
00c6c7c5: 3944241c  CMP dword ptr [ESP + 0x1c],EAX
00c6c7c9: 0f8d17020000  JGE 0x00c6c9e6
00c6c7cf: 90  NOP
00c6c7d0: 8b4c2428  MOV ECX,dword ptr [ESP + 0x28]
00c6c7d4: 53  PUSH EBX
00c6c7d5: 57  PUSH EDI
00c6c7d6: e8a5c7fbff  CALL 0x00c28f80
00c6c7db: 8bf0  MOV ESI,EAX
00c6c7dd: 85f6  TEST ESI,ESI
00c6c7df: 0f84ed010000  JZ 0x00c6c9d2
00c6c7e5: f30f104d0c  MOVSS XMM1,dword ptr [EBP + 0xc]
00c6c7ea: f30f105510  MOVSS XMM2,dword ptr [EBP + 0x10]
00c6c7ef: f30f105d18  MOVSS XMM3,dword ptr [EBP + 0x18]
00c6c7f4: f30f104514  MOVSS XMM0,dword ptr [EBP + 0x14]
00c6c7f9: f30f5cc1  SUBSS XMM0,XMM1
00c6c7fd: f30f5cda  SUBSS XMM3,XMM2
00c6c801: f30f1144244c  MOVSS dword ptr [ESP + 0x4c],XMM0
00c6c807: f30f115c2448  MOVSS dword ptr [ESP + 0x48],XMM3
00c6c80d: 0f57db  XORPS XMM3,XMM3
00c6c810: f30f11442440  MOVSS dword ptr [ESP + 0x40],XMM0
00c6c816: f30f115c2444  MOVSS dword ptr [ESP + 0x44],XMM3
00c6c81c: 0f28442440  MOVAPS XMM0,xmmword ptr [ESP + 0x40]
00c6c821: 0f29442460  MOVAPS xmmword ptr [ESP + 0x60],XMM0
00c6c826: f30f104508  MOVSS XMM0,dword ptr [EBP + 0x8]
00c6c82b: f30f114c243c  MOVSS dword ptr [ESP + 0x3c],XMM1
00c6c831: f30f11442434  MOVSS dword ptr [ESP + 0x34],XMM0
00c6c837: f30f114c2430  MOVSS dword ptr [ESP + 0x30],XMM1
00c6c83d: 0f284e20  MOVAPS XMM1,xmmword ptr [ESI + 0x20]
00c6c841: f30f11542438  MOVSS dword ptr [ESP + 0x38],XMM2
00c6c847: 0f28442430  MOVAPS XMM0,xmmword ptr [ESP + 0x30]
00c6c84c: 0f5cc1  SUBPS XMM0,XMM1
00c6c84f: 0f29442450  MOVAPS xmmword ptr [ESP + 0x50],XMM0
00c6c854: 33ff  XOR EDI,EDI
00c6c856: 8b4e38  MOV ECX,dword ptr [ESI + 0x38]
00c6c859: 8b11  MOV EDX,dword ptr [ECX]
00c6c85b: 8b5210  MOV EDX,dword ptr [EDX + 0x10]
00c6c85e: 8d8424d0000000  LEA EAX,[ESP + 0xd0]
00c6c865: 50  PUSH EAX
00c6c866: 8d442454  LEA EAX,[ESP + 0x54]
00c6c86a: 50  PUSH EAX
00c6c86b: ffd2  CALL EDX
00c6c86d: 84c0  TEST AL,AL
00c6c86f: 0f8459010000  JZ 0x00c6c9ce
00c6c875: f30f108c24f0000000  MOVSS XMM1,dword ptr [ESP + 0xf0]
00c6c87e: f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
00c6c886: 0f2fc1  COMISS XMM0,XMM1
00c6c889: 0f863f010000  JBE 0x00c6c9ce
00c6c88f: 0f288424e0000000  MOVAPS XMM0,xmmword ptr [ESP + 0xe0]
00c6c897: f30f101d44970701  MOVSS XMM3,dword ptr [0x01079744]
00c6c89f: 0f298424a0000000  MOVAPS xmmword ptr [ESP + 0xa0],XMM0
00c6c8a7: f30f100518b2fa00  MOVSS XMM0,dword ptr [0x00fab218]
00c6c8af: f30f109424a4000000  MOVSS XMM2,dword ptr [ESP + 0xa4]
00c6c8b8: 0fc6c000  SHUFPS XMM0,XMM0,0x0
00c6c8bc: 0fc6d200  SHUFPS XMM2,XMM2,0x0
00c6c8c0: 0f28e0  MOVAPS XMM4,XMM0
00c6c8c3: 0f59e2  MULPS XMM4,XMM2
00c6c8c6: 0fc6db00  SHUFPS XMM3,XMM3,0x0
00c6c8ca: 0f5fe2  MAXPS XMM4,XMM2
00c6c8cd: 0fc2e302  CMPLEPS XMM4,XMM3
00c6c8d1: 0f50c4  MOVMSKPS EAX,XMM4
00c6c8d4: 83f80f  CMP EAX,0xf
00c6c8d7: 0f29842490000000  MOVAPS xmmword ptr [ESP + 0x90],XMM0
00c6c8df: 0f299c2480000000  MOVAPS xmmword ptr [ESP + 0x80],XMM3
00c6c8e7: 7508  JNZ 0x00c6c8f1
00c6c8e9: 85ff  TEST EDI,EDI
00c6c8eb: 7504  JNZ 0x00c6c8f1
00c6c8ed: b001  MOV AL,0x1
00c6c8ef: eb02  JMP 0x00c6c8f3
00c6c8f1: 32c0  XOR AL,AL
00c6c8f3: 84c0  TEST AL,AL
00c6c8f5: f30f580db435fb00  ADDSS XMM1,dword ptr [0x00fb35b4]
00c6c8fd: 0f28542460  MOVAPS XMM2,xmmword ptr [ESP + 0x60]
00c6c902: f30f10c9  MOVSS XMM1,XMM1
00c6c906: 0fc6c900  SHUFPS XMM1,XMM1,0x0
00c6c90a: 0f59ca  MULPS XMM1,XMM2
00c6c90d: 0f294c2470  MOVAPS xmmword ptr [ESP + 0x70],XMM1
00c6c912: 7405  JZ 0x00c6c919
00c6c914: 83c701  ADD EDI,0x1
00c6c917: eb79  JMP 0x00c6c992
00c6c919: 8b4d1c  MOV ECX,dword ptr [EBP + 0x1c]
00c6c91c: 0f28442450  MOVAPS XMM0,xmmword ptr [ESP + 0x50]
00c6c921: 6a00  PUSH 0x0
00c6c923: 6a00  PUSH 0x0
00c6c925: 6a00  PUSH 0x0
00c6c927: 6a00  PUSH 0x0
00c6c929: 51  PUSH ECX
00c6c92a: 8b4c2438  MOV ECX,dword ptr [ESP + 0x38]
00c6c92e: 0f58c8  ADDPS XMM1,XMM0
00c6c931: 0f284620  MOVAPS XMM0,xmmword ptr [ESI + 0x20]
00c6c935: 6a01  PUSH 0x1
00c6c937: 0f58c8  ADDPS XMM1,XMM0
00c6c93a: 0f298c24c8000000  MOVAPS xmmword ptr [ESP + 0xc8],XMM1
00c6c942: d98424d0000000  FLD float ptr [ESP + 0xd0]
00c6c949: 6a00  PUSH 0x0
00c6c94b: 83ec08  SUB ESP,0x8
00c6c94e: d95c2404  FSTP float ptr [ESP + 0x4]
00c6c952: 0f298c24e4000000  MOVAPS xmmword ptr [ESP + 0xe4],XMM1
00c6c95a: d98424e4000000  FLD float ptr [ESP + 0xe4]
00c6c961: d91c24  FSTP float ptr [ESP]
00c6c964: e827d7ffff  CALL 0x00c6a090
00c6c969: d94508  FLD float ptr [EBP + 0x8]
00c6c96c: d9c9  FXCH
00c6c96e: dff1  FCOMIP ST0,ST1
00c6c970: ddd8  FSTP ST0
00c6c972: 0f862afdffff  JBE 0x00c6c6a2
00c6c978: 0f28542460  MOVAPS XMM2,xmmword ptr [ESP + 0x60]
00c6c97d: 0f284c2470  MOVAPS XMM1,xmmword ptr [ESP + 0x70]
00c6c982: 0f289c2480000000  MOVAPS XMM3,xmmword ptr [ESP + 0x80]
00c6c98a: 0f28842490000000  MOVAPS XMM0,xmmword ptr [ESP + 0x90]
00c6c992: 0f286c2450  MOVAPS XMM5,xmmword ptr [ESP + 0x50]
00c6c997: 0f5cd1  SUBPS XMM2,XMM1
00c6c99a: 0f59c2  MULPS XMM0,XMM2
00c6c99d: 0f5fc2  MAXPS XMM0,XMM2
00c6c9a0: 0fc2c302  CMPLEPS XMM0,XMM3
00c6c9a4: 0f50d0  MOVMSKPS EDX,XMM0
00c6c9a7: 83e207  AND EDX,0x7
00c6c9aa: 80fa07  CMP DL,0x7
00c6c9ad: 0f28e1  MOVAPS XMM4,XMM1
00c6c9b0: 0f58e5  ADDPS XMM4,XMM5
00c6c9b3: 0f29642450  MOVAPS xmmword ptr [ESP + 0x50],XMM4
00c6c9b8: 0f29542460  MOVAPS xmmword ptr [ESP + 0x60],XMM2
00c6c9bd: 0f8593feffff  JNZ 0x00c6c856
00c6c9c3: 5f  POP EDI
00c6c9c4: 5e  POP ESI
00c6c9c5: b001  MOV AL,0x1
00c6c9c7: 5b  POP EBX
00c6c9c8: 8be5  MOV ESP,EBP
00c6c9ca: 5d  POP EBP
00c6c9cb: c21800  RET 0x18
00c6c9ce: 8b7c2418  MOV EDI,dword ptr [ESP + 0x18]
00c6c9d2: 81c300010000  ADD EBX,0x100
00c6c9d8: 3b5c2420  CMP EBX,dword ptr [ESP + 0x20]
00c6c9dc: 0f8ceefdffff  JL 0x00c6c7d0
00c6c9e2: 8b54242c  MOV EDX,dword ptr [ESP + 0x2c]
00c6c9e6: 81c700010000  ADD EDI,0x100
00c6c9ec: 3bfa  CMP EDI,EDX
00c6c9ee: 897c2418  MOV dword ptr [ESP + 0x18],EDI
00c6c9f2: 7dcf  JGE 0x00c6c9c3
00c6c9f4: 8b5c241c  MOV EBX,dword ptr [ESP + 0x1c]
00c6c9f8: e9c4fdffff  JMP 0x00c6c7c1
