# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe SHA256 694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3
Explicit program /TS3W.exe; read-only stored function body, no analyzer/definitions/metadata edits/save.
Paired actual Ghidra pseudocode: 00BFCCD0_FUN_00bfccd0.c
Body [[00bfccd0, 00bfcd5c] [00bfcd60, 00bfd0ef]]; envelope exclusive end 00bfd0f0

GHIDRA LISTING (original bytes)
00bfccd0  83ec48  SUB ESP,0x48
00bfccd3  33c0  XOR EAX,EAX
00bfccd5  3844244c  CMP byte ptr [ESP + 0x4c],AL
00bfccd9  53  PUSH EBX
00bfccda  0f95c0  SETNZ AL
00bfccdd  55  PUSH EBP
00bfccde  56  PUSH ESI
00bfccdf  8bf1  MOV ESI,ECX
00bfcce1  f30f10465c  MOVSS XMM0,dword ptr [ESI + 0x5c]
00bfcce6  8b4e74  MOV ECX,dword ptr [ESI + 0x74]
00bfcce9  f30f1144241c  MOVSS dword ptr [ESP + 0x1c],XMM0
00bfccef  f30f104660  MOVSS XMM0,dword ptr [ESI + 0x60]
00bfccf4  d944241c  FLD float ptr [ESP + 0x1c]
00bfccf8  83c001  ADD EAX,0x1
00bfccfb  89442414  MOV dword ptr [ESP + 0x14],EAX
00bfccff  33c0  XOR EAX,EAX
00bfcd01  f30f11442418  MOVSS dword ptr [ESP + 0x18],XMM0
00bfcd07  d9442418  FLD float ptr [ESP + 0x18]
00bfcd0b  83e901  SUB ECX,0x1
00bfcd0e  d905b4b5f900  FLD float ptr [0x00f9b5b4]
00bfcd14  57  PUSH EDI
00bfcd15  89442438  MOV dword ptr [ESP + 0x38],EAX
00bfcd19  894c243c  MOV dword ptr [ESP + 0x3c],ECX
00bfcd1d  89442414  MOV dword ptr [ESP + 0x14],EAX
00bfcd21  8b5c8438  MOV EBX,dword ptr [ESP + EAX*0x4 + 0x38]
00bfcd25  8bd3  MOV EDX,EBX
00bfcd27  85d2  TEST EDX,EDX
00bfcd29  89542434  MOV dword ptr [ESP + 0x34],EDX
00bfcd2d  db442434  FILD dword ptr [ESP + 0x34]
00bfcd31  7d06  JGE 0x00bfcd39
00bfcd33  d8054899f900  FADD float ptr [0x00f99948]
00bfcd39  8b4e78  MOV ECX,dword ptr [ESI + 0x78]
00bfcd3c  d8c9  FMUL ST1
00bfcd3e  33ed  XOR EBP,EBP
00bfcd40  83e901  SUB ECX,0x1
00bfcd43  d8c3  FADD ST0,ST3
00bfcd45  d95c2424  FSTP float ptr [ESP + 0x24]
00bfcd49  0f8493010000  JZ 0x00bfcee2
00bfcd4f  807c245c00  CMP byte ptr [ESP + 0x5c],0x0
00bfcd54  ddda  FSTP ST2
00bfcd56  0f94442413  SETZ byte ptr [ESP + 0x13]
00bfcd5b  eb03  JMP 0x00bfcd60
00bfcd60  8bd5  MOV EDX,EBP
00bfcd62  85d2  TEST EDX,EDX
00bfcd64  89542434  MOV dword ptr [ESP + 0x34],EDX
00bfcd68  db442434  FILD dword ptr [ESP + 0x34]
00bfcd6c  7d06  JGE 0x00bfcd74
00bfcd6e  d8054899f900  FADD float ptr [0x00f99948]
00bfcd74  8b442418  MOV EAX,dword ptr [ESP + 0x18]
00bfcd78  d8ca  FMUL ST2
00bfcd7a  8d7d01  LEA EDI,[EBP + 0x1]
00bfcd7d  8d4c07ff  LEA ECX,[EDI + EAX*0x1 + -0x1]
00bfcd81  85c9  TEST ECX,ECX
00bfcd83  d8c1  FADD ST0,ST1
00bfcd85  894c2430  MOV dword ptr [ESP + 0x30],ECX
00bfcd89  d95c2434  FSTP float ptr [ESP + 0x34]
00bfcd8d  db442430  FILD dword ptr [ESP + 0x30]
00bfcd91  7d06  JGE 0x00bfcd99
00bfcd93  d8054899f900  FADD float ptr [0x00f99948]
00bfcd99  8b16  MOV EDX,dword ptr [ESI]
00bfcd9b  deca  FMULP ST2
00bfcd9d  8b4228  MOV EAX,dword ptr [EDX + 0x28]
00bfcda0  55  PUSH EBP
00bfcda1  dec1  FADDP
00bfcda3  53  PUSH EBX
00bfcda4  8bce  MOV ECX,ESI
00bfcda6  d95c2434  FSTP float ptr [ESP + 0x34]
00bfcdaa  ffd0  CALL EAX
00bfcdac  8b16  MOV EDX,dword ptr [ESI]
00bfcdae  d95c2430  FSTP float ptr [ESP + 0x30]
00bfcdb2  8b4228  MOV EAX,dword ptr [EDX + 0x28]
00bfcdb5  57  PUSH EDI
00bfcdb6  53  PUSH EBX
00bfcdb7  8bce  MOV ECX,ESI
00bfcdb9  ffd0  CALL EAX
00bfcdbb  d95c2428  FSTP float ptr [ESP + 0x28]
00bfcdbf  807c245c00  CMP byte ptr [ESP + 0x5c],0x0
00bfcdc4  7529  JNZ 0x00bfcdef
00bfcdc6  807e3800  CMP byte ptr [ESI + 0x38],0x0
00bfcdca  7542  JNZ 0x00bfce0e
00bfcdcc  8a4639  MOV AL,byte ptr [ESI + 0x39]
00bfcdcf  84c0  TEST AL,AL
00bfcdd1  740f  JZ 0x00bfcde2
00bfcdd3  837c241401  CMP dword ptr [ESP + 0x14],0x1
00bfcdd8  0f84de000000  JZ 0x00bfcebc
00bfcdde  84c0  TEST AL,AL
00bfcde0  752c  JNZ 0x00bfce0e
00bfcde2  837c241400  CMP dword ptr [ESP + 0x14],0x0
00bfcde7  0f84cf000000  JZ 0x00bfcebc
00bfcded  eb1f  JMP 0x00bfce0e
00bfcdef  807e3800  CMP byte ptr [ESI + 0x38],0x0
00bfcdf3  7519  JNZ 0x00bfce0e
00bfcdf5  8a4639  MOV AL,byte ptr [ESI + 0x39]
00bfcdf8  84c0  TEST AL,AL
00bfcdfa  740b  JZ 0x00bfce07
00bfcdfc  837c241400  CMP dword ptr [ESP + 0x14],0x0
00bfce01  741d  JZ 0x00bfce20
00bfce03  84c0  TEST AL,AL
00bfce05  7507  JNZ 0x00bfce0e
00bfce07  837c241401  CMP dword ptr [ESP + 0x14],0x1
00bfce0c  742c  JZ 0x00bfce3a
00bfce0e  807c241300  CMP byte ptr [ESP + 0x13],0x0
00bfce13  0f84a3000000  JZ 0x00bfcebc
00bfce19  837c241400  CMP dword ptr [ESP + 0x14],0x0
00bfce1e  751a  JNZ 0x00bfce3a
00bfce20  f30f104c2430  MOVSS XMM1,dword ptr [ESP + 0x30]
00bfce26  f30f10542434  MOVSS XMM2,dword ptr [ESP + 0x34]
00bfce2c  f30f105c2428  MOVSS XMM3,dword ptr [ESP + 0x28]
00bfce32  f30f1064242c  MOVSS XMM4,dword ptr [ESP + 0x2c]
00bfce38  eb18  JMP 0x00bfce52
00bfce3a  f30f104c2428  MOVSS XMM1,dword ptr [ESP + 0x28]
00bfce40  f30f1054242c  MOVSS XMM2,dword ptr [ESP + 0x2c]
00bfce46  f30f105c2430  MOVSS XMM3,dword ptr [ESP + 0x30]
00bfce4c  f30f10642434  MOVSS XMM4,dword ptr [ESP + 0x34]
00bfce52  8b4c2460  MOV ECX,dword ptr [ESP + 0x60]
00bfce56  8b4104  MOV EAX,dword ptr [ECX + 0x4]
00bfce59  3b4108  CMP EAX,dword ptr [ECX + 0x8]
00bfce5c  f30f10442424  MOVSS XMM0,dword ptr [ESP + 0x24]
00bfce62  f30f11642454  MOVSS dword ptr [ESP + 0x54],XMM4
00bfce68  f30f115c2450  MOVSS dword ptr [ESP + 0x50],XMM3
00bfce6e  f30f1144244c  MOVSS dword ptr [ESP + 0x4c],XMM0
00bfce74  f30f11542448  MOVSS dword ptr [ESP + 0x48],XMM2
00bfce7a  f30f114c2444  MOVSS dword ptr [ESP + 0x44],XMM1
00bfce80  f30f11442440  MOVSS dword ptr [ESP + 0x40],XMM0
00bfce86  7329  JNC 0x00bfceb1
00bfce88  85c0  TEST EAX,EAX
00bfce8a  8d5018  LEA EDX,[EAX + 0x18]
00bfce8d  895104  MOV dword ptr [ECX + 0x4],EDX
00bfce90  742a  JZ 0x00bfcebc
00bfce92  f30f1100  MOVSS dword ptr [EAX],XMM0
00bfce96  f30f114804  MOVSS dword ptr [EAX + 0x4],XMM1
00bfce9b  f30f115008  MOVSS dword ptr [EAX + 0x8],XMM2
00bfcea0  f30f116014  MOVSS dword ptr [EAX + 0x14],XMM4
00bfcea5  f30f115810  MOVSS dword ptr [EAX + 0x10],XMM3
00bfceaa  f30f11400c  MOVSS dword ptr [EAX + 0xc],XMM0
00bfceaf  eb0b  JMP 0x00bfcebc
00bfceb1  8d542440  LEA EDX,[ESP + 0x40]
00bfceb5  52  PUSH EDX
00bfceb6  50  PUSH EAX
00bfceb7  e874e2ffff  CALL 0x00bfb130
00bfcebc  8b4678  MOV EAX,dword ptr [ESI + 0x78]
00bfcebf  d905b4b5f900  FLD float ptr [0x00f9b5b4]
00bfcec5  036c2418  ADD EBP,dword ptr [ESP + 0x18]
00bfcec9  d944241c  FLD float ptr [ESP + 0x1c]
00bfcecd  83e801  SUB EAX,0x1
00bfced0  3be8  CMP EBP,EAX
00bfced2  0f8288feffff  JC 0x00bfcd60
00bfced8  d9442420  FLD float ptr [ESP + 0x20]
00bfcedc  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00bfcee0  d9ca  FXCH ST2
00bfcee2  83c001  ADD EAX,0x1
00bfcee5  83f802  CMP EAX,0x2
00bfcee8  89442414  MOV dword ptr [ESP + 0x14],EAX
00bfceec  0f822ffeffff  JC 0x00bfcd21
00bfcef2  8b4e78  MOV ECX,dword ptr [ESI + 0x78]
00bfcef5  33c0  XOR EAX,EAX
00bfcef7  83e901  SUB ECX,0x1
00bfcefa  89442438  MOV dword ptr [ESP + 0x38],EAX
00bfcefe  894c243c  MOV dword ptr [ESP + 0x3c],ECX
00bfcf02  89442414  MOV dword ptr [ESP + 0x14],EAX
00bfcf06  8b5c8438  MOV EBX,dword ptr [ESP + EAX*0x4 + 0x38]
00bfcf0a  8bd3  MOV EDX,EBX
00bfcf0c  85d2  TEST EDX,EDX
00bfcf0e  89542434  MOV dword ptr [ESP + 0x34],EDX
00bfcf12  db442434  FILD dword ptr [ESP + 0x34]
00bfcf16  7d06  JGE 0x00bfcf1e
00bfcf18  d8054899f900  FADD float ptr [0x00f99948]
00bfcf1e  8b4e74  MOV ECX,dword ptr [ESI + 0x74]
00bfcf21  d8c9  FMUL ST1
00bfcf23  33ed  XOR EBP,EBP
00bfcf25  83e901  SUB ECX,0x1
00bfcf28  d8c2  FADD ST0,ST2
00bfcf2a  d95c242c  FSTP float ptr [ESP + 0x2c]
00bfcf2e  0f849a010000  JZ 0x00bfd0ce
00bfcf34  807c245c00  CMP byte ptr [ESP + 0x5c],0x0
00bfcf39  ddd9  FSTP ST1
00bfcf3b  0f94442413  SETZ byte ptr [ESP + 0x13]
00bfcf40  eb0a  JMP 0x00bfcf4c
00bfcf42  d9442420  FLD float ptr [ESP + 0x20]
00bfcf46  d905b4b5f900  FLD float ptr [0x00f9b5b4]
00bfcf4c  8bd5  MOV EDX,EBP
00bfcf4e  85d2  TEST EDX,EDX
00bfcf50  89542434  MOV dword ptr [ESP + 0x34],EDX
00bfcf54  db442434  FILD dword ptr [ESP + 0x34]
00bfcf58  7d06  JGE 0x00bfcf60
00bfcf5a  d8054899f900  FADD float ptr [0x00f99948]
00bfcf60  8b442418  MOV EAX,dword ptr [ESP + 0x18]
00bfcf64  d8c9  FMUL ST1
00bfcf66  8d7d01  LEA EDI,[EBP + 0x1]
00bfcf69  8d4c07ff  LEA ECX,[EDI + EAX*0x1 + -0x1]
00bfcf6d  85c9  TEST ECX,ECX
00bfcf6f  d8c2  FADD ST0,ST2
00bfcf71  894c2434  MOV dword ptr [ESP + 0x34],ECX
00bfcf75  d95c2428  FSTP float ptr [ESP + 0x28]
00bfcf79  db442434  FILD dword ptr [ESP + 0x34]
00bfcf7d  7d06  JGE 0x00bfcf85
00bfcf7f  d8054899f900  FADD float ptr [0x00f99948]
00bfcf85  8b16  MOV EDX,dword ptr [ESI]
00bfcf87  dec9  FMULP
00bfcf89  8b4228  MOV EAX,dword ptr [EDX + 0x28]
00bfcf8c  53  PUSH EBX
00bfcf8d  dec1  FADDP
00bfcf8f  55  PUSH EBP
00bfcf90  8bce  MOV ECX,ESI
00bfcf92  d95c243c  FSTP float ptr [ESP + 0x3c]
00bfcf96  ffd0  CALL EAX
00bfcf98  8b16  MOV EDX,dword ptr [ESI]
00bfcf9a  d95c2424  FSTP float ptr [ESP + 0x24]
00bfcf9e  8b4228  MOV EAX,dword ptr [EDX + 0x28]
00bfcfa1  53  PUSH EBX
00bfcfa2  57  PUSH EDI
00bfcfa3  8bce  MOV ECX,ESI
00bfcfa5  ffd0  CALL EAX
00bfcfa7  d95c2430  FSTP float ptr [ESP + 0x30]
00bfcfab  807c245c00  CMP byte ptr [ESP + 0x5c],0x0
00bfcfb0  7529  JNZ 0x00bfcfdb
00bfcfb2  807e3800  CMP byte ptr [ESI + 0x38],0x0
00bfcfb6  7442  JZ 0x00bfcffa
00bfcfb8  8a463a  MOV AL,byte ptr [ESI + 0x3a]
00bfcfbb  84c0  TEST AL,AL
00bfcfbd  740f  JZ 0x00bfcfce
00bfcfbf  837c241401  CMP dword ptr [ESP + 0x14],0x1
00bfcfc4  0f84de000000  JZ 0x00bfd0a8
00bfcfca  84c0  TEST AL,AL
00bfcfcc  752c  JNZ 0x00bfcffa
00bfcfce  837c241400  CMP dword ptr [ESP + 0x14],0x0
00bfcfd3  0f84cf000000  JZ 0x00bfd0a8
00bfcfd9  eb1f  JMP 0x00bfcffa
00bfcfdb  807e3800  CMP byte ptr [ESI + 0x38],0x0
00bfcfdf  7419  JZ 0x00bfcffa
00bfcfe1  8a463a  MOV AL,byte ptr [ESI + 0x3a]
00bfcfe4  84c0  TEST AL,AL
00bfcfe6  740b  JZ 0x00bfcff3
00bfcfe8  837c241400  CMP dword ptr [ESP + 0x14],0x0
00bfcfed  7437  JZ 0x00bfd026
00bfcfef  84c0  TEST AL,AL
00bfcff1  7507  JNZ 0x00bfcffa
00bfcff3  837c241401  CMP dword ptr [ESP + 0x14],0x1
00bfcff8  7412  JZ 0x00bfd00c
00bfcffa  807c241300  CMP byte ptr [ESP + 0x13],0x0
00bfcfff  0f84a3000000  JZ 0x00bfd0a8
00bfd005  837c241401  CMP dword ptr [ESP + 0x14],0x1
00bfd00a  751a  JNZ 0x00bfd026
00bfd00c  f30f104c2428  MOVSS XMM1,dword ptr [ESP + 0x28]
00bfd012  f30f10542424  MOVSS XMM2,dword ptr [ESP + 0x24]
00bfd018  f30f105c2434  MOVSS XMM3,dword ptr [ESP + 0x34]
00bfd01e  f30f10642430  MOVSS XMM4,dword ptr [ESP + 0x30]
00bfd024  eb18  JMP 0x00bfd03e
00bfd026  f30f104c2434  MOVSS XMM1,dword ptr [ESP + 0x34]
00bfd02c  f30f10542430  MOVSS XMM2,dword ptr [ESP + 0x30]
00bfd032  f30f105c2428  MOVSS XMM3,dword ptr [ESP + 0x28]
00bfd038  f30f10642424  MOVSS XMM4,dword ptr [ESP + 0x24]
00bfd03e  8b4c2460  MOV ECX,dword ptr [ESP + 0x60]
00bfd042  8b4104  MOV EAX,dword ptr [ECX + 0x4]
00bfd045  3b4108  CMP EAX,dword ptr [ECX + 0x8]
00bfd048  f30f1044242c  MOVSS XMM0,dword ptr [ESP + 0x2c]
00bfd04e  f30f11442454  MOVSS dword ptr [ESP + 0x54],XMM0
00bfd054  f30f11642450  MOVSS dword ptr [ESP + 0x50],XMM4
00bfd05a  f30f115c244c  MOVSS dword ptr [ESP + 0x4c],XMM3
00bfd060  f30f11442448  MOVSS dword ptr [ESP + 0x48],XMM0
00bfd066  f30f11542444  MOVSS dword ptr [ESP + 0x44],XMM2
00bfd06c  f30f114c2440  MOVSS dword ptr [ESP + 0x40],XMM1
00bfd072  7329  JNC 0x00bfd09d
00bfd074  85c0  TEST EAX,EAX
00bfd076  8d5018  LEA EDX,[EAX + 0x18]
00bfd079  895104  MOV dword ptr [ECX + 0x4],EDX
00bfd07c  742a  JZ 0x00bfd0a8
00bfd07e  f30f1108  MOVSS dword ptr [EAX],XMM1
00bfd082  f30f115004  MOVSS dword ptr [EAX + 0x4],XMM2
00bfd087  f30f114008  MOVSS dword ptr [EAX + 0x8],XMM0
00bfd08c  f30f114014  MOVSS dword ptr [EAX + 0x14],XMM0
00bfd091  f30f116010  MOVSS dword ptr [EAX + 0x10],XMM4
00bfd096  f30f11580c  MOVSS dword ptr [EAX + 0xc],XMM3
00bfd09b  eb0b  JMP 0x00bfd0a8
00bfd09d  8d542440  LEA EDX,[ESP + 0x40]
00bfd0a1  52  PUSH EDX
00bfd0a2  50  PUSH EAX
00bfd0a3  e888e0ffff  CALL 0x00bfb130
00bfd0a8  8b4674  MOV EAX,dword ptr [ESI + 0x74]
00bfd0ab  036c2418  ADD EBP,dword ptr [ESP + 0x18]
00bfd0af  83e801  SUB EAX,0x1
00bfd0b2  3be8  CMP EBP,EAX
00bfd0b4  0f8288feffff  JC 0x00bfcf42
00bfd0ba  d905b4b5f900  FLD float ptr [0x00f9b5b4]
00bfd0c0  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00bfd0c4  d944241c  FLD float ptr [ESP + 0x1c]
00bfd0c8  d9442420  FLD float ptr [ESP + 0x20]
00bfd0cc  d9ca  FXCH ST2
00bfd0ce  83c001  ADD EAX,0x1
00bfd0d1  83f802  CMP EAX,0x2
00bfd0d4  89442414  MOV dword ptr [ESP + 0x14],EAX
00bfd0d8  0f8228feffff  JC 0x00bfcf06
00bfd0de  5f  POP EDI
00bfd0df  ddd8  FSTP ST0
00bfd0e1  5e  POP ESI
00bfd0e2  ddd9  FSTP ST1
00bfd0e4  5d  POP EBP
00bfd0e5  ddd8  FSTP ST0
00bfd0e7  b001  MOV AL,0x1
00bfd0e9  5b  POP EBX
00bfd0ea  83c448  ADD ESP,0x48
00bfd0ed  c20c00  RET 0xc
