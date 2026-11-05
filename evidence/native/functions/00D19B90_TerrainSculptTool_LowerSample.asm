# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool TerrainSculptTool_LowerSample(void * this, BrushRasterSample * sample)
Owned ranges: [[00d19b90, 00d19c38]]

00d19b90  51  PUSH ECX
00d19b91  80b9e400000000  CMP byte ptr [ECX + 0xe4],0x0
00d19b98  8d81e4000000  LEA EAX,[ECX + 0xe4]
00d19b9e  890424  MOV dword ptr [ESP],EAX
00d19ba1  7506  JNZ 0x00d19ba9
00d19ba3  32c0  XOR AL,AL
00d19ba5  59  POP ECX
00d19ba6  c20400  RET 0x4
00d19ba9  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00d19bad  8a5008  MOV DL,byte ptr [EAX + 0x8]
00d19bb0  84d2  TEST DL,DL
00d19bb2  74ef  JZ 0x00d19ba3
00d19bb4  f30f100d3441fa00  MOVSS XMM1,dword ptr [0x00fa4134]
00d19bbc  0fb6d2  MOVZX EDX,DL
00d19bbf  f30f2ac2  CVTSI2SS XMM0,EDX
00d19bc3  f30f594050  MULSS XMM0,dword ptr [EAX + 0x50]
00d19bc8  0f2fc1  COMISS XMM0,XMM1
00d19bcb  7608  JBE 0x00d19bd5
00d19bcd  f30f114c2408  MOVSS dword ptr [ESP + 0x8],XMM1
00d19bd3  eb06  JMP 0x00d19bdb
00d19bd5  f30f11442408  MOVSS dword ptr [ESP + 0x8],XMM0
00d19bdb  8b5038  MOV EDX,dword ptr [EAX + 0x38]
00d19bde  8b9290020000  MOV EDX,dword ptr [EDX + 0x290]
00d19be4  53  PUSH EBX
00d19be5  8b5804  MOV EBX,dword ptr [EAX + 0x4]
00d19be8  55  PUSH EBP
00d19be9  8b6a18  MOV EBP,dword ptr [EDX + 0x18]
00d19bec  2b6a10  SUB EBP,dword ptr [EDX + 0x10]
00d19bef  56  PUSH ESI
00d19bf0  8b7224  MOV ESI,dword ptr [EDX + 0x24]
00d19bf3  0faf6e04  IMUL EBP,dword ptr [ESI + 0x4]
00d19bf7  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00d19bfa  57  PUSH EDI
00d19bfb  8b38  MOV EDI,dword ptr [EAX]
00d19bfd  8b404c  MOV EAX,dword ptr [EAX + 0x4c]
00d19c00  03ef  ADD EBP,EDI
00d19c02  0faf6e08  IMUL EBP,dword ptr [ESI + 0x8]
00d19c06  d94020  FLD float ptr [EAX + 0x20]
00d19c09  d84c2418  FMUL float ptr [ESP + 0x18]
00d19c0d  8b81a0010000  MOV EAX,dword ptr [ECX + 0x1a0]
00d19c13  81c114010000  ADD ECX,0x114
00d19c19  51  PUSH ECX
00d19c1a  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00d19c1e  51  PUSH ECX
00d19c1f  03eb  ADD EBP,EBX
00d19c21  51  PUSH ECX
00d19c22  8bc8  MOV ECX,EAX
00d19c24  d82caa  FSUBR float ptr [EDX + EBP*0x4]
00d19c27  d91c24  FSTP float ptr [ESP]
00d19c2a  53  PUSH EBX
00d19c2b  57  PUSH EDI
00d19c2c  e8ef270100  CALL 0x00d2c420
00d19c31  5f  POP EDI
00d19c32  5e  POP ESI
00d19c33  5d  POP EBP
00d19c34  5b  POP EBX
00d19c35  59  POP ECX
00d19c36  c20400  RET 0x4
