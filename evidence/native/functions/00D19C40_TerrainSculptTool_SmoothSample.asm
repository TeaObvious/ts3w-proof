# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool TerrainSculptTool_SmoothSample(void * this, BrushRasterSample * sample)
Owned ranges: [[00d19c40, 00d19cac] [00d19cb0, 00d19d6f]]

00d19c40  83ec10  SUB ESP,0x10
00d19c43  80b9e400000000  CMP byte ptr [ECX + 0xe4],0x0
00d19c4a  8d81e4000000  LEA EAX,[ECX + 0xe4]
00d19c50  894c2408  MOV dword ptr [ESP + 0x8],ECX
00d19c54  8944240c  MOV dword ptr [ESP + 0xc],EAX
00d19c58  7508  JNZ 0x00d19c62
00d19c5a  32c0  XOR AL,AL
00d19c5c  83c410  ADD ESP,0x10
00d19c5f  c20400  RET 0x4
00d19c62  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00d19c66  8b4138  MOV EAX,dword ptr [ECX + 0x38]
00d19c69  8b11  MOV EDX,dword ptr [ECX]
00d19c6b  0f57c0  XORPS XMM0,XMM0
00d19c6e  53  PUSH EBX
00d19c6f  8b9890020000  MOV EBX,dword ptr [EAX + 0x290]
00d19c75  8b4324  MOV EAX,dword ptr [EBX + 0x24]
00d19c78  55  PUSH EBP
00d19c79  56  PUSH ESI
00d19c7a  8b7318  MOV ESI,dword ptr [EBX + 0x18]
00d19c7d  2b7310  SUB ESI,dword ptr [EBX + 0x10]
00d19c80  57  PUSH EDI
00d19c81  0faf7004  IMUL ESI,dword ptr [EAX + 0x4]
00d19c85  8b7808  MOV EDI,dword ptr [EAX + 0x8]
00d19c88  8d7416ff  LEA ESI,[ESI + EDX*0x1 + -0x1]
00d19c8c  89542410  MOV dword ptr [ESP + 0x10],EDX
00d19c90  8b5010  MOV EDX,dword ptr [EAX + 0x10]
00d19c93  8b4104  MOV EAX,dword ptr [ECX + 0x4]
00d19c96  8d6e02  LEA EBP,[ESI + 0x2]
00d19c99  0fafef  IMUL EBP,EDI
00d19c9c  89442414  MOV dword ptr [ESP + 0x14],EAX
00d19ca0  83c0ff  ADD EAX,-0x1
00d19ca3  c744242403000000  MOV dword ptr [ESP + 0x24],0x3
00d19cab  eb03  JMP 0x00d19cb0
00d19cad  8d4900  .byte 8d4900 ; NONOWNED envelope gap bytes
00d19cb0  8bce  MOV ECX,ESI
00d19cb2  0fafcf  IMUL ECX,EDI
00d19cb5  03c8  ADD ECX,EAX
00d19cb7  f30f100c8a  MOVSS XMM1,dword ptr [EDX + ECX*0x4]
00d19cbc  8d4e01  LEA ECX,[ESI + 0x1]
00d19cbf  0fafcf  IMUL ECX,EDI
00d19cc2  f30f58c8  ADDSS XMM1,XMM0
00d19cc6  03c8  ADD ECX,EAX
00d19cc8  f30f10048a  MOVSS XMM0,dword ptr [EDX + ECX*0x4]
00d19ccd  f30f58c1  ADDSS XMM0,XMM1
00d19cd1  8d0c28  LEA ECX,[EAX + EBP*0x1]
00d19cd4  f30f100c8a  MOVSS XMM1,dword ptr [EDX + ECX*0x4]
00d19cd9  83c001  ADD EAX,0x1
00d19cdc  836c242401  SUB dword ptr [ESP + 0x24],0x1
00d19ce1  f30f58c8  ADDSS XMM1,XMM0
00d19ce5  0f28c1  MOVAPS XMM0,XMM1
00d19ce8  75c6  JNZ 0x00d19cb0
00d19cea  8b4b18  MOV ECX,dword ptr [EBX + 0x18]
00d19ced  2b4b10  SUB ECX,dword ptr [EBX + 0x10]
00d19cf0  8b4324  MOV EAX,dword ptr [EBX + 0x24]
00d19cf3  0faf4804  IMUL ECX,dword ptr [EAX + 0x4]
00d19cf7  8b542410  MOV EDX,dword ptr [ESP + 0x10]
00d19cfb  8b742414  MOV ESI,dword ptr [ESP + 0x14]
00d19cff  f30f59057c450701  MULSS XMM0,dword ptr [0x0107457c]
00d19d07  03ca  ADD ECX,EDX
00d19d09  0faf4808  IMUL ECX,dword ptr [EAX + 0x8]
00d19d0d  8b4010  MOV EAX,dword ptr [EAX + 0x10]
00d19d10  03ce  ADD ECX,ESI
00d19d12  f30f100c88  MOVSS XMM1,dword ptr [EAX + ECX*0x4]
00d19d17  f30f5cc1  SUBSS XMM0,XMM1
00d19d1b  f30f5905185c0801  MULSS XMM0,dword ptr [0x01085c18]
00d19d23  f30f58c1  ADDSS XMM0,XMM1
00d19d27  0f2ec1  UCOMISS XMM0,XMM1
00d19d2a  9f  LAHF
00d19d2b  f6c444  TEST AH,0x44
00d19d2e  f30f11442424  MOVSS dword ptr [ESP + 0x24],XMM0
00d19d34  7b2e  JNP 0x00d19d64
00d19d36  8b442418  MOV EAX,dword ptr [ESP + 0x18]
00d19d3a  d9442424  FLD float ptr [ESP + 0x24]
00d19d3e  8b88a0010000  MOV ECX,dword ptr [EAX + 0x1a0]
00d19d44  0514010000  ADD EAX,0x114
00d19d49  50  PUSH EAX
00d19d4a  8b442420  MOV EAX,dword ptr [ESP + 0x20]
00d19d4e  50  PUSH EAX
00d19d4f  51  PUSH ECX
00d19d50  d91c24  FSTP float ptr [ESP]
00d19d53  56  PUSH ESI
00d19d54  52  PUSH EDX
00d19d55  e8c6260100  CALL 0x00d2c420
00d19d5a  5f  POP EDI
00d19d5b  5e  POP ESI
00d19d5c  5d  POP EBP
00d19d5d  5b  POP EBX
00d19d5e  83c410  ADD ESP,0x10
00d19d61  c20400  RET 0x4
00d19d64  5f  POP EDI
00d19d65  5e  POP ESI
00d19d66  5d  POP EBP
00d19d67  b001  MOV AL,0x1
00d19d69  5b  POP EBX
00d19d6a  83c410  ADD ESP,0x10
00d19d6d  c20400  RET 0x4
