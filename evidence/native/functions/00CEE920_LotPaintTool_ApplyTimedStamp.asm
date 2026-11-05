# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void LotPaintTool_ApplyTimedStamp(void * this, LotPaintPoint * point)
Owned ranges: [[00cee920, 00ceeb31]]

00cee920  55  PUSH EBP
00cee921  8bec  MOV EBP,ESP
00cee923  83e4f0  AND ESP,0xfffffff0
00cee926  83ec54  SUB ESP,0x54
00cee929  53  PUSH EBX
00cee92a  56  PUSH ESI
00cee92b  8bf1  MOV ESI,ECX
00cee92d  80be8c00000000  CMP byte ptr [ESI + 0x8c],0x0
00cee934  57  PUSH EDI
00cee935  0f84ee010000  JZ 0x00ceeb29
00cee93b  837e3400  CMP dword ptr [ESI + 0x34],0x0
00cee93f  0f84e4010000  JZ 0x00ceeb29
00cee945  83bed800000000  CMP dword ptr [ESI + 0xd8],0x0
00cee94c  0f84d7010000  JZ 0x00ceeb29
00cee952  8d8e00010000  LEA ECX,[ESI + 0x100]
00cee958  e8634e80ff  CALL 0x004f37c0
00cee95d  d954241c  FST float ptr [ESP + 0x1c]
00cee961  d986ec000000  FLD float ptr [ESI + 0xec]
00cee967  dff1  FCOMIP ST0,ST1
00cee969  ddd8  FSTP ST0
00cee96b  0f87b8010000  JA 0x00ceeb29
00cee971  8d9e24010000  LEA EBX,[ESI + 0x124]
00cee977  8bcb  MOV ECX,EBX
00cee979  c686f000000001  MOV byte ptr [ESI + 0xf0],0x1
00cee980  e84b8edeff  CALL 0x00ad77d0
00cee985  8b7d08  MOV EDI,dword ptr [EBP + 0x8]
00cee988  837f0800  CMP dword ptr [EDI + 0x8],0x0
00cee98c  0f8555010000  JNZ 0x00ceeae7
00cee992  8b4634  MOV EAX,dword ptr [ESI + 0x34]
00cee995  57  PUSH EDI
00cee996  50  PUSH EAX
00cee997  8bcb  MOV ECX,EBX
00cee999  e8f284deff  CALL 0x00ad6e90
00cee99e  6a01  PUSH 0x1
00cee9a0  8bce  MOV ECX,ESI
00cee9a2  e8b9faffff  CALL 0x00cee460
00cee9a7  8b4634  MOV EAX,dword ptr [ESI + 0x34]
00cee9aa  db8074010000  FILD dword ptr [EAX + 0x174]
00cee9b0  f30f1007  MOVSS XMM0,dword ptr [EDI]
00cee9b4  f30f11442414  MOVSS dword ptr [ESP + 0x14],XMM0
00cee9ba  8d4c2414  LEA ECX,[ESP + 0x14]
00cee9be  d8642414  FSUB float ptr [ESP + 0x14]
00cee9c2  d9e1  FABS
00cee9c4  d95c2414  FSTP float ptr [ESP + 0x14]
00cee9c8  0f2f442414  COMISS XMM0,dword ptr [ESP + 0x14]
00cee9cd  7702  JA 0x00cee9d1
00cee9cf  8bcf  MOV ECX,EDI
00cee9d1  f30f1009  MOVSS XMM1,dword ptr [ECX]
00cee9d5  db8078010000  FILD dword ptr [EAX + 0x178]
00cee9db  8d4f04  LEA ECX,[EDI + 0x4]
00cee9de  f30f114c2418  MOVSS dword ptr [ESP + 0x18],XMM1
00cee9e4  d821  FSUB float ptr [ECX]
00cee9e6  d9e1  FABS
00cee9e8  d9542414  FST float ptr [ESP + 0x14]
00cee9ec  d901  FLD float ptr [ECX]
00cee9ee  dff1  FCOMIP ST0,ST1
00cee9f0  ddd8  FSTP ST0
00cee9f2  7604  JBE 0x00cee9f8
00cee9f4  8d4c2414  LEA ECX,[ESP + 0x14]
00cee9f8  f30f1001  MOVSS XMM0,dword ptr [ECX]
00cee9fc  0f2fc8  COMISS XMM1,XMM0
00cee9ff  f30f11442414  MOVSS dword ptr [ESP + 0x14],XMM0
00ceea05  8d442414  LEA EAX,[ESP + 0x14]
00ceea09  7704  JA 0x00ceea0f
00ceea0b  8d442418  LEA EAX,[ESP + 0x18]
00ceea0f  f30f1000  MOVSS XMM0,dword ptr [EAX]
00ceea13  f30f100d54310801  MOVSS XMM1,dword ptr [0x01083154]
00ceea1b  0f2fc8  COMISS XMM1,XMM0
00ceea1e  760a  JBE 0x00ceea2a
00ceea20  f30f590544310801  MULSS XMM0,dword ptr [0x01083144]
00ceea28  eb08  JMP 0x00ceea32
00ceea2a  f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
00ceea32  8d8e94000000  LEA ECX,[ESI + 0x94]
00ceea38  51  PUSH ECX
00ceea39  57  PUSH EDI
00ceea3a  8bce  MOV ECX,ESI
00ceea3c  f30f1186e8000000  MOVSS dword ptr [ESI + 0xe8],XMM0
00ceea44  e877ab0200  CALL 0x00d195c0
00ceea49  f30f1044241c  MOVSS XMM0,dword ptr [ESP + 0x1c]
00ceea4f  f30f580540310801  ADDSS XMM0,dword ptr [0x01083140]
00ceea57  8bce  MOV ECX,ESI
00ceea59  f30f1186ec000000  MOVSS dword ptr [ESI + 0xec],XMM0
00ceea61  e88af6ffff  CALL 0x00cee0f0
00ceea66  80bef000000000  CMP byte ptr [ESI + 0xf0],0x0
00ceea6d  750e  JNZ 0x00ceea7d
00ceea6f  8b5628  MOV EDX,dword ptr [ESI + 0x28]
00ceea72  8b4254  MOV EAX,dword ptr [EDX + 0x54]
00ceea75  8d4e28  LEA ECX,[ESI + 0x28]
00ceea78  6a01  PUSH 0x1
00ceea7a  57  PUSH EDI
00ceea7b  ffd0  CALL EAX
00ceea7d  8b8ebc000000  MOV ECX,dword ptr [ESI + 0xbc]
00ceea83  3b8ec4000000  CMP ECX,dword ptr [ESI + 0xc4]
00ceea89  7f29  JG 0x00ceeab4
00ceea8b  8b96c0000000  MOV EDX,dword ptr [ESI + 0xc0]
00ceea91  3b96c8000000  CMP EDX,dword ptr [ESI + 0xc8]
00ceea97  7f1b  JG 0x00ceeab4
00ceea99  6a00  PUSH 0x0
00ceea9b  8bce  MOV ECX,ESI
00ceea9d  e83efcffff  CALL 0x00cee6e0
00ceeaa2  6a00  PUSH 0x0
00ceeaa4  8bce  MOV ECX,ESI
00ceeaa6  e8b5f9ffff  CALL 0x00cee460
00ceeaab  5f  POP EDI
00ceeaac  5e  POP ESI
00ceeaad  5b  POP EBX
00ceeaae  8be5  MOV ESP,EBP
00ceeab0  5d  POP EBP
00ceeab1  c20400  RET 0x4
00ceeab4  6a01  PUSH 0x1
00ceeab6  8bce  MOV ECX,ESI
00ceeab8  e823fcffff  CALL 0x00cee6e0
00ceeabd  8bcb  MOV ECX,EBX
00ceeabf  e84c84deff  CALL 0x00ad6f10
00ceeac4  84c0  TEST AL,AL
00ceeac6  740d  JZ 0x00ceead5
00ceeac8  6a01  PUSH 0x1
00ceeaca  6a01  PUSH 0x1
00ceeacc  53  PUSH EBX
00ceeacd  8d4e28  LEA ECX,[ESI + 0x28]
00ceead0  e8bb4dfeff  CALL 0x00cd3890
00ceead5  6a00  PUSH 0x0
00ceead7  8bce  MOV ECX,ESI
00ceead9  e882f9ffff  CALL 0x00cee460
00ceeade  5f  POP EDI
00ceeadf  5e  POP ESI
00ceeae0  5b  POP EBX
00ceeae1  8be5  MOV ESP,EBP
00ceeae3  5d  POP EBP
00ceeae4  c20400  RET 0x4
00ceeae7  6a01  PUSH 0x1
00ceeae9  8bce  MOV ECX,ESI
00ceeaeb  e8f0fbffff  CALL 0x00cee6e0
00ceeaf0  8b4634  MOV EAX,dword ptr [ESI + 0x34]
00ceeaf3  6a00  PUSH 0x0
00ceeaf5  6a00  PUSH 0x0
00ceeaf7  57  PUSH EDI
00ceeaf8  50  PUSH EAX
00ceeaf9  68d7000000  PUSH 0xd7
00ceeafe  8d4c2434  LEA ECX,[ESP + 0x34]
00ceeb02  e8197cdeff  CALL 0x00ad6720
00ceeb07  8d4c2420  LEA ECX,[ESP + 0x20]
00ceeb0b  51  PUSH ECX
00ceeb0c  8bcb  MOV ECX,EBX
00ceeb0e  e85d9adeff  CALL 0x00ad8570
00ceeb13  6a01  PUSH 0x1
00ceeb15  6a01  PUSH 0x1
00ceeb17  53  PUSH EBX
00ceeb18  8d4e28  LEA ECX,[ESI + 0x28]
00ceeb1b  e8704dfeff  CALL 0x00cd3890
00ceeb20  8d4c2420  LEA ECX,[ESP + 0x20]
00ceeb24  e8a785deff  CALL 0x00ad70d0
00ceeb29  5f  POP EDI
00ceeb2a  5e  POP ESI
00ceeb2b  5b  POP EBX
00ceeb2c  8be5  MOV ESP,EBP
00ceeb2e  5d  POP EBP
00ceeb2f  c20400  RET 0x4
