# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined FloorFeatureGeometry_ApplyTileChange(void * this, int param_1, undefined4 param_2, char param_3, undefined4 param_4)
Owned ranges: [[00a7df80, 00a7e04f]]

00a7df80  83ec08  SUB ESP,0x8
00a7df83  53  PUSH EBX
00a7df84  8b5c2414  MOV EBX,dword ptr [ESP + 0x14]
00a7df88  55  PUSH EBP
00a7df89  56  PUSH ESI
00a7df8a  8bf1  MOV ESI,ECX
00a7df8c  57  PUSH EDI
00a7df8d  b801000000  MOV EAX,0x1
00a7df92  33d2  XOR EDX,EDX
00a7df94  8bcb  MOV ECX,EBX
00a7df96  e8051a5000  CALL 0x00f7f9a0
00a7df9b  8b8e14020000  MOV ECX,dword ptr [ESI + 0x214]
00a7dfa1  8be8  MOV EBP,EAX
00a7dfa3  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
00a7dfa7  89542414  MOV dword ptr [ESP + 0x14],EDX
00a7dfab  8b969c020000  MOV EDX,dword ptr [ESI + 0x29c]
00a7dfb1  8d3cc1  LEA EDI,[ECX + EAX*0x8]
00a7dfb4  8b4a18  MOV ECX,dword ptr [EDX + 0x18]
00a7dfb7  88442420  MOV byte ptr [ESP + 0x20],AL
00a7dfbb  8a86a0020000  MOV AL,byte ptr [ESI + 0x2a0]
00a7dfc1  6a01  PUSH 0x1
00a7dfc3  6a0f  PUSH 0xf
00a7dfc5  8d542428  LEA EDX,[ESP + 0x28]
00a7dfc9  885c2429  MOV byte ptr [ESP + 0x29],BL
00a7dfcd  8844242a  MOV byte ptr [ESP + 0x2a],AL
00a7dfd1  8b8990020000  MOV ECX,dword ptr [ECX + 0x290]
00a7dfd7  52  PUSH EDX
00a7dfd8  e853020100  CALL 0x00a8e230
00a7dfdd  84c0  TEST AL,AL
00a7dfdf  7442  JZ 0x00a7e023
00a7dfe1  807c242400  CMP byte ptr [ESP + 0x24],0x0
00a7dfe6  743b  JZ 0x00a7e023
00a7dfe8  8b442428  MOV EAX,dword ptr [ESP + 0x28]
00a7dfec  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
00a7dff0  50  PUSH EAX
00a7dff1  6a01  PUSH 0x1
00a7dff3  53  PUSH EBX
00a7dff4  51  PUSH ECX
00a7dff5  8bce  MOV ECX,ESI
00a7dff7  e824fcffff  CALL 0x00a7dc20
00a7dffc  8b07  MOV EAX,dword ptr [EDI]
00a7dffe  8b4f04  MOV ECX,dword ptr [EDI + 0x4]
00a7e001  8b542414  MOV EDX,dword ptr [ESP + 0x14]
00a7e005  23c5  AND EAX,EBP
00a7e007  23ca  AND ECX,EDX
00a7e009  0bc1  OR EAX,ECX
00a7e00b  7507  JNZ 0x00a7e014
00a7e00d  c6861002000001  MOV byte ptr [ESI + 0x210],0x1
00a7e014  092f  OR dword ptr [EDI],EBP
00a7e016  095704  OR dword ptr [EDI + 0x4],EDX
00a7e019  5f  POP EDI
00a7e01a  5e  POP ESI
00a7e01b  5d  POP EBP
00a7e01c  5b  POP EBX
00a7e01d  83c408  ADD ESP,0x8
00a7e020  c21000  RET 0x10
00a7e023  8b07  MOV EAX,dword ptr [EDI]
00a7e025  8b7f04  MOV EDI,dword ptr [EDI + 0x4]
00a7e028  237c2414  AND EDI,dword ptr [ESP + 0x14]
00a7e02c  23c5  AND EAX,EBP
00a7e02e  0bc7  OR EAX,EDI
00a7e030  7414  JZ 0x00a7e046
00a7e032  8b542428  MOV EDX,dword ptr [ESP + 0x28]
00a7e036  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
00a7e03a  52  PUSH EDX
00a7e03b  6a00  PUSH 0x0
00a7e03d  53  PUSH EBX
00a7e03e  50  PUSH EAX
00a7e03f  8bce  MOV ECX,ESI
00a7e041  e8dafbffff  CALL 0x00a7dc20
00a7e046  5f  POP EDI
00a7e047  5e  POP ESI
00a7e048  5d  POP EBP
00a7e049  5b  POP EBX
00a7e04a  83c408  ADD ESP,0x8
00a7e04d  c21000  RET 0x10
