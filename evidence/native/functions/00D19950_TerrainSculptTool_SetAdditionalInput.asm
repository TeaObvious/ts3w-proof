# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool TerrainSculptTool_SetAdditionalInput(void * this, uint inputId, float value, undefined4 word3, undefined4 word4, undefined4 word5)
Owned ranges: [[00d19950, 00d19a26]]

00d19950  8b542404  MOV EDX,dword ptr [ESP + 0x4]
00d19954  8bc2  MOV EAX,EDX
00d19956  2d77e3b604  SUB EAX,0x4b6e377
00d1995b  7475  JZ 0x00d199d2
00d1995d  83e83a  SUB EAX,0x3a
00d19960  7425  JZ 0x00d19987
00d19962  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00d19966  d944240c  FLD float ptr [ESP + 0xc]
00d1996a  50  PUSH EAX
00d1996b  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00d1996f  50  PUSH EAX
00d19970  83ec08  SUB ESP,0x8
00d19973  d95c2404  FSTP float ptr [ESP + 0x4]
00d19977  d9442418  FLD float ptr [ESP + 0x18]
00d1997b  d91c24  FSTP float ptr [ESP]
00d1997e  52  PUSH EDX
00d1997f  e82cb67eff  CALL 0x00504fb0
00d19984  c21400  RET 0x14
00d19987  f30f10442408  MOVSS XMM0,dword ptr [ESP + 0x8]
00d1998d  f30f100d7c480401  MOVSS XMM1,dword ptr [0x0104487c]
00d19995  f30f1015f898f900  MOVSS XMM2,dword ptr [0x00f998f8]
00d1999d  f30f1105a4e41801  MOVSS dword ptr [0x0118e4a4],XMM0
00d199a5  f30f59c1  MULSS XMM0,XMM1
00d199a9  0f28da  MOVAPS XMM3,XMM2
00d199ac  f30f5cd8  SUBSS XMM3,XMM0
00d199b0  f30f591d94adfa00  MULSS XMM3,dword ptr [0x00faad94]
00d199b8  f30f58da  ADDSS XMM3,XMM2
00d199bc  f30f1199b0000000  MOVSS dword ptr [ECX + 0xb0],XMM3
00d199c4  f30f1005a4e41801  MOVSS XMM0,dword ptr [0x0118e4a4]
00d199cc  f30f59c1  MULSS XMM0,XMM1
00d199d0  eb39  JMP 0x00d19a0b
00d199d2  f30f10442408  MOVSS XMM0,dword ptr [ESP + 0x8]
00d199d8  f30f1105a0e41801  MOVSS dword ptr [0x0118e4a0],XMM0
00d199e0  8b81ac000000  MOV EAX,dword ptr [ECX + 0xac]
00d199e6  85c0  TEST EAX,EAX
00d199e8  7411  JZ 0x00d199fb
00d199ea  f30f10481c  MOVSS XMM1,dword ptr [EAX + 0x1c]
00d199ef  f30f59c8  MULSS XMM1,XMM0
00d199f3  f30f1189a0000000  MOVSS dword ptr [ECX + 0xa0],XMM1
00d199fb  f30f1005a4e41801  MOVSS XMM0,dword ptr [0x0118e4a4]
00d19a03  f30f59057c480401  MULSS XMM0,dword ptr [0x0104487c]
00d19a0b  d981a0000000  FLD float ptr [ECX + 0xa0]
00d19a11  83ec08  SUB ESP,0x8
00d19a14  f30f11442404  MOVSS dword ptr [ESP + 0x4],XMM0
00d19a1a  d91c24  FSTP float ptr [ESP]
00d19a1d  e80e41fdff  CALL 0x00cedb30
00d19a22  b001  MOV AL,0x1
00d19a24  c21400  RET 0x14
