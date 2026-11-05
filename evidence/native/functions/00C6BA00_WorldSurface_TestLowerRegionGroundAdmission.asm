# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Actual complete Ghidra Listing function WorldSurface_TestLowerRegionGroundAdmission 00c6ba00..00c6baff; original envelope includes explicitly marked nonowned gaps; PE envelope SHA256=ac282b27c43c01e8bef5a23d3aa6459c396bb1a3c94f45ba5d47e6ceea59f4fa
; PC 1.67 original: ECX world, two float stack words, RET 8; AL boolean. Checks lower-inclusive X/Z and upper-exclusive X/world+C0 bounds, distinct from C6B8F0 upper Z bound C0+C4. Optional terrain material test threshold 1.0 can require containing-lot membership. Used by 00658830 after primary ground refusal only when mask 0x04 is absent. Coordinate conversion uses inherited-rounding x87 FIST and float residual sign bits. The descriptive lower-region name identifies these bounds; it does not assign an unverified terrain class.
00c6ba00: f30f104c2404  MOVSS XMM1,dword ptr [ESP + 0x4]
00c6ba06: 83ec14  SUB ESP,0x14
00c6ba09: 56  PUSH ESI
00c6ba0a: 8bf1  MOV ESI,ECX
00c6ba0c: 0f2f8eb4000000  COMISS XMM1,dword ptr [ESI + 0xb4]
00c6ba13: 7229  JC 0x00c6ba3e
00c6ba15: f30f10442420  MOVSS XMM0,dword ptr [ESP + 0x20]
00c6ba1b: 0f2f86b8000000  COMISS XMM0,dword ptr [ESI + 0xb8]
00c6ba22: 721a  JC 0x00c6ba3e
00c6ba24: f30f1096bc000000  MOVSS XMM2,dword ptr [ESI + 0xbc]
00c6ba2c: 0f2fd1  COMISS XMM2,XMM1
00c6ba2f: 760d  JBE 0x00c6ba3e
00c6ba31: f30f108ec0000000  MOVSS XMM1,dword ptr [ESI + 0xc0]
00c6ba39: 0f2fc8  COMISS XMM1,XMM0
00c6ba3c: 7709  JA 0x00c6ba47
00c6ba3e: 32c0  XOR AL,AL
00c6ba40: 5e  POP ESI
00c6ba41: 83c414  ADD ESP,0x14
00c6ba44: c20800  RET 0x8
00c6ba47: 8b4e54  MOV ECX,dword ptr [ESI + 0x54]
00c6ba4a: 85c9  TEST ECX,ECX
00c6ba4c: 0f84a5000000  JZ 0x00c6baf7
00c6ba52: e81972c5ff  CALL 0x008c2c70
00c6ba57: 8bc8  MOV ECX,EAX
00c6ba59: 85c9  TEST ECX,ECX
00c6ba5b: 0f8496000000  JZ 0x00c6baf7
00c6ba61: 0f57c0  XORPS XMM0,XMM0
00c6ba64: 57  PUSH EDI
00c6ba65: f30f11442408  MOVSS dword ptr [ESP + 0x8],XMM0
00c6ba6b: d9442424  FLD float ptr [ESP + 0x24]
00c6ba6f: db54240c  FIST dword ptr [ESP + 0xc]
00c6ba73: db44240c  FILD dword ptr [ESP + 0xc]
00c6ba77: dee9  FSUBP
00c6ba79: d95c2410  FSTP float ptr [ESP + 0x10]
00c6ba7d: 817c241001000080  CMP dword ptr [ESP + 0x10],0x80000001
00c6ba85: 8b44240c  MOV EAX,dword ptr [ESP + 0xc]
00c6ba89: 83d0ff  ADC EAX,-0x1
00c6ba8c: 8bd0  MOV EDX,EAX
00c6ba8e: d9442420  FLD float ptr [ESP + 0x20]
00c6ba92: db542418  FIST dword ptr [ESP + 0x18]
00c6ba96: db442418  FILD dword ptr [ESP + 0x18]
00c6ba9a: dee9  FSUBP
00c6ba9c: d95c2414  FSTP float ptr [ESP + 0x14]
00c6baa0: 817c241401000080  CMP dword ptr [ESP + 0x14],0x80000001
00c6baa8: 8b442418  MOV EAX,dword ptr [ESP + 0x18]
00c6baac: 83d0ff  ADC EAX,-0x1
00c6baaf: 8d7c2408  LEA EDI,[ESP + 0x8]
00c6bab3: 57  PUSH EDI
00c6bab4: 6a00  PUSH 0x0
00c6bab6: 52  PUSH EDX
00c6bab7: 50  PUSH EAX
00c6bab8: e8034ffbff  CALL 0x00c209c0
00c6babd: 84c0  TEST AL,AL
00c6babf: 5f  POP EDI
00c6bac0: 7435  JZ 0x00c6baf7
00c6bac2: f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
00c6baca: 0f2f442404  COMISS XMM0,dword ptr [ESP + 0x4]
00c6bacf: 7726  JA 0x00c6baf7
00c6bad1: d9442420  FLD float ptr [ESP + 0x20]
00c6bad5: 83ec08  SUB ESP,0x8
00c6bad8: d95c2404  FSTP float ptr [ESP + 0x4]
00c6badc: 8bce  MOV ECX,ESI
00c6bade: d9442424  FLD float ptr [ESP + 0x24]
00c6bae2: d91c24  FSTP float ptr [ESP]
00c6bae5: e8e6ccffff  CALL 0x00c687d0
00c6baea: f7d8  NEG EAX
00c6baec: 1bc0  SBB EAX,EAX
00c6baee: f7d8  NEG EAX
00c6baf0: 5e  POP ESI
00c6baf1: 83c414  ADD ESP,0x14
00c6baf4: c20800  RET 0x8
00c6baf7: b001  MOV AL,0x1
00c6baf9: 5e  POP ESI
00c6bafa: 83c414  ADD ESP,0x14
00c6bafd: c20800  RET 0x8
