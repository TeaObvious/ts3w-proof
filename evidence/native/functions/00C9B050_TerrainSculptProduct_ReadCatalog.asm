# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; actual Ghidra Listing and preserved non-owned envelope gaps.
Owned ranges: [[00c9b050, 00c9b0b6]]
Signature: undefined1 TerrainSculptProduct_ReadCatalog(void * this, int * param_1)

00c9b050  83ec18  SUB ESP,0x18
00c9b053  53  PUSH EBX
00c9b054  56  PUSH ESI
00c9b055  57  PUSH EDI
00c9b056  8b7c2428  MOV EDI,dword ptr [ESP + 0x28]
00c9b05a  6a01  PUSH 0x1
00c9b05c  8bf1  MOV ESI,ECX
00c9b05e  57  PUSH EDI
00c9b05f  8d4c2414  LEA ECX,[ESP + 0x14]
00c9b063  e878e3b3ff  CALL 0x007d93e0
00c9b068  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
00c9b06c  8b542414  MOV EDX,dword ptr [ESP + 0x14]
00c9b070  50  PUSH EAX
00c9b071  8d4c242c  LEA ECX,[ESP + 0x2c]
00c9b075  51  PUSH ECX
00c9b076  52  PUSH EDX
00c9b077  e8042984ff  CALL 0x004dd980
00c9b07c  83c40c  ADD ESP,0xc
00c9b07f  8d4c240c  LEA ECX,[ESP + 0xc]
00c9b083  50  PUSH EAX
00c9b084  e867c9b3ff  CALL 0x007d79f0
00c9b089  837c242802  CMP dword ptr [ESP + 0x28],0x2
00c9b08e  7307  JNC 0x00c9b097
00c9b090  c6868800000001  MOV byte ptr [ESI + 0x88],0x1
00c9b097  57  PUSH EDI
00c9b098  8bce  MOV ECX,ESI
00c9b09a  e8d183ffff  CALL 0x00c93470
00c9b09f  8a5c2420  MOV BL,byte ptr [ESP + 0x20]
00c9b0a3  8d4c240c  LEA ECX,[ESP + 0xc]
00c9b0a7  e8e4c8b3ff  CALL 0x007d7990
00c9b0ac  5f  POP EDI
00c9b0ad  5e  POP ESI
00c9b0ae  8ac3  MOV AL,BL
00c9b0b0  5b  POP EBX
00c9b0b1  83c418  ADD ESP,0x18
00c9b0b4  c20400  RET 0x4
