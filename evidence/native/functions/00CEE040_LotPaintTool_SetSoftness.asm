# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void LotPaintTool_SetSoftness(void * this, float value)
Owned ranges: [[00cee040, 00cee0e0]]

00cee040  f30f104c2404  MOVSS XMM1,dword ptr [ESP + 0x4]
00cee046  f30f10054c310801  MOVSS XMM0,dword ptr [0x0108314c]
00cee04e  0f2ec8  UCOMISS XMM1,XMM0
00cee051  9f  LAHF
00cee052  f6c444  TEST AH,0x44
00cee055  f30f110d0ca01801  MOVSS dword ptr [0x0118a00c],XMM1
00cee05d  7a0a  JP 0x00cee069
00cee05f  f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
00cee067  eb43  JMP 0x00cee0ac
00cee069  0f2fc1  COMISS XMM0,XMM1
00cee06c  761e  JBE 0x00cee08c
00cee06e  f30f5cc1  SUBSS XMM0,XMM1
00cee072  f30f590514b2fa00  MULSS XMM0,dword ptr [0x00fab214]
00cee07a  f30f59059c2bfa00  MULSS XMM0,dword ptr [0x00fa2b9c]
00cee082  f30f5805f898f900  ADDSS XMM0,dword ptr [0x00f998f8]
00cee08a  eb20  JMP 0x00cee0ac
00cee08c  f30f5cc8  SUBSS XMM1,XMM0
00cee090  f30f590d14b2fa00  MULSS XMM1,dword ptr [0x00fab214]
00cee098  f30f590d64fd0301  MULSS XMM1,dword ptr [0x0103fd64]
00cee0a0  f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
00cee0a8  f30f5cc1  SUBSS XMM0,XMM1
00cee0ac  d981d4000000  FLD float ptr [ECX + 0xd4]
00cee0b2  f30f1181e4000000  MOVSS dword ptr [ECX + 0xe4],XMM0
00cee0ba  f30f10050ca01801  MOVSS XMM0,dword ptr [0x0118a00c]
00cee0c2  f30f59057c480401  MULSS XMM0,dword ptr [0x0104487c]
00cee0ca  83ec08  SUB ESP,0x8
00cee0cd  f30f11442404  MOVSS dword ptr [ESP + 0x4],XMM0
00cee0d3  d91c24  FSTP float ptr [ESP]
00cee0d6  83c128  ADD ECX,0x28
00cee0d9  e852faffff  CALL 0x00cedb30
00cee0de  c20400  RET 0x4
