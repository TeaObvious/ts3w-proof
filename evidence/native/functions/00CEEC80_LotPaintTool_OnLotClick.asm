# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool LotPaintTool_OnLotClick(void * this, pointer lot, LotPaintPoint * point)
Owned ranges: [[00ceec80, 00ceef98]]

00ceec80  55  PUSH EBP
00ceec81  8bec  MOV EBP,ESP
00ceec83  83e4f0  AND ESP,0xfffffff0
00ceec86  83ec64  SUB ESP,0x64
00ceec89  53  PUSH EBX
00ceec8a  8b5d08  MOV EBX,dword ptr [EBP + 0x8]
00ceec8d  85db  TEST EBX,EBX
00ceec8f  56  PUSH ESI
00ceec90  57  PUSH EDI
00ceec91  8bf1  MOV ESI,ECX
00ceec93  0f84f5020000  JZ 0x00ceef8e
00ceec99  8b460c  MOV EAX,dword ptr [ESI + 0xc]
00ceec9c  3bd8  CMP EBX,EAX
00ceec9e  0f85ea020000  JNZ 0x00ceef8e
00ceeca4  8b8094020000  MOV EAX,dword ptr [EAX + 0x294]
00ceecaa  85c0  TEST EAX,EAX
00ceecac  894660  MOV dword ptr [ESI + 0x60],EAX
00ceecaf  0f84d9020000  JZ 0x00ceef8e
00ceecb5  83beb800000000  CMP dword ptr [ESI + 0xb8],0x0
00ceecbc  0f84cc020000  JZ 0x00ceef8e
00ceecc2  83beb400000000  CMP dword ptr [ESI + 0xb4],0x0
00ceecc9  0f84bf020000  JZ 0x00ceef8e
00ceeccf  f30f100518b2fa00  MOVSS XMM0,dword ptr [0x00fab218]
00ceecd7  8b450c  MOV EAX,dword ptr [EBP + 0xc]
00ceecda  f30f1010  MOVSS XMM2,dword ptr [EAX]
00ceecde  f30f100d54310801  MOVSS XMM1,dword ptr [0x01083154]
00ceece6  f30f11442418  MOVSS dword ptr [ESP + 0x18],XMM0
00ceecec  f30f1144241c  MOVSS dword ptr [ESP + 0x1c],XMM0
00ceecf2  f30f1005b4b5f900  MOVSS XMM0,dword ptr [0x00f9b5b4]
00ceecfa  f30f59d1  MULSS XMM2,XMM1
00ceecfe  f30f58d0  ADDSS XMM2,XMM0
00ceed02  c744242000000000  MOV dword ptr [ESP + 0x20],0x0
00ceed0a  f30f11542414  MOVSS dword ptr [ESP + 0x14],XMM2
00ceed10  d9442414  FLD float ptr [ESP + 0x14]
00ceed14  db5c2410  FISTP dword ptr [ESP + 0x10]
00ceed18  f30f2a542410  CVTSI2SS XMM2,dword ptr [ESP + 0x10]
00ceed1e  f30f5cd0  SUBSS XMM2,XMM0
00ceed22  f30f591544310801  MULSS XMM2,dword ptr [0x01083144]
00ceed2a  f30f11542418  MOVSS dword ptr [ESP + 0x18],XMM2
00ceed30  f30f105004  MOVSS XMM2,dword ptr [EAX + 0x4]
00ceed35  f30f59d1  MULSS XMM2,XMM1
00ceed39  f30f58d0  ADDSS XMM2,XMM0
00ceed3d  f30f11542414  MOVSS dword ptr [ESP + 0x14],XMM2
00ceed43  d9442414  FLD float ptr [ESP + 0x14]
00ceed47  db5c2410  FISTP dword ptr [ESP + 0x10]
00ceed4b  f30f2a4c2410  CVTSI2SS XMM1,dword ptr [ESP + 0x10]
00ceed51  8b4008  MOV EAX,dword ptr [EAX + 0x8]
00ceed54  f30f5cc8  SUBSS XMM1,XMM0
00ceed58  f30f590d44310801  MULSS XMM1,dword ptr [0x01083144]
00ceed60  8dbefc000000  LEA EDI,[ESI + 0xfc]
00ceed66  8bcf  MOV ECX,EDI
00ceed68  f30f114c241c  MOVSS dword ptr [ESP + 0x1c],XMM1
00ceed6e  89442420  MOV dword ptr [ESP + 0x20],EAX
00ceed72  e8598adeff  CALL 0x00ad77d0
00ceed77  837c242000  CMP dword ptr [ESP + 0x20],0x0
00ceed7c  0f85d3010000  JNZ 0x00ceef55
00ceed82  8d4c2418  LEA ECX,[ESP + 0x18]
00ceed86  51  PUSH ECX
00ceed87  8bcb  MOV ECX,EBX
00ceed89  e8f2bca5ff  CALL 0x0074aa80
00ceed8e  84c0  TEST AL,AL
00ceed90  0f84bf010000  JZ 0x00ceef55
00ceed96  57  PUSH EDI
00ceed97  8d54241c  LEA EDX,[ESP + 0x1c]
00ceed9b  52  PUSH EDX
00ceed9c  53  PUSH EBX
00ceed9d  e82e55d7ff  CALL 0x00a642d0
00ceeda2  83c40c  ADD ESP,0xc
00ceeda5  84c0  TEST AL,AL
00ceeda7  7417  JZ 0x00ceedc0
00ceeda9  6a01  PUSH 0x1
00ceedab  6a01  PUSH 0x1
00ceedad  57  PUSH EDI
00ceedae  8bce  MOV ECX,ESI
00ceedb0  e8db4afeff  CALL 0x00cd3890
00ceedb5  32c0  XOR AL,AL
00ceedb7  5f  POP EDI
00ceedb8  5e  POP ESI
00ceedb9  5b  POP EBX
00ceedba  8be5  MOV ESP,EBP
00ceedbc  5d  POP EBP
00ceedbd  c20800  RET 0x8
00ceedc0  807e6400  CMP byte ptr [ESI + 0x64],0x0
00ceedc4  c686c900000000  MOV byte ptr [ESI + 0xc9],0x0
00ceedcb  0f8538010000  JNZ 0x00ceef09
00ceedd1  0f57c0  XORPS XMM0,XMM0
00ceedd4  6a00  PUSH 0x0
00ceedd6  6a00  PUSH 0x0
00ceedd8  6a00  PUSH 0x0
00ceedda  6a00  PUSH 0x0
00ceeddc  6890310801  PUSH 0x1083190
00ceede1  68c0000000  PUSH 0xc0
00ceede6  c6466401  MOV byte ptr [ESI + 0x64],0x1
00ceedea  f30f1186c4000000  MOVSS dword ptr [ESI + 0xc4],XMM0
00ceedf2  e809577fff  CALL 0x004e4500
00ceedf7  83c418  ADD ESP,0x18
00ceedfa  85c0  TEST EAX,EAX
00ceedfc  7409  JZ 0x00ceee07
00ceedfe  8bc8  MOV ECX,EAX
00ceee00  e88b530300  CALL 0x00d24190
00ceee05  eb02  JMP 0x00ceee09
00ceee07  33c0  XOR EAX,EAX
00ceee09  8dbe88010000  LEA EDI,[ESI + 0x188]
00ceee0f  50  PUSH EAX
00ceee10  8bcf  MOV ECX,EDI
00ceee12  e8797787ff  CALL 0x00566590
00ceee17  8b0f  MOV ECX,dword ptr [EDI]
00ceee19  8b01  MOV EAX,dword ptr [ECX]
00ceee1b  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00ceee1e  ffd2  CALL EDX
00ceee20  8b8684010000  MOV EAX,dword ptr [ESI + 0x184]
00ceee26  8b1f  MOV EBX,dword ptr [EDI]
00ceee28  50  PUSH EAX
00ceee29  e8d2ba0200  CALL 0x00d1a900
00ceee2e  d99bb0000000  FSTP float ptr [EBX + 0xb0]
00ceee34  8b8684010000  MOV EAX,dword ptr [ESI + 0x184]
00ceee3a  8b3f  MOV EDI,dword ptr [EDI]
00ceee3c  83c404  ADD ESP,0x4
00ceee3f  83c008  ADD EAX,0x8
00ceee42  50  PUSH EAX
00ceee43  8b460c  MOV EAX,dword ptr [ESI + 0xc]
00ceee46  50  PUSH EAX
00ceee47  8bcf  MOV ECX,EDI
00ceee49  e8c2500300  CALL 0x00d23f10
00ceee4e  894668  MOV dword ptr [ESI + 0x68],EAX
00ceee51  8b460c  MOV EAX,dword ptr [ESI + 0xc]
00ceee54  8b8878010000  MOV ECX,dword ptr [EAX + 0x178]
00ceee5a  8b9074010000  MOV EDX,dword ptr [EAX + 0x174]
00ceee60  03c9  ADD ECX,ECX
00ceee62  03c9  ADD ECX,ECX
00ceee64  51  PUSH ECX
00ceee65  03d2  ADD EDX,EDX
00ceee67  03d2  ADD EDX,EDX
00ceee69  52  PUSH EDX
00ceee6a  6a00  PUSH 0x0
00ceee6c  6a00  PUSH 0x0
00ceee6e  8d7ed8  LEA EDI,[ESI + -0x28]
00ceee71  6a04  PUSH 0x4
00ceee73  8bcf  MOV ECX,EDI
00ceee75  e8369f0200  CALL 0x00d18db0
00ceee7a  8b442420  MOV EAX,dword ptr [ESP + 0x20]
00ceee7e  50  PUSH EAX
00ceee7f  8bce  MOV ECX,ESI
00ceee81  e82ae8ffff  CALL 0x00ced6b0
00ceee86  f30f1005f892fe00  MOVSS XMM0,dword ptr [0x00fe92f8]
00ceee8e  f30f104c2418  MOVSS XMM1,dword ptr [ESP + 0x18]
00ceee94  8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
00ceee98  8b460c  MOV EAX,dword ptr [ESI + 0xc]
00ceee9b  f30f5cc8  SUBSS XMM1,XMM0
00ceee9f  8d542424  LEA EDX,[ESP + 0x24]
00ceeea3  f30f114c2424  MOVSS dword ptr [ESP + 0x24],XMM1
00ceeea9  f30f104c241c  MOVSS XMM1,dword ptr [ESP + 0x1c]
00ceeeaf  52  PUSH EDX
00ceeeb0  894c2430  MOV dword ptr [ESP + 0x30],ECX
00ceeeb4  f30f5cc8  SUBSS XMM1,XMM0
00ceeeb8  50  PUSH EAX
00ceeeb9  8bcf  MOV ECX,EDI
00ceeebb  f30f114c2430  MOVSS dword ptr [ESP + 0x30],XMM1
00ceeec1  e88af0ffff  CALL 0x00cedf50
00ceeec6  0f57c0  XORPS XMM0,XMM0
00ceeec9  8d8ed8000000  LEA ECX,[ESI + 0xd8]
00ceeecf  f30f1186c4000000  MOVSS dword ptr [ESI + 0xc4],XMM0
00ceeed7  e8b4497fff  CALL 0x004e3890
00ceeedc  8d4c2424  LEA ECX,[ESP + 0x24]
00ceeee0  51  PUSH ECX
00ceeee1  8bcf  MOV ECX,EDI
00ceeee3  e838faffff  CALL 0x00cee920
00ceeee8  8b542424  MOV EDX,dword ptr [ESP + 0x24]
00ceeeec  8b442428  MOV EAX,dword ptr [ESP + 0x28]
00ceeef0  8b4c242c  MOV ECX,dword ptr [ESP + 0x2c]
00ceeef4  8b5d08  MOV EBX,dword ptr [EBP + 0x8]
00ceeef7  8996f0000000  MOV dword ptr [ESI + 0xf0],EDX
00ceeefd  8986f4000000  MOV dword ptr [ESI + 0xf4],EAX
00ceef03  898ef8000000  MOV dword ptr [ESI + 0xf8],ECX
00ceef09  8d4ed8  LEA ECX,[ESI + -0x28]
00ceef0c  e88ff6ffff  CALL 0x00cee5a0
00ceef11  d9ee  FLDZ
00ceef13  8b16  MOV EDX,dword ptr [ESI]
00ceef15  8b5274  MOV EDX,dword ptr [EDX + 0x74]
00ceef18  51  PUSH ECX
00ceef19  d91c24  FSTP float ptr [ESP]
00ceef1c  8d44241c  LEA EAX,[ESP + 0x1c]
00ceef20  50  PUSH EAX
00ceef21  53  PUSH EBX
00ceef22  8bce  MOV ECX,ESI
00ceef24  ffd2  CALL EDX
00ceef26  83be7c01000000  CMP dword ptr [ESI + 0x17c],0x0
00ceef2d  751b  JNZ 0x00ceef4a
00ceef2f  a164c01e01  MOV EAX,[0x011ec064]
00ceef34  8b0d60c01e01  MOV ECX,dword ptr [0x011ec060]
00ceef3a  50  PUSH EAX
00ceef3b  51  PUSH ECX
00ceef3c  e8dfefffff  CALL 0x00cedf20
00ceef41  83c408  ADD ESP,0x8
00ceef44  89867c010000  MOV dword ptr [ESI + 0x17c],EAX
00ceef4a  b001  MOV AL,0x1
00ceef4c  5f  POP EDI
00ceef4d  5e  POP ESI
00ceef4e  5b  POP EBX
00ceef4f  8be5  MOV ESP,EBP
00ceef51  5d  POP EBP
00ceef52  c20800  RET 0x8
00ceef55  6a00  PUSH 0x0
00ceef57  6a00  PUSH 0x0
00ceef59  8d542420  LEA EDX,[ESP + 0x20]
00ceef5d  52  PUSH EDX
00ceef5e  53  PUSH EBX
00ceef5f  68d7000000  PUSH 0xd7
00ceef64  8d4c2444  LEA ECX,[ESP + 0x44]
00ceef68  e8b377deff  CALL 0x00ad6720
00ceef6d  8d442430  LEA EAX,[ESP + 0x30]
00ceef71  50  PUSH EAX
00ceef72  8bcf  MOV ECX,EDI
00ceef74  e8f795deff  CALL 0x00ad8570
00ceef79  6a01  PUSH 0x1
00ceef7b  6a01  PUSH 0x1
00ceef7d  57  PUSH EDI
00ceef7e  8bce  MOV ECX,ESI
00ceef80  e80b49feff  CALL 0x00cd3890
00ceef85  8d4c2430  LEA ECX,[ESP + 0x30]
00ceef89  e84281deff  CALL 0x00ad70d0
00ceef8e  5f  POP EDI
00ceef8f  5e  POP ESI
00ceef90  32c0  XOR AL,AL
00ceef92  5b  POP EBX
00ceef93  8be5  MOV ESP,EBP
00ceef95  5d  POP EBP
00ceef96  c20800  RET 0x8
