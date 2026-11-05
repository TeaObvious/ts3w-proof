# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined PlacementGrid_SnapPosition(float * param_1, float param_2, float * param_3)
Owned ranges: [[00afc020, 00afc08a]]

00afc020  51  PUSH ECX
00afc021  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00afc025  f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
00afc02d  f30f104c240c  MOVSS XMM1,dword ptr [ESP + 0xc]
00afc033  f30f1010  MOVSS XMM2,dword ptr [EAX]
00afc037  f30f5ec1  DIVSS XMM0,XMM1
00afc03b  f30f59d0  MULSS XMM2,XMM0
00afc03f  f30f11542408  MOVSS dword ptr [ESP + 0x8],XMM2
00afc045  d9442408  FLD float ptr [ESP + 0x8]
00afc049  db5c240c  FISTP dword ptr [ESP + 0xc]
00afc04d  f30f105004  MOVSS XMM2,dword ptr [EAX + 0x4]
00afc052  f30f59d0  MULSS XMM2,XMM0
00afc056  f30f111424  MOVSS dword ptr [ESP],XMM2
00afc05b  d90424  FLD float ptr [ESP]
00afc05e  db5c2408  FISTP dword ptr [ESP + 0x8]
00afc062  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00afc066  f30f2a44240c  CVTSI2SS XMM0,dword ptr [ESP + 0xc]
00afc06c  f30f59c1  MULSS XMM0,XMM1
00afc070  f30f1101  MOVSS dword ptr [ECX],XMM0
00afc074  f30f2a442408  CVTSI2SS XMM0,dword ptr [ESP + 0x8]
00afc07a  f30f59c1  MULSS XMM0,XMM1
00afc07e  f30f114104  MOVSS dword ptr [ECX + 0x4],XMM0
00afc083  8b4008  MOV EAX,dword ptr [EAX + 0x8]
00afc086  894108  MOV dword ptr [ECX + 0x8],EAX
00afc089  59  POP ECX
00afc08a  c3  RET
