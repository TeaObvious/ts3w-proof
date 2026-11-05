# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool LotPaintTool_RemoveSample(void * this, TerrainPaintSampleInput * sample)
Owned ranges: [[00cee3d0, 00cee451]]

00cee3d0  80b9f000000000  CMP byte ptr [ECX + 0xf0],0x0
00cee3d7  56  PUSH ESI
00cee3d8  8db1f0000000  LEA ESI,[ECX + 0xf0]
00cee3de  7506  JNZ 0x00cee3e6
00cee3e0  32c0  XOR AL,AL
00cee3e2  5e  POP ESI
00cee3e3  c20400  RET 0x4
00cee3e6  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00cee3ea  8a5008  MOV DL,byte ptr [EAX + 0x8]
00cee3ed  84d2  TEST DL,DL
00cee3ef  74ef  JZ 0x00cee3e0
00cee3f1  f30f104054  MOVSS XMM0,dword ptr [EAX + 0x54]
00cee3f6  f30f594050  MULSS XMM0,dword ptr [EAX + 0x50]
00cee3fb  57  PUSH EDI
00cee3fc  8b784c  MOV EDI,dword ptr [EAX + 0x4c]
00cee3ff  f30f594720  MULSS XMM0,dword ptr [EDI + 0x20]
00cee404  0fb6d2  MOVZX EDX,DL
00cee407  f30f2aca  CVTSI2SS XMM1,EDX
00cee40b  f30f59c1  MULSS XMM0,XMM1
00cee40f  0f2f053441fa00  COMISS XMM0,dword ptr [0x00fa4134]
00cee416  5f  POP EDI
00cee417  7207  JC 0x00cee420
00cee419  c6442408ff  MOV byte ptr [ESP + 0x8],0xff
00cee41e  eb10  JMP 0x00cee430
00cee420  0f57c9  XORPS XMM1,XMM1
00cee423  0f2fc8  COMISS XMM1,XMM0
00cee426  77b8  JA 0x00cee3e0
00cee428  f30f2cd0  CVTTSS2SI EDX,XMM0
00cee42c  88542408  MOV byte ptr [ESP + 0x8],DL
00cee430  8b91b0010000  MOV EDX,dword ptr [ECX + 0x1b0]
00cee436  8b4934  MOV ECX,dword ptr [ECX + 0x34]
00cee439  56  PUSH ESI
00cee43a  8b74240c  MOV ESI,dword ptr [ESP + 0xc]
00cee43e  56  PUSH ESI
00cee43f  8b7004  MOV ESI,dword ptr [EAX + 0x4]
00cee442  8b00  MOV EAX,dword ptr [EAX]
00cee444  56  PUSH ESI
00cee445  50  PUSH EAX
00cee446  51  PUSH ECX
00cee447  8bca  MOV ECX,EDX
00cee449  e802610300  CALL 0x00d24550
00cee44e  5e  POP ESI
00cee44f  c20400  RET 0x4
