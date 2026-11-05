# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined FloorFeatureGeometry_StartFade(void * this, undefined1 param_1, undefined1 param_2, undefined1 param_3, undefined2 param_4)
Owned ranges: [[00a7dc20, 00a7dc8f]]

00a7dc20  83ec0c  SUB ESP,0xc
00a7dc23  8a442410  MOV AL,byte ptr [ESP + 0x10]
00a7dc27  8a542414  MOV DL,byte ptr [ESP + 0x14]
00a7dc2b  0f57c0  XORPS XMM0,XMM0
00a7dc2e  53  PUSH EBX
00a7dc2f  33db  XOR EBX,EBX
00a7dc31  8af8  MOV BH,AL
00a7dc33  56  PUSH ESI
00a7dc34  668b742424  MOV SI,word ptr [ESP + 0x24]
00a7dc39  57  PUSH EDI
00a7dc3a  0fb7fe  MOVZX EDI,SI
00a7dc3d  8ada  MOV BL,DL
00a7dc3f  8854240d  MOV byte ptr [ESP + 0xd],DL
00a7dc43  8844240c  MOV byte ptr [ESP + 0xc],AL
00a7dc47  8a442424  MOV AL,byte ptr [ESP + 0x24]
00a7dc4b  8d542428  LEA EDX,[ESP + 0x28]
00a7dc4f  52  PUSH EDX
00a7dc50  81c12c020000  ADD ECX,0x22c
00a7dc56  c1e310  SHL EBX,0x10
00a7dc59  0bdf  OR EBX,EDI
00a7dc5b  895c242c  MOV dword ptr [ESP + 0x2c],EBX
00a7dc5f  88442412  MOV byte ptr [ESP + 0x12],AL
00a7dc63  6689742414  MOV word ptr [ESP + 0x14],SI
00a7dc68  f30f11442418  MOVSS dword ptr [ESP + 0x18],XMM0
00a7dc6e  e8edf6ffff  CALL 0x00a7d360
00a7dc73  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
00a7dc77  8b542410  MOV EDX,dword ptr [ESP + 0x10]
00a7dc7b  8908  MOV dword ptr [EAX],ECX
00a7dc7d  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00a7dc81  5f  POP EDI
00a7dc82  5e  POP ESI
00a7dc83  895004  MOV dword ptr [EAX + 0x4],EDX
00a7dc86  894808  MOV dword ptr [EAX + 0x8],ECX
00a7dc89  5b  POP EBX
00a7dc8a  83c40c  ADD ESP,0xc
00a7dc8d  c21000  RET 0x10
