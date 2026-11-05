# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool LotQuarter_IsCoveredByRoofOrHigherFloor(void * param_1, char * param_2, char param_3)
Owned ranges: [[00acf100, 00acf208]]

00acf100  83ec14  SUB ESP,0x14
00acf103  53  PUSH EBX
00acf104  57  PUSH EDI
00acf105  8b7c2424  MOV EDI,dword ptr [ESP + 0x24]
00acf109  8a5f02  MOV BL,byte ptr [EDI + 0x2]
00acf10c  80fbff  CMP BL,0xff
00acf10f  7d08  JGE 0x00acf119
00acf111  5f  POP EDI
00acf112  b001  MOV AL,0x1
00acf114  5b  POP EBX
00acf115  83c414  ADD ESP,0x14
00acf118  c3  RET
00acf119  55  PUSH EBP
00acf11a  8b6c2424  MOV EBP,dword ptr [ESP + 0x24]
00acf11e  57  PUSH EDI
00acf11f  8bcd  MOV ECX,EBP
00acf121  e84a98d9ff  CALL 0x00868970
00acf126  84c0  TEST AL,AL
00acf128  750e  JNZ 0x00acf138
00acf12a  5d  POP EBP
00acf12b  33c0  XOR EAX,EAX
00acf12d  84db  TEST BL,BL
00acf12f  5f  POP EDI
00acf130  0f9cc0  SETL AL
00acf133  5b  POP EBX
00acf134  83c414  ADD ESP,0x14
00acf137  c3  RET
00acf138  668b07  MOV AX,word ptr [EDI]
00acf13b  8a4f02  MOV CL,byte ptr [EDI + 0x2]
00acf13e  8a5703  MOV DL,byte ptr [EDI + 0x3]
00acf141  f30f100518b2fa00  MOVSS XMM0,dword ptr [0x00fab218]
00acf149  8b9d80010000  MOV EBX,dword ptr [EBP + 0x180]
00acf14f  56  PUSH ESI
00acf150  8bb5ac020000  MOV ESI,dword ptr [EBP + 0x2ac]
00acf156  6689442410  MOV word ptr [ESP + 0x10],AX
00acf15b  8d442418  LEA EAX,[ESP + 0x18]
00acf15f  884c2412  MOV byte ptr [ESP + 0x12],CL
00acf163  50  PUSH EAX
00acf164  8d4c2414  LEA ECX,[ESP + 0x14]
00acf168  51  PUSH ECX
00acf169  8854241b  MOV byte ptr [ESP + 0x1b],DL
00acf16d  f30f11442420  MOVSS dword ptr [ESP + 0x20],XMM0
00acf173  f30f11442424  MOVSS dword ptr [ESP + 0x24],XMM0
00acf179  c744242800000000  MOV dword ptr [ESP + 0x28],0x0
00acf181  e81a900200  CALL 0x00af81a0
00acf186  83c408  ADD ESP,0x8
00acf189  85f6  TEST ESI,ESI
00acf18b  7414  JZ 0x00acf1a1
00acf18d  6a00  PUSH 0x0
00acf18f  6a00  PUSH 0x0
00acf191  8d542420  LEA EDX,[ESP + 0x20]
00acf195  52  PUSH EDX
00acf196  8bce  MOV ECX,ESI
00acf198  e8135a0c00  CALL 0x00b94bb0
00acf19d  84c0  TEST AL,AL
00acf19f  755e  JNZ 0x00acf1ff
00acf1a1  0fbe442412  MOVSX EAX,byte ptr [ESP + 0x12]
00acf1a6  3bc3  CMP EAX,EBX
00acf1a8  7d4b  JGE 0x00acf1f5
00acf1aa  8b7c2430  MOV EDI,dword ptr [ESP + 0x30]
00acf1ae  8bff  MOV EDI,EDI
00acf1b0  8b4c2413  MOV ECX,dword ptr [ESP + 0x13]
00acf1b4  8044241201  ADD byte ptr [ESP + 0x12],0x1
00acf1b9  6a01  PUSH 0x1
00acf1bb  51  PUSH ECX
00acf1bc  8b8d90020000  MOV ECX,dword ptr [EBP + 0x290]
00acf1c2  8d542418  LEA EDX,[ESP + 0x18]
00acf1c6  52  PUSH EDX
00acf1c7  e864f0fbff  CALL 0x00a8e230
00acf1cc  84c0  TEST AL,AL
00acf1ce  752f  JNZ 0x00acf1ff
00acf1d0  8344242001  ADD dword ptr [ESP + 0x20],0x1
00acf1d5  85f6  TEST ESI,ESI
00acf1d7  7413  JZ 0x00acf1ec
00acf1d9  57  PUSH EDI
00acf1da  6a00  PUSH 0x0
00acf1dc  8d442420  LEA EAX,[ESP + 0x20]
00acf1e0  50  PUSH EAX
00acf1e1  8bce  MOV ECX,ESI
00acf1e3  e8c8590c00  CALL 0x00b94bb0
00acf1e8  84c0  TEST AL,AL
00acf1ea  7513  JNZ 0x00acf1ff
00acf1ec  0fbe4c2412  MOVSX ECX,byte ptr [ESP + 0x12]
00acf1f1  3bcb  CMP ECX,EBX
00acf1f3  7cbb  JL 0x00acf1b0
00acf1f5  5e  POP ESI
00acf1f6  5d  POP EBP
00acf1f7  5f  POP EDI
00acf1f8  32c0  XOR AL,AL
00acf1fa  5b  POP EBX
00acf1fb  83c414  ADD ESP,0x14
00acf1fe  c3  RET
00acf1ff  5e  POP ESI
00acf200  5d  POP EBP
00acf201  5f  POP EDI
00acf202  b001  MOV AL,0x1
00acf204  5b  POP EBX
00acf205  83c414  ADD ESP,0x14
00acf208  c3  RET
