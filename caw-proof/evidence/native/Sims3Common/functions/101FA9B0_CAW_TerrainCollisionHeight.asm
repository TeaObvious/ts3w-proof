# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 101fa9b0..101fab0e; CAW_TerrainCollisionHeight
101fa9b0: 55  PUSH EBP
101fa9b1: 8bec  MOV EBP,ESP
101fa9b3: 83e4f0  AND ESP,0xfffffff0
101fa9b6: 83ec7c  SUB ESP,0x7c
101fa9b9: f30f1005946fac10  MOVSS XMM0,dword ptr [0x10ac6f94]
101fa9c1: 56  PUSH ESI
101fa9c2: 8bf1  MOV ESI,ECX
101fa9c4: f30f11442408  MOVSS dword ptr [ESP + 0x8],XMM0
101fa9ca: d94508  FLD float ptr [EBP + 0x8]
101fa9cd: db542410  FIST dword ptr [ESP + 0x10]
101fa9d1: db442410  FILD dword ptr [ESP + 0x10]
101fa9d5: dee9  FSUBP
101fa9d7: d95c240c  FSTP float ptr [ESP + 0xc]
101fa9db: 817c240c01000080  CMP dword ptr [ESP + 0xc],0x80000001
101fa9e3: 8b442410  MOV EAX,dword ptr [ESP + 0x10]
101fa9e7: 83d0ff  ADC EAX,-0x1
101fa9ea: 8bc8  MOV ECX,EAX
101fa9ec: d9450c  FLD float ptr [EBP + 0xc]
101fa9ef: db542418  FIST dword ptr [ESP + 0x18]
101fa9f3: db442418  FILD dword ptr [ESP + 0x18]
101fa9f7: dee9  FSUBP
101fa9f9: d95c2414  FSTP float ptr [ESP + 0x14]
101fa9fd: 817c241401000080  CMP dword ptr [ESP + 0x14],0x80000001
101faa05: 8b442418  MOV EAX,dword ptr [ESP + 0x18]
101faa09: 83d0ff  ADC EAX,-0x1
101faa0c: c1f808  SAR EAX,0x8
101faa0f: 8bd0  MOV EDX,EAX
101faa11: 8b86cc000000  MOV EAX,dword ptr [ESI + 0xcc]
101faa17: c1f908  SAR ECX,0x8
101faa1a: 3bc8  CMP ECX,EAX
101faa1c: 0f83e2000000  JNC 0x101fab04
101faa22: 3b96d0000000  CMP EDX,dword ptr [ESI + 0xd0]
101faa28: 0f83d6000000  JNC 0x101fab04
101faa2e: 0fafc2  IMUL EAX,EDX
101faa31: 03c1  ADD EAX,ECX
101faa33: 8b8ebc000000  MOV ECX,dword ptr [ESI + 0xbc]
101faa39: 8b0481  MOV EAX,dword ptr [ECX + EAX*0x4]
101faa3c: 85c0  TEST EAX,EAX
101faa3e: 0f84c0000000  JZ 0x101fab04
101faa44: f30f104508  MOVSS XMM0,dword ptr [EBP + 0x8]
101faa49: db4634  FILD dword ptr [ESI + 0x34]
101faa4c: 8b5634  MOV EDX,dword ptr [ESI + 0x34]
101faa4f: 85d2  TEST EDX,EDX
101faa51: f30f1144242c  MOVSS dword ptr [ESP + 0x2c],XMM0
101faa57: f30f10450c  MOVSS XMM0,dword ptr [EBP + 0xc]
101faa5c: f30f11442428  MOVSS dword ptr [ESP + 0x28],XMM0
101faa62: 7d06  JGE 0x101faa6a
101faa64: d80590e1aa10  FADD float ptr [0x10aae190]
101faa6a: d8051c63b510  FADD float ptr [0x10b5631c]
101faa70: 8d4c2450  LEA ECX,[ESP + 0x50]
101faa74: 51  PUSH ECX
101faa75: 8d4c2434  LEA ECX,[ESP + 0x34]
101faa79: d95c2420  FSTP float ptr [ESP + 0x20]
101faa7d: 51  PUSH ECX
101faa7e: f30f10442424  MOVSS XMM0,dword ptr [ESP + 0x24]
101faa84: 0f284820  MOVAPS XMM1,xmmword ptr [EAX + 0x20]
101faa88: 8b4038  MOV EAX,dword ptr [EAX + 0x38]
101faa8b: f30f1144242c  MOVSS dword ptr [ESP + 0x2c],XMM0
101faa91: f30f104508  MOVSS XMM0,dword ptr [EBP + 0x8]
101faa96: f30f11442428  MOVSS dword ptr [ESP + 0x28],XMM0
101faa9c: 0f28442428  MOVAPS XMM0,xmmword ptr [ESP + 0x28]
101faaa1: 0f5cc1  SUBPS XMM0,XMM1
101faaa4: f30f100d84e1aa10  MOVSS XMM1,dword ptr [0x10aae184]
101faaac: 0f29442438  MOVAPS xmmword ptr [ESP + 0x38],XMM0
101faab1: 0f57c0  XORPS XMM0,XMM0
101faab4: f30f11442434  MOVSS dword ptr [ESP + 0x34],XMM0
101faaba: f30f11442430  MOVSS dword ptr [ESP + 0x30],XMM0
101faac0: f30f114c242c  MOVSS dword ptr [ESP + 0x2c],XMM1
101faac6: f30f11442428  MOVSS dword ptr [ESP + 0x28],XMM0
101faacc: 0f28442428  MOVAPS XMM0,xmmword ptr [ESP + 0x28]
101faad1: 0f29442448  MOVAPS xmmword ptr [ESP + 0x48],XMM0
101faad6: 8b10  MOV EDX,dword ptr [EAX]
101faad8: 8b5210  MOV EDX,dword ptr [EDX + 0x10]
101faadb: 8bc8  MOV ECX,EAX
101faadd: ffd2  CALL EDX
101faadf: 84c0  TEST AL,AL
101faae1: 7421  JZ 0x101fab04
101faae3: 8b4634  MOV EAX,dword ptr [ESI + 0x34]
101faae6: db4634  FILD dword ptr [ESI + 0x34]
101faae9: 85c0  TEST EAX,EAX
101faaeb: 7d06  JGE 0x101faaf3
101faaed: d80590e1aa10  FADD float ptr [0x10aae190]
101faaf3: d8051c63b510  FADD float ptr [0x10b5631c]
101faaf9: d8642470  FSUB float ptr [ESP + 0x70]
101faafd: 5e  POP ESI
101faafe: 8be5  MOV ESP,EBP
101fab00: 5d  POP EBP
101fab01: c20800  RET 0x8
101fab04: d9442408  FLD float ptr [ESP + 0x8]
101fab08: 5e  POP ESI
101fab09: 8be5  MOV ESP,EBP
101fab0b: 5d  POP EBP
101fab0c: c20800  RET 0x8
