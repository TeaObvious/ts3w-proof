# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool Lot_HasLowerPartitionSupport(pointer lot, char * cell)
Owned ranges: [[00acec50, 00acf005]]

00acec50  83ec7c  SUB ESP,0x7c
00acec53  8b842480000000  MOV EAX,dword ptr [ESP + 0x80]
00acec5a  53  PUSH EBX
00acec5b  8b9898020000  MOV EBX,dword ptr [EAX + 0x298]
00acec61  8b842488000000  MOV EAX,dword ptr [ESP + 0x88]
00acec68  668b08  MOV CX,word ptr [EAX]
00acec6b  8a4002  MOV AL,byte ptr [EAX + 0x2]
00acec6e  66894c2404  MOV word ptr [ESP + 0x4],CX
00acec73  0fbec9  MOVSX ECX,CL
00acec76  8d5101  LEA EDX,[ECX + 0x1]
00acec79  f30f2ac2  CVTSI2SS XMM0,EDX
00acec7d  0fbe542405  MOVSX EDX,byte ptr [ESP + 0x5]
00acec82  55  PUSH EBP
00acec83  56  PUSH ESI
00acec84  f30f1144241c  MOVSS dword ptr [ESP + 0x1c],XMM0
00acec8a  f30f11442470  MOVSS dword ptr [ESP + 0x70],XMM0
00acec90  8d7201  LEA ESI,[EDX + 0x1]
00acec93  f30f2ac6  CVTSI2SS XMM0,ESI
00acec97  04ff  ADD AL,0xff
00acec99  0fbef0  MOVSX ESI,AL
00acec9c  f30f11442420  MOVSS dword ptr [ESP + 0x20],XMM0
00aceca2  f30f11442474  MOVSS dword ptr [ESP + 0x74],XMM0
00aceca8  f30f2ac1  CVTSI2SS XMM0,ECX
00acecac  57  PUSH EDI
00acecad  8d842480000000  LEA EAX,[ESP + 0x80]
00acecb4  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
00acecba  f30f11842480000000  MOVSS dword ptr [ESP + 0x80],XMM0
00acecc3  f30f2ac2  CVTSI2SS XMM0,EDX
00acecc7  50  PUSH EAX
00acecc8  8d4c243c  LEA ECX,[ESP + 0x3c]
00aceccc  89b42480000000  MOV dword ptr [ESP + 0x80],ESI
00acecd3  f30f11442418  MOVSS dword ptr [ESP + 0x18],XMM0
00acecd9  f30f11842488000000  MOVSS dword ptr [ESP + 0x88],XMM0
00acece2  89b4248c000000  MOV dword ptr [ESP + 0x8c],ESI
00acece9  e8b260cbff  CALL 0x00784da0
00acecee  8d4c2474  LEA ECX,[ESP + 0x74]
00acecf2  51  PUSH ECX
00acecf3  8d4c243f  LEA ECX,[ESP + 0x3f]
00acecf7  e8a460cbff  CALL 0x00784da0
00acecfc  f30f10442410  MOVSS XMM0,dword ptr [ESP + 0x10]
00aced02  f30f11442474  MOVSS dword ptr [ESP + 0x74],XMM0
00aced08  f30f10442424  MOVSS XMM0,dword ptr [ESP + 0x24]
00aced0e  f30f11442478  MOVSS dword ptr [ESP + 0x78],XMM0
00aced14  f30f10442420  MOVSS XMM0,dword ptr [ESP + 0x20]
00aced1a  8d942480000000  LEA EDX,[ESP + 0x80]
00aced21  f30f11842480000000  MOVSS dword ptr [ESP + 0x80],XMM0
00aced2a  f30f10442414  MOVSS XMM0,dword ptr [ESP + 0x14]
00aced30  52  PUSH EDX
00aced31  8d4c2442  LEA ECX,[ESP + 0x42]
00aced35  89b42480000000  MOV dword ptr [ESP + 0x80],ESI
00aced3c  f30f11842488000000  MOVSS dword ptr [ESP + 0x88],XMM0
00aced45  89b4248c000000  MOV dword ptr [ESP + 0x8c],ESI
00aced4c  e84f60cbff  CALL 0x00784da0
00aced51  8d442474  LEA EAX,[ESP + 0x74]
00aced55  50  PUSH EAX
00aced56  8d4c2445  LEA ECX,[ESP + 0x45]
00aced5a  e84160cbff  CALL 0x00784da0
00aced5f  33ed  XOR EBP,EBP
00aced61  8d7c2438  LEA EDI,[ESP + 0x38]
00aced65  57  PUSH EDI
00aced66  8bcb  MOV ECX,EBX
00aced68  e8b38f0700  CALL 0x00b47d20
00aced6d  84c0  TEST AL,AL
00aced6f  7417  JZ 0x00aced88
00aced71  6a00  PUSH 0x0
00aced73  57  PUSH EDI
00aced74  8bcb  MOV ECX,EBX
00aced76  e875900700  CALL 0x00b47df0
00aced7b  50  PUSH EAX
00aced7c  e8bfd11800  CALL 0x00c5bf40
00aced81  83c404  ADD ESP,0x4
00aced84  84c0  TEST AL,AL
00aced86  757b  JNZ 0x00acee03
00aced88  83c501  ADD EBP,0x1
00aced8b  83c706  ADD EDI,0x6
00aced8e  83fd02  CMP EBP,0x2
00aced91  7cd2  JL 0x00aced65
00aced93  f30f100df898f900  MOVSS XMM1,dword ptr [0x00f998f8]
00aced9b  33ff  XOR EDI,EDI
00aced9d  8d4900  LEA ECX,[ECX]
00aceda0  8bcf  MOV ECX,EDI
00aceda2  b001  MOV AL,0x1
00aceda4  d2e0  SHL AL,CL
00aceda6  8b8c2494000000  MOV ECX,dword ptr [ESP + 0x94]
00acedad  844103  TEST byte ptr [ECX + 0x3],AL
00acedb0  0f8457010000  JZ 0x00acef0d
00acedb6  f30f10442410  MOVSS XMM0,dword ptr [ESP + 0x10]
00acedbc  f30f105c2414  MOVSS XMM3,dword ptr [ESP + 0x14]
00acedc2  0fbec0  MOVSX EAX,AL
00acedc5  83c0ff  ADD EAX,-0x1
00acedc8  83f807  CMP EAX,0x7
00acedcb  0f28e3  MOVAPS XMM4,XMM3
00acedce  0f28d0  MOVAPS XMM2,XMM0
00acedd1  f30f11442474  MOVSS dword ptr [ESP + 0x74],XMM0
00acedd7  f30f11642478  MOVSS dword ptr [ESP + 0x78],XMM4
00aceddd  8974247c  MOV dword ptr [ESP + 0x7c],ESI
00acede1  f30f11942480000000  MOVSS dword ptr [ESP + 0x80],XMM2
00acedea  f30f119c2484000000  MOVSS dword ptr [ESP + 0x84],XMM3
00acedf3  89b42488000000  MOV dword ptr [ESP + 0x88],ESI
00acedfa  7772  JA 0x00acee6e
00acedfc  ff248508f0ac00  JMP dword ptr [EAX*0x4 + 0xacf008]
00acee03  5f  POP EDI
00acee04  5e  POP ESI
00acee05  5d  POP EBP
00acee06  b001  MOV AL,0x1
00acee08  5b  POP EBX
00acee09  83c47c  ADD ESP,0x7c
00acee0c  c3  RET
00acee0d  f30f58c1  ADDSS XMM0,XMM1
00acee11  f30f58d1  ADDSS XMM2,XMM1
00acee15  f30f11442474  MOVSS dword ptr [ESP + 0x74],XMM0
00acee1b  f30f11942480000000  MOVSS dword ptr [ESP + 0x80],XMM2
00acee24  eb3b  JMP 0x00acee61
00acee26  f30f58d1  ADDSS XMM2,XMM1
00acee2a  f30f11942480000000  MOVSS dword ptr [ESP + 0x80],XMM2
00acee33  eb39  JMP 0x00acee6e
00acee35  0f28c4  MOVAPS XMM0,XMM4
00acee38  f30f58c1  ADDSS XMM0,XMM1
00acee3c  0f28e0  MOVAPS XMM4,XMM0
00acee3f  f30f11642478  MOVSS dword ptr [ESP + 0x78],XMM4
00acee45  eb27  JMP 0x00acee6e
00acee47  f30f58c1  ADDSS XMM0,XMM1
00acee4b  f30f11442474  MOVSS dword ptr [ESP + 0x74],XMM0
00acee51  0f28c4  MOVAPS XMM0,XMM4
00acee54  f30f58c1  ADDSS XMM0,XMM1
00acee58  0f28e0  MOVAPS XMM4,XMM0
00acee5b  f30f11642478  MOVSS dword ptr [ESP + 0x78],XMM4
00acee61  f30f58d9  ADDSS XMM3,XMM1
00acee65  f30f119c2484000000  MOVSS dword ptr [ESP + 0x84],XMM3
00acee6e  d9442474  FLD float ptr [ESP + 0x74]
00acee72  db5c2418  FISTP dword ptr [ESP + 0x18]
00acee76  0fb6542418  MOVZX EDX,byte ptr [ESP + 0x18]
00acee7b  88542430  MOV byte ptr [ESP + 0x30],DL
00acee7f  f30f11642428  MOVSS dword ptr [ESP + 0x28],XMM4
00acee85  d9442428  FLD float ptr [ESP + 0x28]
00acee89  db5c241c  FISTP dword ptr [ESP + 0x1c]
00acee8d  0fb644241c  MOVZX EAX,byte ptr [ESP + 0x1c]
00acee92  0fb64c247c  MOVZX ECX,byte ptr [ESP + 0x7c]
00acee97  88442431  MOV byte ptr [ESP + 0x31],AL
00acee9b  884c2432  MOV byte ptr [ESP + 0x32],CL
00acee9f  d9842480000000  FLD float ptr [ESP + 0x80]
00aceea6  db5c2420  FISTP dword ptr [ESP + 0x20]
00aceeaa  0fb6542420  MOVZX EDX,byte ptr [ESP + 0x20]
00aceeaf  88542433  MOV byte ptr [ESP + 0x33],DL
00aceeb3  f30f115c242c  MOVSS dword ptr [ESP + 0x2c],XMM3
00aceeb9  d944242c  FLD float ptr [ESP + 0x2c]
00aceebd  db5c2424  FISTP dword ptr [ESP + 0x24]
00aceec1  0fb68c2488000000  MOVZX ECX,byte ptr [ESP + 0x88]
00aceec9  0fb6442424  MOVZX EAX,byte ptr [ESP + 0x24]
00aceece  8d542430  LEA EDX,[ESP + 0x30]
00aceed2  884c2435  MOV byte ptr [ESP + 0x35],CL
00aceed6  52  PUSH EDX
00aceed7  8bcb  MOV ECX,EBX
00aceed9  88442438  MOV byte ptr [ESP + 0x38],AL
00aceedd  e83e8e0700  CALL 0x00b47d20
00aceee2  84c0  TEST AL,AL
00aceee4  741f  JZ 0x00acef05
00aceee6  6a00  PUSH 0x0
00aceee8  8d442434  LEA EAX,[ESP + 0x34]
00aceeec  50  PUSH EAX
00aceeed  8bcb  MOV ECX,EBX
00aceeef  e8fc8e0700  CALL 0x00b47df0
00aceef4  50  PUSH EAX
00aceef5  e846d01800  CALL 0x00c5bf40
00aceefa  83c404  ADD ESP,0x4
00aceefd  84c0  TEST AL,AL
00aceeff  0f85fefeffff  JNZ 0x00acee03
00acef05  f30f100df898f900  MOVSS XMM1,dword ptr [0x00f998f8]
00acef0d  83c701  ADD EDI,0x1
00acef10  83ff04  CMP EDI,0x4
00acef13  0f8c87feffff  JL 0x00aceda0
00acef19  f30f10442410  MOVSS XMM0,dword ptr [ESP + 0x10]
00acef1f  6a01  PUSH 0x1
00acef21  8d4c2448  LEA ECX,[ESP + 0x48]
00acef25  f30f11442448  MOVSS dword ptr [ESP + 0x48],XMM0
00acef2b  f30f10442418  MOVSS XMM0,dword ptr [ESP + 0x18]
00acef31  51  PUSH ECX
00acef32  8bcb  MOV ECX,EBX
00acef34  f30f11442450  MOVSS dword ptr [ESP + 0x50],XMM0
00acef3a  89742454  MOV dword ptr [ESP + 0x54],ESI
00acef3e  e8bd8f0700  CALL 0x00b47f00
00acef43  83f802  CMP EAX,0x2
00acef46  0f83b7feffff  JNC 0x00acee03
00acef4c  f30f10442410  MOVSS XMM0,dword ptr [ESP + 0x10]
00acef52  f30f11442450  MOVSS dword ptr [ESP + 0x50],XMM0
00acef58  f30f10442414  MOVSS XMM0,dword ptr [ESP + 0x14]
00acef5e  f30f5805f898f900  ADDSS XMM0,dword ptr [0x00f998f8]
00acef66  6a01  PUSH 0x1
00acef68  8d542454  LEA EDX,[ESP + 0x54]
00acef6c  52  PUSH EDX
00acef6d  8bcb  MOV ECX,EBX
00acef6f  f30f11442434  MOVSS dword ptr [ESP + 0x34],XMM0
00acef75  f30f1144245c  MOVSS dword ptr [ESP + 0x5c],XMM0
00acef7b  89742460  MOV dword ptr [ESP + 0x60],ESI
00acef7f  e87c8f0700  CALL 0x00b47f00
00acef84  83f802  CMP EAX,0x2
00acef87  0f8376feffff  JNC 0x00acee03
00acef8d  f30f10442410  MOVSS XMM0,dword ptr [ESP + 0x10]
00acef93  f30f5805f898f900  ADDSS XMM0,dword ptr [0x00f998f8]
00acef9b  6a01  PUSH 0x1
00acef9d  8d442460  LEA EAX,[ESP + 0x60]
00acefa1  f30f1144242c  MOVSS dword ptr [ESP + 0x2c],XMM0
00acefa7  f30f11442460  MOVSS dword ptr [ESP + 0x60],XMM0
00acefad  f30f10442430  MOVSS XMM0,dword ptr [ESP + 0x30]
00acefb3  50  PUSH EAX
00acefb4  8bcb  MOV ECX,EBX
00acefb6  f30f11442468  MOVSS dword ptr [ESP + 0x68],XMM0
00acefbc  8974246c  MOV dword ptr [ESP + 0x6c],ESI
00acefc0  e83b8f0700  CALL 0x00b47f00
00acefc5  83f802  CMP EAX,0x2
00acefc8  0f8335feffff  JNC 0x00acee03
00acefce  f30f10442428  MOVSS XMM0,dword ptr [ESP + 0x28]
00acefd4  6a01  PUSH 0x1
00acefd6  8d4c246c  LEA ECX,[ESP + 0x6c]
00acefda  f30f1144246c  MOVSS dword ptr [ESP + 0x6c],XMM0
00acefe0  f30f10442418  MOVSS XMM0,dword ptr [ESP + 0x18]
00acefe6  51  PUSH ECX
00acefe7  8bcb  MOV ECX,EBX
00acefe9  f30f11442474  MOVSS dword ptr [ESP + 0x74],XMM0
00acefef  89742478  MOV dword ptr [ESP + 0x78],ESI
00aceff3  e8088f0700  CALL 0x00b47f00
00aceff8  5f  POP EDI
00aceff9  5e  POP ESI
00aceffa  83f802  CMP EAX,0x2
00aceffd  5d  POP EBP
00aceffe  0f93c0  SETNC AL
00acf001  5b  POP EBX
00acf002  83c47c  ADD ESP,0x7c
00acf005  c3  RET
