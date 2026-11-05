# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Actual complete original PC1.67 Ghidra Listing 00ab6f60..00ab703a; Lot_WorldXZToLocalXZWithMovingPose
# ECX lot owner; two float inputs and two output pointers; RET16. Zero byte at lot+444 delegates unchanged inputs to AB6E40. Nonzero byte calls AB20B0 for a matrix and evaluates X*row0+row3+zero*row1+Z*row2 through ordered MULPS/ADDPS, extracts X/Z, then calls AB6E40. Matrix producer and moving-pose lifetime remain child boundaries.
00ab6f60  55  PUSH EBP
00ab6f61  8bec  MOV EBP,ESP
00ab6f63  83e4f0  AND ESP,0xfffffff0
00ab6f66  83ec6c  SUB ESP,0x6c
00ab6f69  56  PUSH ESI
00ab6f6a  8bf1  MOV ESI,ECX
00ab6f6c  80be4404000000  CMP byte ptr [ESI + 0x444],0x0
00ab6f73  0f849c000000  JZ 0x00ab7015
00ab6f79  8d442430  LEA EAX,[ESP + 0x30]
00ab6f7d  50  PUSH EAX
00ab6f7e  e82db1ffff  CALL 0x00ab20b0
00ab6f83  f30f104d0c  MOVSS XMM1,dword ptr [EBP + 0xc]
00ab6f88  f30f104508  MOVSS XMM0,dword ptr [EBP + 0x8]
00ab6f8d  0f2810  MOVAPS XMM2,xmmword ptr [EAX]
00ab6f90  0f285810  MOVAPS XMM3,xmmword ptr [EAX + 0x10]
00ab6f94  8b4d14  MOV ECX,dword ptr [EBP + 0x14]
00ab6f97  8b5510  MOV EDX,dword ptr [EBP + 0x10]
00ab6f9a  f30f1144241c  MOVSS dword ptr [ESP + 0x1c],XMM0
00ab6fa0  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
00ab6fa6  f30f114c2418  MOVSS dword ptr [ESP + 0x18],XMM1
00ab6fac  0f57c9  XORPS XMM1,XMM1
00ab6faf  f30f114c2414  MOVSS dword ptr [ESP + 0x14],XMM1
00ab6fb5  0f284c2410  MOVAPS XMM1,xmmword ptr [ESP + 0x10]
00ab6fba  0f28c1  MOVAPS XMM0,XMM1
00ab6fbd  0fc6c100  SHUFPS XMM0,XMM1,0x0
00ab6fc1  0f59c2  MULPS XMM0,XMM2
00ab6fc4  0f285030  MOVAPS XMM2,xmmword ptr [EAX + 0x30]
00ab6fc8  0f58c2  ADDPS XMM0,XMM2
00ab6fcb  0f28d1  MOVAPS XMM2,XMM1
00ab6fce  0fc6d155  SHUFPS XMM2,XMM1,0x55
00ab6fd2  0f59d3  MULPS XMM2,XMM3
00ab6fd5  0f58c2  ADDPS XMM0,XMM2
00ab6fd8  0f28d1  MOVAPS XMM2,XMM1
00ab6fdb  0fc6d1aa  SHUFPS XMM2,XMM1,0xaa
00ab6fdf  0f284820  MOVAPS XMM1,xmmword ptr [EAX + 0x20]
00ab6fe3  51  PUSH ECX
00ab6fe4  0f59d1  MULPS XMM2,XMM1
00ab6fe7  0f58c2  ADDPS XMM0,XMM2
00ab6fea  0f29442414  MOVAPS xmmword ptr [ESP + 0x14],XMM0
00ab6fef  d944241c  FLD float ptr [ESP + 0x1c]
00ab6ff3  52  PUSH EDX
00ab6ff4  83ec08  SUB ESP,0x8
00ab6ff7  d95c2404  FSTP float ptr [ESP + 0x4]
00ab6ffb  0f29442430  MOVAPS xmmword ptr [ESP + 0x30],XMM0
00ab7000  d9442430  FLD float ptr [ESP + 0x30]
00ab7004  8bce  MOV ECX,ESI
00ab7006  d91c24  FSTP float ptr [ESP]
00ab7009  e832feffff  CALL 0x00ab6e40
00ab700e  5e  POP ESI
00ab700f  8be5  MOV ESP,EBP
00ab7011  5d  POP EBP
00ab7012  c21000  RET 0x10
00ab7015  8b4514  MOV EAX,dword ptr [EBP + 0x14]
00ab7018  d9450c  FLD float ptr [EBP + 0xc]
00ab701b  8b4d10  MOV ECX,dword ptr [EBP + 0x10]
00ab701e  50  PUSH EAX
00ab701f  51  PUSH ECX
00ab7020  83ec08  SUB ESP,0x8
00ab7023  d95c2404  FSTP float ptr [ESP + 0x4]
00ab7027  8bce  MOV ECX,ESI
00ab7029  d94508  FLD float ptr [EBP + 0x8]
00ab702c  d91c24  FSTP float ptr [ESP]
00ab702f  e80cfeffff  CALL 0x00ab6e40
00ab7034  5e  POP ESI
00ab7035  8be5  MOV ESP,EBP
00ab7037  5d  POP EBP
00ab7038  c21000  RET 0x10
