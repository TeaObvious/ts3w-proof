# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Actual complete original PC1.67 Ghidra Listing 00ab7110..00ab719a; Lot_TransformPositionByResolvedPose
# ECX lot owner; two aligned four-float input/output pointer stack arguments; RET8. AB1E10 fills two stack-local four-float values. Shuffle/multiply/subtract/add forms quaternion-style cross products, doubles the second cross product, then adds input and the second returned value. Captures input before storing all four output lanes. AB1E10 pose producer, coordinate-frame direction and pose lifetime remain child/caller boundaries.
00ab7110  55  PUSH EBP
00ab7111  8bec  MOV EBP,ESP
00ab7113  83e4f0  AND ESP,0xfffffff0
00ab7116  83ec20  SUB ESP,0x20
00ab7119  8d0424  LEA EAX,[ESP]
00ab711c  50  PUSH EAX
00ab711d  e8eeacffff  CALL 0x00ab1e10
00ab7122  0f281424  MOVAPS XMM2,xmmword ptr [ESP]
00ab7126  8b4d08  MOV ECX,dword ptr [EBP + 0x8]
00ab7129  0f2809  MOVAPS XMM1,xmmword ptr [ECX]
00ab712c  8b550c  MOV EDX,dword ptr [EBP + 0xc]
00ab712f  0f28da  MOVAPS XMM3,XMM2
00ab7132  0fc6da12  SHUFPS XMM3,XMM2,0x12
00ab7136  0f28e2  MOVAPS XMM4,XMM2
00ab7139  0fc6e209  SHUFPS XMM4,XMM2,0x9
00ab713d  0f28c1  MOVAPS XMM0,XMM1
00ab7140  0fc6c112  SHUFPS XMM0,XMM1,0x12
00ab7144  0f59c4  MULPS XMM0,XMM4
00ab7147  0f28e9  MOVAPS XMM5,XMM1
00ab714a  0fc6e909  SHUFPS XMM5,XMM1,0x9
00ab714e  0f59eb  MULPS XMM5,XMM3
00ab7151  0f5cc5  SUBPS XMM0,XMM5
00ab7154  0f28ea  MOVAPS XMM5,XMM2
00ab7157  0fc6eaff  SHUFPS XMM5,XMM2,0xff
00ab715b  0f59e9  MULPS XMM5,XMM1
00ab715e  0f58c5  ADDPS XMM0,XMM5
00ab7161  0f28d0  MOVAPS XMM2,XMM0
00ab7164  0fc6d012  SHUFPS XMM2,XMM0,0x12
00ab7168  0f59d4  MULPS XMM2,XMM4
00ab716b  0f28e0  MOVAPS XMM4,XMM0
00ab716e  0fc6e009  SHUFPS XMM4,XMM0,0x9
00ab7172  f30f100588fd0301  MOVSS XMM0,dword ptr [0x0103fd88]
00ab717a  0f59e3  MULPS XMM4,XMM3
00ab717d  0f5cd4  SUBPS XMM2,XMM4
00ab7180  0fc6c000  SHUFPS XMM0,XMM0,0x0
00ab7184  0f59d0  MULPS XMM2,XMM0
00ab7187  0f28442410  MOVAPS XMM0,xmmword ptr [ESP + 0x10]
00ab718c  0f58d1  ADDPS XMM2,XMM1
00ab718f  0f58d0  ADDPS XMM2,XMM0
00ab7192  0f2912  MOVAPS xmmword ptr [EDX],XMM2
00ab7195  8be5  MOV ESP,EBP
00ab7197  5d  POP EBP
00ab7198  c20800  RET 0x8
