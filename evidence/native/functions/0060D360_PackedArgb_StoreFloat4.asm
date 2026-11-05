# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Actual saved-clean original PC1.67 full owned Ghidra Listing
# Entry 0060d360 PackedArgb_StoreFloat4
# Body [[0060d360, 0060d42e]]; owned bytes=207
0060d360  55  PUSH EBP
0060d361  8bec  MOV EBP,ESP
0060d363  83e4f0  AND ESP,0xfffffff0
0060d366  b801000000  MOV EAX,0x1
0060d36b  83ec20  SUB ESP,0x20
0060d36e  8405c0fc1c01  TEST byte ptr [0x011cfcc0],AL
0060d374  7532  JNZ 0x0060d3a8
0060d376  f30f10053441fa00  MOVSS XMM0,dword ptr [0x00fa4134]
0060d37e  0905c0fc1c01  OR dword ptr [0x011cfcc0],EAX
0060d384  f30f1144241c  MOVSS dword ptr [ESP + 0x1c],XMM0
0060d38a  f30f11442418  MOVSS dword ptr [ESP + 0x18],XMM0
0060d390  f30f11442414  MOVSS dword ptr [ESP + 0x14],XMM0
0060d396  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
0060d39c  0f28442410  MOVAPS XMM0,xmmword ptr [ESP + 0x10]
0060d3a1  0f2905b0fc1c01  MOVAPS xmmword ptr [0x011cfcb0],XMM0
0060d3a8  8b4508  MOV EAX,dword ptr [EBP + 0x8]
0060d3ab  0f2800  MOVAPS XMM0,xmmword ptr [EAX]
0060d3ae  0f5905b0fc1c01  MULPS XMM0,xmmword ptr [0x011cfcb0]
0060d3b5  0f29442410  MOVAPS xmmword ptr [ESP + 0x10],XMM0
0060d3ba  f30f1005c487fe00  MOVSS XMM0,dword ptr [0x00fe87c4]
0060d3c2  f30f104c2410  MOVSS XMM1,dword ptr [ESP + 0x10]
0060d3c8  f30f58c8  ADDSS XMM1,XMM0
0060d3cc  f30f114c2404  MOVSS dword ptr [ESP + 0x4],XMM1
0060d3d2  f30f104c2414  MOVSS XMM1,dword ptr [ESP + 0x14]
0060d3d8  f30f58c8  ADDSS XMM1,XMM0
0060d3dc  f30f114c2408  MOVSS dword ptr [ESP + 0x8],XMM1
0060d3e2  f30f104c2418  MOVSS XMM1,dword ptr [ESP + 0x18]
0060d3e8  8b442408  MOV EAX,dword ptr [ESP + 0x8]
0060d3ec  f30f58c8  ADDSS XMM1,XMM0
0060d3f0  f30f114c240c  MOVSS dword ptr [ESP + 0xc],XMM1
0060d3f6  f30f104c241c  MOVSS XMM1,dword ptr [ESP + 0x1c]
0060d3fc  f30f58c8  ADDSS XMM1,XMM0
0060d400  f30f110c24  MOVSS dword ptr [ESP],XMM1
0060d405  8b1424  MOV EDX,dword ptr [ESP]
0060d408  c1e208  SHL EDX,0x8
0060d40b  0b542404  OR EDX,dword ptr [ESP + 0x4]
0060d40f  050000c0ff  ADD EAX,0xffc00000
0060d414  c1e208  SHL EDX,0x8
0060d417  0bd0  OR EDX,EAX
0060d419  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
0060d41d  c1e208  SHL EDX,0x8
0060d420  050000c0b4  ADD EAX,0xb4c00000
0060d425  0bd0  OR EDX,EAX
0060d427  8911  MOV dword ptr [ECX],EDX
0060d429  8be5  MOV ESP,EBP
0060d42b  5d  POP EBP
0060d42c  c20400  RET 0x4
