# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void TerrainSculptTool_PrepareProfileAndCursor(void * this)
Owned ranges: [[00d1a070, 00d1a11e]]

00d1a070  56  PUSH ESI
00d1a071  8bf1  MOV ESI,ECX
00d1a073  8b869c010000  MOV EAX,dword ptr [ESI + 0x19c]
00d1a079  0590000000  ADD EAX,0x90
00d1a07e  8986d4000000  MOV dword ptr [ESI + 0xd4],EAX
00d1a084  f30f10401c  MOVSS XMM0,dword ptr [EAX + 0x1c]
00d1a089  f30f5905a0e41801  MULSS XMM0,dword ptr [0x0118e4a0]
00d1a091  f30f1186c8000000  MOVSS dword ptr [ESI + 0xc8],XMM0
00d1a099  f30f100da4e41801  MOVSS XMM1,dword ptr [0x0118e4a4]
00d1a0a1  f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
00d1a0a9  f30f590d7c480401  MULSS XMM1,dword ptr [0x0104487c]
00d1a0b1  0f28d0  MOVAPS XMM2,XMM0
00d1a0b4  f30f5cd1  SUBSS XMM2,XMM1
00d1a0b8  f30f591594adfa00  MULSS XMM2,dword ptr [0x00faad94]
00d1a0c0  f30f58d0  ADDSS XMM2,XMM0
00d1a0c4  f30f1196d8000000  MOVSS dword ptr [ESI + 0xd8],XMM2
00d1a0cc  8b00  MOV EAX,dword ptr [EAX]
00d1a0ce  3b8698010000  CMP EAX,dword ptr [ESI + 0x198]
00d1a0d4  7419  JZ 0x00d1a0ef
00d1a0d6  50  PUSH EAX
00d1a0d7  898698010000  MOV dword ptr [ESI + 0x198],EAX
00d1a0dd  e88eefffff  CALL 0x00d19070
00d1a0e2  8bce  MOV ECX,ESI
00d1a0e4  8986cc000000  MOV dword ptr [ESI + 0xcc],EAX
00d1a0ea  e881fcffff  CALL 0x00d19d70
00d1a0ef  8b8ed4000000  MOV ECX,dword ptr [ESI + 0xd4]
00d1a0f5  6a01  PUSH 0x1
00d1a0f7  8d86d0000000  LEA EAX,[ESI + 0xd0]
00d1a0fd  50  PUSH EAX
00d1a0fe  83c108  ADD ECX,0x8
00d1a101  6a01  PUSH 0x1
00d1a103  51  PUSH ECX
00d1a104  e8e7eef6ff  CALL 0x00c88ff0
00d1a109  8b96d4000000  MOV EDX,dword ptr [ESI + 0xd4]
00d1a10f  83c410  ADD ESP,0x10
00d1a112  83c208  ADD EDX,0x8
00d1a115  52  PUSH EDX
00d1a116  8bce  MOV ECX,ESI
00d1a118  e8c3efffff  CALL 0x00d190e0
00d1a11d  5e  POP ESI
00d1a11e  c3  RET
