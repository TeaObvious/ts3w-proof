# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Analyst name: SkinResource_ReadJointNamesAndBindPose
Paired actual annotated Ghidra pseudocode: 006D7DA0_SkinResource_ReadJointNamesAndBindPose.c
Owned ranges: [[006d7da0, 006d7f5f]]
Envelope bytes=448

GHIDRA LISTING (original bytes; nonowned gaps explicit)
006d7da0  55  PUSH EBP
006d7da1  8bec  MOV EBP,ESP
006d7da3  83e4f0  AND ESP,0xfffffff0
006d7da6  83ec54  SUB ESP,0x54
006d7da9  53  PUSH EBX
006d7daa  8bd9  MOV EBX,ECX
006d7dac  8b4d08  MOV ECX,dword ptr [EBP + 0x8]
006d7daf  8b4104  MOV EAX,dword ptr [ECX + 0x4]
006d7db2  85c0  TEST EAX,EAX
006d7db4  56  PUSH ESI
006d7db5  57  PUSH EDI
006d7db6  7405  JZ 0x006d7dbd
006d7db8  8b7808  MOV EDI,dword ptr [EAX + 0x8]
006d7dbb  eb02  JMP 0x006d7dbf
006d7dbd  33ff  XOR EDI,EDI
006d7dbf  8b01  MOV EAX,dword ptr [ECX]
006d7dc1  8b501c  MOV EDX,dword ptr [EAX + 0x1c]
006d7dc4  ffd2  CALL EDX
006d7dc6  8bf0  MOV ESI,EAX
006d7dc8  83fe0c  CMP ESI,0xc
006d7dcb  730b  JNC 0x006d7dd8
006d7dcd  32c0  XOR AL,AL
006d7dcf  5f  POP EDI
006d7dd0  5e  POP ESI
006d7dd1  5b  POP EBX
006d7dd2  8be5  MOV ESP,EBP
006d7dd4  5d  POP EBP
006d7dd5  c20c00  RET 0xc
006d7dd8  807d1000  CMP byte ptr [EBP + 0x10],0x0
006d7ddc  740d  JZ 0x006d7deb
006d7dde  c1e802  SHR EAX,0x2
006d7de1  50  PUSH EAX
006d7de2  57  PUSH EDI
006d7de3  e888b20f00  CALL 0x007d3070
006d7de8  83c408  ADD ESP,0x8
006d7deb  8b4708  MOV EAX,dword ptr [EDI + 0x8]
006d7dee  8bc8  MOV ECX,EAX
006d7df0  6bc934  IMUL ECX,ECX,0x34
006d7df3  83c10c  ADD ECX,0xc
006d7df6  3bf1  CMP ESI,ECX
006d7df8  72d3  JC 0x006d7dcd
006d7dfa  50  PUSH EAX
006d7dfb  8bcb  MOV ECX,EBX
006d7dfd  e80e520300  CALL 0x0070d010
006d7e02  84c0  TEST AL,AL
006d7e04  74c7  JZ 0x006d7dcd
006d7e06  8b4708  MOV EAX,dword ptr [EDI + 0x8]
006d7e09  03c0  ADD EAX,EAX
006d7e0b  03c0  ADD EAX,EAX
006d7e0d  8d4f0c  LEA ECX,[EDI + 0xc]
006d7e10  50  PUSH EAX
006d7e11  8d3408  LEA ESI,[EAX + ECX*0x1]
006d7e14  51  PUSH ECX
006d7e15  8bcb  MOV ECX,EBX
006d7e17  e8e46e5500  CALL 0x00c2ed00
006d7e1c  50  PUSH EAX
006d7e1d  e864748a00  CALL 0x00f7f286
006d7e22  83c40c  ADD ESP,0xc
006d7e25  8bcb  MOV ECX,EBX
006d7e27  e80473fbff  CALL 0x0068f130
006d7e2c  33c9  XOR ECX,ECX
006d7e2e  394f08  CMP dword ptr [EDI + 0x8],ECX
006d7e31  0f8605010000  JBE 0x006d7f3c
006d7e37  0f57c0  XORPS XMM0,XMM0
006d7e3a  8d9b00000000  LEA EBX,[EBX]
006d7e40  f30f107e0c  MOVSS XMM7,dword ptr [ESI + 0xc]
006d7e45  f30f104e04  MOVSS XMM1,dword ptr [ESI + 0x4]
006d7e4a  f30f105614  MOVSS XMM2,dword ptr [ESI + 0x14]
006d7e4f  f30f105e24  MOVSS XMM3,dword ptr [ESI + 0x24]
006d7e54  f30f106608  MOVSS XMM4,dword ptr [ESI + 0x8]
006d7e59  f30f106e18  MOVSS XMM5,dword ptr [ESI + 0x18]
006d7e5e  f30f107628  MOVSS XMM6,dword ptr [ESI + 0x28]
006d7e63  f30f117c241c  MOVSS dword ptr [ESP + 0x1c],XMM7
006d7e69  f30f107e1c  MOVSS XMM7,dword ptr [ESI + 0x1c]
006d7e6e  f30f117c2418  MOVSS dword ptr [ESP + 0x18],XMM7
006d7e74  f30f107e2c  MOVSS XMM7,dword ptr [ESI + 0x2c]
006d7e79  f30f117c2414  MOVSS dword ptr [ESP + 0x14],XMM7
006d7e7f  f30f107e20  MOVSS XMM7,dword ptr [ESI + 0x20]
006d7e84  f30f114c2430  MOVSS dword ptr [ESP + 0x30],XMM1
006d7e8a  f30f117c2428  MOVSS dword ptr [ESP + 0x28],XMM7
006d7e90  f30f107e10  MOVSS XMM7,dword ptr [ESI + 0x10]
006d7e95  f30f117c2424  MOVSS dword ptr [ESP + 0x24],XMM7
006d7e9b  f30f103e  MOVSS XMM7,dword ptr [ESI]
006d7e9f  f30f1144243c  MOVSS dword ptr [ESP + 0x3c],XMM0
006d7ea5  f30f115c2438  MOVSS dword ptr [ESP + 0x38],XMM3
006d7eab  f30f11542434  MOVSS dword ptr [ESP + 0x34],XMM2
006d7eb1  0f284c2430  MOVAPS XMM1,xmmword ptr [ESP + 0x30]
006d7eb6  0f294810  MOVAPS xmmword ptr [EAX + 0x10],XMM1
006d7eba  f30f1144244c  MOVSS dword ptr [ESP + 0x4c],XMM0
006d7ec0  f30f11742448  MOVSS dword ptr [ESP + 0x48],XMM6
006d7ec6  f30f116c2444  MOVSS dword ptr [ESP + 0x44],XMM5
006d7ecc  f30f11642440  MOVSS dword ptr [ESP + 0x40],XMM4
006d7ed2  0f284c2440  MOVAPS XMM1,xmmword ptr [ESP + 0x40]
006d7ed7  0f294820  MOVAPS xmmword ptr [EAX + 0x20],XMM1
006d7edb  f30f100df898f900  MOVSS XMM1,dword ptr [0x00f998f8]
006d7ee3  f30f114c245c  MOVSS dword ptr [ESP + 0x5c],XMM1
006d7ee9  f30f104c2414  MOVSS XMM1,dword ptr [ESP + 0x14]
006d7eef  f30f114c2458  MOVSS dword ptr [ESP + 0x58],XMM1
006d7ef5  f30f104c2418  MOVSS XMM1,dword ptr [ESP + 0x18]
006d7efb  f30f114c2454  MOVSS dword ptr [ESP + 0x54],XMM1
006d7f01  f30f104c241c  MOVSS XMM1,dword ptr [ESP + 0x1c]
006d7f07  f30f1144242c  MOVSS dword ptr [ESP + 0x2c],XMM0
006d7f0d  f30f117c2420  MOVSS dword ptr [ESP + 0x20],XMM7
006d7f13  0f287c2420  MOVAPS XMM7,xmmword ptr [ESP + 0x20]
006d7f18  f30f114c2450  MOVSS dword ptr [ESP + 0x50],XMM1
006d7f1e  0f284c2450  MOVAPS XMM1,xmmword ptr [ESP + 0x50]
006d7f23  0f2938  MOVAPS xmmword ptr [EAX],XMM7
006d7f26  0f294830  MOVAPS xmmword ptr [EAX + 0x30],XMM1
006d7f2a  83c101  ADD ECX,0x1
006d7f2d  83c630  ADD ESI,0x30
006d7f30  83c040  ADD EAX,0x40
006d7f33  3b4f08  CMP ECX,dword ptr [EDI + 0x8]
006d7f36  0f8204ffffff  JC 0x006d7e40
006d7f3c  8b4328  MOV EAX,dword ptr [EBX + 0x28]
006d7f3f  8bd0  MOV EDX,EAX
006d7f41  c1e204  SHL EDX,0x4
006d7f44  03d0  ADD EDX,EAX
006d7f46  8d049538000000  LEA EAX,[EDX*0x4 + 0x38]
006d7f4d  50  PUSH EAX
006d7f4e  8bcb  MOV ECX,EBX
006d7f50  e88b9c0500  CALL 0x00731be0
006d7f55  5f  POP EDI
006d7f56  5e  POP ESI
006d7f57  b001  MOV AL,0x1
006d7f59  5b  POP EBX
006d7f5a  8be5  MOV ESP,EBP
006d7f5c  5d  POP EBP
006d7f5d  c20c00  RET 0xc
Owned instructions=128 owned bytes=448 nonowned bytes=0
