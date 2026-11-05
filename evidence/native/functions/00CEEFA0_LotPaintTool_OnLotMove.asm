# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool LotPaintTool_OnLotMove(void * this, pointer lot, LotPaintPoint * point)
Owned ranges: [[00ceefa0, 00cef0e1]]

00ceefa0  83ec1c  SUB ESP,0x1c
00ceefa3  f30f100518b2fa00  MOVSS XMM0,dword ptr [0x00fab218]
00ceefab  8b442424  MOV EAX,dword ptr [ESP + 0x24]
00ceefaf  f30f1010  MOVSS XMM2,dword ptr [EAX]
00ceefb3  f30f100db4b5f900  MOVSS XMM1,dword ptr [0x00f9b5b4]
00ceefbb  f30f11442404  MOVSS dword ptr [ESP + 0x4],XMM0
00ceefc1  f30f11442408  MOVSS dword ptr [ESP + 0x8],XMM0
00ceefc7  f30f100554310801  MOVSS XMM0,dword ptr [0x01083154]
00ceefcf  f30f59d0  MULSS XMM2,XMM0
00ceefd3  56  PUSH ESI
00ceefd4  f30f58d1  ADDSS XMM2,XMM1
00ceefd8  8bf1  MOV ESI,ECX
00ceefda  c744241000000000  MOV dword ptr [ESP + 0x10],0x0
00ceefe2  f30f11542404  MOVSS dword ptr [ESP + 0x4],XMM2
00ceefe8  d9442404  FLD float ptr [ESP + 0x4]
00ceefec  db5c2428  FISTP dword ptr [ESP + 0x28]
00ceeff0  f30f2a542428  CVTSI2SS XMM2,dword ptr [ESP + 0x28]
00ceeff6  f30f5cd1  SUBSS XMM2,XMM1
00ceeffa  f30f591544310801  MULSS XMM2,dword ptr [0x01083144]
00cef002  f30f11542408  MOVSS dword ptr [ESP + 0x8],XMM2
00cef008  f30f105004  MOVSS XMM2,dword ptr [EAX + 0x4]
00cef00d  f30f59d0  MULSS XMM2,XMM0
00cef011  f30f58d1  ADDSS XMM2,XMM1
00cef015  f30f11542404  MOVSS dword ptr [ESP + 0x4],XMM2
00cef01b  d9442404  FLD float ptr [ESP + 0x4]
00cef01f  db5c2428  FISTP dword ptr [ESP + 0x28]
00cef023  807e6400  CMP byte ptr [ESI + 0x64],0x0
00cef027  f30f2a442428  CVTSI2SS XMM0,dword ptr [ESP + 0x28]
00cef02d  8b4008  MOV EAX,dword ptr [EAX + 0x8]
00cef030  f30f5cc1  SUBSS XMM0,XMM1
00cef034  f30f590544310801  MULSS XMM0,dword ptr [0x01083144]
00cef03c  f30f1144240c  MOVSS dword ptr [ESP + 0xc],XMM0
00cef042  89442410  MOV dword ptr [ESP + 0x10],EAX
00cef046  7478  JZ 0x00cef0c0
00cef048  f30f100df892fe00  MOVSS XMM1,dword ptr [0x00fe92f8]
00cef050  f30f10542408  MOVSS XMM2,dword ptr [ESP + 0x8]
00cef056  f30f5cd1  SUBSS XMM2,XMM1
00cef05a  f30f11542414  MOVSS dword ptr [ESP + 0x14],XMM2
00cef060  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00cef064  f30f5cc1  SUBSS XMM0,XMM1
00cef068  f30f11442418  MOVSS dword ptr [ESP + 0x18],XMM0
00cef06e  8b542418  MOV EDX,dword ptr [ESP + 0x18]
00cef072  898ef0000000  MOV dword ptr [ESI + 0xf0],ECX
00cef078  8996f4000000  MOV dword ptr [ESI + 0xf4],EDX
00cef07e  8944241c  MOV dword ptr [ESP + 0x1c],EAX
00cef082  8986f8000000  MOV dword ptr [ESI + 0xf8],EAX
00cef088  8d442414  LEA EAX,[ESP + 0x14]
00cef08c  50  PUSH EAX
00cef08d  8d4ed8  LEA ECX,[ESI + -0x28]
00cef090  e88bf8ffff  CALL 0x00cee920
00cef095  8b8e88010000  MOV ECX,dword ptr [ESI + 0x188]
00cef09b  85c9  TEST ECX,ECX
00cef09d  7421  JZ 0x00cef0c0
00cef09f  8b11  MOV EDX,dword ptr [ECX]
00cef0a1  8b4234  MOV EAX,dword ptr [EDX + 0x34]
00cef0a4  ffd0  CALL EAX
00cef0a6  d9ee  FLDZ
00cef0a8  6a00  PUSH 0x0
00cef0aa  6a01  PUSH 0x1
00cef0ac  51  PUSH ECX
00cef0ad  d91c24  FSTP float ptr [ESP]
00cef0b0  8d4c2414  LEA ECX,[ESP + 0x14]
00cef0b4  51  PUSH ECX
00cef0b5  51  PUSH ECX
00cef0b6  8bce  MOV ECX,ESI
00cef0b8  d91c24  FSTP float ptr [ESP]
00cef0bb  e8b045feff  CALL 0x00cd3670
00cef0c0  d9ee  FLDZ
00cef0c2  8b16  MOV EDX,dword ptr [ESI]
00cef0c4  8b5274  MOV EDX,dword ptr [EDX + 0x74]
00cef0c7  51  PUSH ECX
00cef0c8  8b4c2428  MOV ECX,dword ptr [ESP + 0x28]
00cef0cc  d91c24  FSTP float ptr [ESP]
00cef0cf  8d44240c  LEA EAX,[ESP + 0xc]
00cef0d3  50  PUSH EAX
00cef0d4  51  PUSH ECX
00cef0d5  8bce  MOV ECX,ESI
00cef0d7  ffd2  CALL EDX
00cef0d9  b001  MOV AL,0x1
00cef0db  5e  POP ESI
00cef0dc  83c41c  ADD ESP,0x1c
00cef0df  c20800  RET 0x8
