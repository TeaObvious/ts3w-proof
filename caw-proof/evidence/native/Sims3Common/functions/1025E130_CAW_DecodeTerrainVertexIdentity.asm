# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 1025e130..1025e1ba; CAW_DecodeTerrainVertexIdentity
1025e130: 55  PUSH EBP
1025e131: 8bec  MOV EBP,ESP
1025e133: 83e4f0  AND ESP,0xfffffff0
1025e136: 83ec1c  SUB ESP,0x1c
1025e139: 8b4908  MOV ECX,dword ptr [ECX + 0x8]
1025e13c: 56  PUSH ESI
1025e13d: 8b750c  MOV ESI,dword ptr [EBP + 0xc]
1025e140: 8bc6  MOV EAX,ESI
1025e142: 33d2  XOR EDX,EDX
1025e144: f7f1  DIV ECX
1025e146: 0fafc8  IMUL ECX,EAX
1025e149: 2bf1  SUB ESI,ECX
1025e14b: 85f6  TEST ESI,ESI
1025e14d: 8974240c  MOV dword ptr [ESP + 0xc],ESI
1025e151: db44240c  FILD dword ptr [ESP + 0xc]
1025e155: 7d06  JGE 0x1025e15d
1025e157: d80590e1aa10  FADD float ptr [0x10aae190]
1025e15d: 85c0  TEST EAX,EAX
1025e15f: d95c2408  FSTP float ptr [ESP + 0x8]
1025e163: f30f10442408  MOVSS XMM0,dword ptr [ESP + 0x8]
1025e169: f30f1144241c  MOVSS dword ptr [ESP + 0x1c],XMM0
1025e16f: f30f10058ce1aa10  MOVSS XMM0,dword ptr [0x10aae18c]
1025e177: 8944240c  MOV dword ptr [ESP + 0xc],EAX
1025e17b: db44240c  FILD dword ptr [ESP + 0xc]
1025e17f: f30f11442418  MOVSS dword ptr [ESP + 0x18],XMM0
1025e185: 7d06  JGE 0x1025e18d
1025e187: d80590e1aa10  FADD float ptr [0x10aae190]
1025e18d: 8b4508  MOV EAX,dword ptr [EBP + 0x8]
1025e190: d95c240c  FSTP float ptr [ESP + 0xc]
1025e194: f30f1044240c  MOVSS XMM0,dword ptr [ESP + 0xc]
1025e19a: f30f11442414  MOVSS dword ptr [ESP + 0x14],XMM0
1025e1a0: f30f10442408  MOVSS XMM0,dword ptr [ESP + 0x8]
1025e1a6: f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
1025e1ac: 0f28442410  MOVAPS XMM0,xmmword ptr [ESP + 0x10]
1025e1b1: 0f2900  MOVAPS xmmword ptr [EAX],XMM0
1025e1b4: 5e  POP ESI
1025e1b5: 8be5  MOV ESP,EBP
1025e1b7: 5d  POP EBP
1025e1b8: c20800  RET 0x8
