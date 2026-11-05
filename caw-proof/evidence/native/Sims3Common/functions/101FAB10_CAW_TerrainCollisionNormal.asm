# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 101fab10..101fac78; CAW_TerrainCollisionNormal
101fab10: 55  PUSH EBP
101fab11: 8bec  MOV EBP,ESP
101fab13: 83e4f0  AND ESP,0xfffffff0
101fab16: 83ec7c  SUB ESP,0x7c
101fab19: 56  PUSH ESI
101fab1a: d9450c  FLD float ptr [EBP + 0xc]
101fab1d: db542410  FIST dword ptr [ESP + 0x10]
101fab21: db442410  FILD dword ptr [ESP + 0x10]
101fab25: dee9  FSUBP
101fab27: d95c240c  FSTP float ptr [ESP + 0xc]
101fab2b: 817c240c01000080  CMP dword ptr [ESP + 0xc],0x80000001
101fab33: 8b442410  MOV EAX,dword ptr [ESP + 0x10]
101fab37: 83d0ff  ADC EAX,-0x1
101fab3a: 8bd0  MOV EDX,EAX
101fab3c: d94510  FLD float ptr [EBP + 0x10]
101fab3f: db542418  FIST dword ptr [ESP + 0x18]
101fab43: db442418  FILD dword ptr [ESP + 0x18]
101fab47: dee9  FSUBP
101fab49: d95c2414  FSTP float ptr [ESP + 0x14]
101fab4d: 817c241401000080  CMP dword ptr [ESP + 0x14],0x80000001
101fab55: 8b442418  MOV EAX,dword ptr [ESP + 0x18]
101fab59: 83d0ff  ADC EAX,-0x1
101fab5c: c1f808  SAR EAX,0x8
101fab5f: 8bf0  MOV ESI,EAX
101fab61: 8b81cc000000  MOV EAX,dword ptr [ECX + 0xcc]
101fab67: c1fa08  SAR EDX,0x8
101fab6a: 3bd0  CMP EDX,EAX
101fab6c: 7318  JNC 0x101fab86
101fab6e: 3bb1d0000000  CMP ESI,dword ptr [ECX + 0xd0]
101fab74: 7310  JNC 0x101fab86
101fab76: 0fafc6  IMUL EAX,ESI
101fab79: 03c2  ADD EAX,EDX
101fab7b: 8b91bc000000  MOV EDX,dword ptr [ECX + 0xbc]
101fab81: 8b0482  MOV EAX,dword ptr [EDX + EAX*0x4]
101fab84: eb02  JMP 0x101fab88
101fab86: 33c0  XOR EAX,EAX
101fab88: 85c0  TEST EAX,EAX
101fab8a: 0f57c0  XORPS XMM0,XMM0
101fab8d: f30f100dd4b0ac10  MOVSS XMM1,dword ptr [0x10acb0d4]
101fab95: 8b7508  MOV ESI,dword ptr [EBP + 0x8]
101fab98: f30f1144242c  MOVSS dword ptr [ESP + 0x2c],XMM0
101fab9e: f30f11442428  MOVSS dword ptr [ESP + 0x28],XMM0
101faba4: f30f114c2424  MOVSS dword ptr [ESP + 0x24],XMM1
101fabaa: f30f11442420  MOVSS dword ptr [ESP + 0x20],XMM0
101fabb0: 0f284c2420  MOVAPS XMM1,xmmword ptr [ESP + 0x20]
101fabb5: 0f290e  MOVAPS xmmword ptr [ESI],XMM1
101fabb8: 0f84b2000000  JZ 0x101fac70
101fabbe: 8b4934  MOV ECX,dword ptr [ECX + 0x34]
101fabc1: 85c9  TEST ECX,ECX
101fabc3: f30f104d0c  MOVSS XMM1,dword ptr [EBP + 0xc]
101fabc8: f30f114c242c  MOVSS dword ptr [ESP + 0x2c],XMM1
101fabce: f30f104d10  MOVSS XMM1,dword ptr [EBP + 0x10]
101fabd3: 894c241c  MOV dword ptr [ESP + 0x1c],ECX
101fabd7: db44241c  FILD dword ptr [ESP + 0x1c]
101fabdb: f30f114c2428  MOVSS dword ptr [ESP + 0x28],XMM1
101fabe1: 7d06  JGE 0x101fabe9
101fabe3: d80590e1aa10  FADD float ptr [0x10aae190]
101fabe9: d8051c63b510  FADD float ptr [0x10b5631c]
101fabef: 8d4c2450  LEA ECX,[ESP + 0x50]
101fabf3: 51  PUSH ECX
101fabf4: 8d4c2434  LEA ECX,[ESP + 0x34]
101fabf8: d95c2420  FSTP float ptr [ESP + 0x20]
101fabfc: 51  PUSH ECX
101fabfd: f30f104c2424  MOVSS XMM1,dword ptr [ESP + 0x24]
101fac03: 0f285020  MOVAPS XMM2,xmmword ptr [EAX + 0x20]
101fac07: 8b4038  MOV EAX,dword ptr [EAX + 0x38]
101fac0a: f30f114c242c  MOVSS dword ptr [ESP + 0x2c],XMM1
101fac10: f30f104d0c  MOVSS XMM1,dword ptr [EBP + 0xc]
101fac15: f30f114c2428  MOVSS dword ptr [ESP + 0x28],XMM1
101fac1b: 0f284c2428  MOVAPS XMM1,xmmword ptr [ESP + 0x28]
101fac20: 0f5cca  SUBPS XMM1,XMM2
101fac23: 0f294c2438  MOVAPS xmmword ptr [ESP + 0x38],XMM1
101fac28: f30f100d84e1aa10  MOVSS XMM1,dword ptr [0x10aae184]
101fac30: f30f11442434  MOVSS dword ptr [ESP + 0x34],XMM0
101fac36: f30f11442430  MOVSS dword ptr [ESP + 0x30],XMM0
101fac3c: f30f114c242c  MOVSS dword ptr [ESP + 0x2c],XMM1
101fac42: f30f11442428  MOVSS dword ptr [ESP + 0x28],XMM0
101fac48: 0f28442428  MOVAPS XMM0,xmmword ptr [ESP + 0x28]
101fac4d: 0f29442448  MOVAPS xmmword ptr [ESP + 0x48],XMM0
101fac52: 8b10  MOV EDX,dword ptr [EAX]
101fac54: 8b5210  MOV EDX,dword ptr [EDX + 0x10]
101fac57: 8bc8  MOV ECX,EAX
101fac59: ffd2  CALL EDX
101fac5b: 84c0  TEST AL,AL
101fac5d: 8bc6  MOV EAX,ESI
101fac5f: 7411  JZ 0x101fac72
101fac61: 0f28442460  MOVAPS XMM0,xmmword ptr [ESP + 0x60]
101fac66: 0f2906  MOVAPS xmmword ptr [ESI],XMM0
101fac69: 5e  POP ESI
101fac6a: 8be5  MOV ESP,EBP
101fac6c: 5d  POP EBP
101fac6d: c20c00  RET 0xc
101fac70: 8bc6  MOV EAX,ESI
101fac72: 5e  POP ESI
101fac73: 8be5  MOV ESP,EBP
101fac75: 5d  POP EBP
101fac76: c20c00  RET 0xc
