# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool TerrainUndoable_ChargeHeightDifference(void * this, float signedHeightChange)
Owned ranges: [[00d2be20, 00d2becb]]

00d2be20  83ec08  SUB ESP,0x8
00d2be23  d944240c  FLD float ptr [ESP + 0xc]
00d2be27  53  PUSH EBX
00d2be28  56  PUSH ESI
00d2be29  d9e1  FABS
00d2be2b  8bf1  MOV ESI,ECX
00d2be2d  d95c2408  FSTP float ptr [ESP + 0x8]
00d2be31  807e1400  CMP byte ptr [ESI + 0x14],0x0
00d2be35  f30f10860c010000  MOVSS XMM0,dword ptr [ESI + 0x10c]
00d2be3d  f30f58442408  ADDSS XMM0,dword ptr [ESP + 0x8]
00d2be43  b301  MOV BL,0x1
00d2be45  f30f11860c010000  MOVSS dword ptr [ESI + 0x10c],XMM0
00d2be4d  7405  JZ 0x00d2be54
00d2be4f  0f57c9  XORPS XMM1,XMM1
00d2be52  eb08  JMP 0x00d2be5c
00d2be54  f30f108e08010000  MOVSS XMM1,dword ptr [ESI + 0x108]
00d2be5c  f30f59c1  MULSS XMM0,XMM1
00d2be60  f30f1144240c  MOVSS dword ptr [ESP + 0xc],XMM0
00d2be66  f30f5c8610010000  SUBSS XMM0,dword ptr [ESI + 0x110]
00d2be6e  f30f11442414  MOVSS dword ptr [ESP + 0x14],XMM0
00d2be74  d9442414  FLD float ptr [ESP + 0x14]
00d2be78  51  PUSH ECX
00d2be79  d91c24  FSTP float ptr [ESP]
00d2be7c  e84feafeff  CALL 0x00d1a8d0
00d2be81  84c0  TEST AL,AL
00d2be83  7427  JZ 0x00d2beac
00d2be85  d9442414  FLD float ptr [ESP + 0x14]
00d2be89  51  PUSH ECX
00d2be8a  8bce  MOV ECX,ESI
00d2be8c  d91c24  FSTP float ptr [ESP]
00d2be8f  e81ceafeff  CALL 0x00d1a8b0
00d2be94  f30f1044240c  MOVSS XMM0,dword ptr [ESP + 0xc]
00d2be9a  f30f118610010000  MOVSS dword ptr [ESI + 0x110],XMM0
00d2bea2  5e  POP ESI
00d2bea3  8ac3  MOV AL,BL
00d2bea5  5b  POP EBX
00d2bea6  83c408  ADD ESP,0x8
00d2bea9  c20400  RET 0x4
00d2beac  f30f10860c010000  MOVSS XMM0,dword ptr [ESI + 0x10c]
00d2beb4  f30f5c442408  SUBSS XMM0,dword ptr [ESP + 0x8]
00d2beba  f30f11860c010000  MOVSS dword ptr [ESI + 0x10c],XMM0
00d2bec2  5e  POP ESI
00d2bec3  32c0  XOR AL,AL
00d2bec5  5b  POP EBX
00d2bec6  83c408  ADD ESP,0x8
00d2bec9  c20400  RET 0x4
