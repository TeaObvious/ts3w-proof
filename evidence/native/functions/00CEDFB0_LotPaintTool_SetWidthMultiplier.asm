# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void LotPaintTool_SetWidthMultiplier(void * this, float value)
Owned ranges: [[00cedfb0, 00cee033]]

00cedfb0  f30f104c2404  MOVSS XMM1,dword ptr [ESP + 0x4]
00cedfb6  f30f110d08a01801  MOVSS dword ptr [0x0118a008],XMM1
00cedfbe  8b81e0000000  MOV EAX,dword ptr [ECX + 0xe0]
00cedfc4  85c0  TEST EAX,EAX
00cedfc6  743f  JZ 0x00cee007
00cedfc8  f30f10401c  MOVSS XMM0,dword ptr [EAX + 0x1c]
00cedfcd  f30f59c1  MULSS XMM0,XMM1
00cedfd1  f30f100d48310801  MOVSS XMM1,dword ptr [0x01083148]
00cedfd9  0f2fc1  COMISS XMM0,XMM1
00cedfdc  f30f1181d4000000  MOVSS dword ptr [ECX + 0xd4],XMM0
00cedfe4  7608  JBE 0x00cedfee
00cedfe6  f30f1189d4000000  MOVSS dword ptr [ECX + 0xd4],XMM1
00cedfee  f30f100544310801  MOVSS XMM0,dword ptr [0x01083144]
00cedff6  0f2f81d4000000  COMISS XMM0,dword ptr [ECX + 0xd4]
00cedffd  7608  JBE 0x00cee007
00cedfff  f30f1181d4000000  MOVSS dword ptr [ECX + 0xd4],XMM0
00cee007  f30f10050ca01801  MOVSS XMM0,dword ptr [0x0118a00c]
00cee00f  d981d4000000  FLD float ptr [ECX + 0xd4]
00cee015  f30f59057c480401  MULSS XMM0,dword ptr [0x0104487c]
00cee01d  83ec08  SUB ESP,0x8
00cee020  f30f11442404  MOVSS dword ptr [ESP + 0x4],XMM0
00cee026  d91c24  FSTP float ptr [ESP]
00cee029  83c128  ADD ECX,0x28
00cee02c  e8fffaffff  CALL 0x00cedb30
00cee031  c20400  RET 0x4
