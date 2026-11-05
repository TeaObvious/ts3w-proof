# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool TerrainSculptTool_RaiseSample(void * this, BrushRasterSample * sample)
Owned ranges: [[00d19ae0, 00d19b88]]

00d19ae0  51  PUSH ECX
00d19ae1  80b9e400000000  CMP byte ptr [ECX + 0xe4],0x0
00d19ae8  8d81e4000000  LEA EAX,[ECX + 0xe4]
00d19aee  890424  MOV dword ptr [ESP],EAX
00d19af1  7506  JNZ 0x00d19af9
00d19af3  32c0  XOR AL,AL
00d19af5  59  POP ECX
00d19af6  c20400  RET 0x4
00d19af9  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00d19afd  8a5008  MOV DL,byte ptr [EAX + 0x8]
00d19b00  84d2  TEST DL,DL
00d19b02  74ef  JZ 0x00d19af3
00d19b04  f30f100d3441fa00  MOVSS XMM1,dword ptr [0x00fa4134]
00d19b0c  0fb6d2  MOVZX EDX,DL
00d19b0f  f30f2ac2  CVTSI2SS XMM0,EDX
00d19b13  f30f594050  MULSS XMM0,dword ptr [EAX + 0x50]
00d19b18  0f2fc1  COMISS XMM0,XMM1
00d19b1b  7608  JBE 0x00d19b25
00d19b1d  f30f114c2408  MOVSS dword ptr [ESP + 0x8],XMM1
00d19b23  eb06  JMP 0x00d19b2b
00d19b25  f30f11442408  MOVSS dword ptr [ESP + 0x8],XMM0
00d19b2b  8b5038  MOV EDX,dword ptr [EAX + 0x38]
00d19b2e  8b9290020000  MOV EDX,dword ptr [EDX + 0x290]
00d19b34  53  PUSH EBX
00d19b35  8b5804  MOV EBX,dword ptr [EAX + 0x4]
00d19b38  55  PUSH EBP
00d19b39  8b6a18  MOV EBP,dword ptr [EDX + 0x18]
00d19b3c  2b6a10  SUB EBP,dword ptr [EDX + 0x10]
00d19b3f  56  PUSH ESI
00d19b40  8b7224  MOV ESI,dword ptr [EDX + 0x24]
00d19b43  0faf6e04  IMUL EBP,dword ptr [ESI + 0x4]
00d19b47  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00d19b4a  57  PUSH EDI
00d19b4b  8b38  MOV EDI,dword ptr [EAX]
00d19b4d  8b404c  MOV EAX,dword ptr [EAX + 0x4c]
00d19b50  03ef  ADD EBP,EDI
00d19b52  0faf6e08  IMUL EBP,dword ptr [ESI + 0x8]
00d19b56  d94020  FLD float ptr [EAX + 0x20]
00d19b59  d84c2418  FMUL float ptr [ESP + 0x18]
00d19b5d  8b81a0010000  MOV EAX,dword ptr [ECX + 0x1a0]
00d19b63  81c114010000  ADD ECX,0x114
00d19b69  51  PUSH ECX
00d19b6a  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00d19b6e  51  PUSH ECX
00d19b6f  03eb  ADD EBP,EBX
00d19b71  51  PUSH ECX
00d19b72  8bc8  MOV ECX,EAX
00d19b74  d804aa  FADD float ptr [EDX + EBP*0x4]
00d19b77  d91c24  FSTP float ptr [ESP]
00d19b7a  53  PUSH EBX
00d19b7b  57  PUSH EDI
00d19b7c  e89f280100  CALL 0x00d2c420
00d19b81  5f  POP EDI
00d19b82  5e  POP ESI
00d19b83  5d  POP EBP
00d19b84  5b  POP EBX
00d19b85  59  POP ECX
00d19b86  c20400  RET 0x4
