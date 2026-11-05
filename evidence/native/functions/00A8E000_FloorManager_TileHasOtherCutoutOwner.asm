# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool FloorManager_TileHasOtherCutoutOwner(void * this, char * param_1, int param_2, uint param_3)
Owned ranges: [[00a8e000, 00a8e084]]

00a8e000  8b542404  MOV EDX,dword ptr [ESP + 0x4]
00a8e004  0fbe4202  MOVSX EAX,byte ptr [EDX + 0x2]
00a8e008  83ec08  SUB ESP,0x8
00a8e00b  56  PUSH ESI
00a8e00c  8bf1  MOV ESI,ECX
00a8e00e  2b4610  SUB EAX,dword ptr [ESI + 0x10]
00a8e011  8b8ed0000000  MOV ECX,dword ptr [ESI + 0xd0]
00a8e017  3b410c  CMP EAX,dword ptr [ECX + 0xc]
00a8e01a  7d60  JGE 0x00a8e07c
00a8e01c  85c9  TEST ECX,ECX
00a8e01e  745c  JZ 0x00a8e07c
00a8e020  50  PUSH EAX
00a8e021  0fbe4201  MOVSX EAX,byte ptr [EDX + 0x1]
00a8e025  0fbe12  MOVSX EDX,byte ptr [EDX]
00a8e028  50  PUSH EAX
00a8e029  52  PUSH EDX
00a8e02a  e881d3ffff  CALL 0x00a8b3b0
00a8e02f  8a00  MOV AL,byte ptr [EAX]
00a8e031  8d4c2410  LEA ECX,[ESP + 0x10]
00a8e035  51  PUSH ECX
00a8e036  8d542408  LEA EDX,[ESP + 0x8]
00a8e03a  81c6bc010000  ADD ESI,0x1bc
00a8e040  52  PUSH EDX
00a8e041  8bce  MOV ECX,ESI
00a8e043  88442418  MOV byte ptr [ESP + 0x18],AL
00a8e047  e8a4f7ffff  CALL 0x00a8d7f0
00a8e04c  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00a8e04f  8b5604  MOV EDX,dword ptr [ESI + 0x4]
00a8e052  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00a8e056  3b048a  CMP EAX,dword ptr [EDX + ECX*0x4]
00a8e059  7421  JZ 0x00a8e07c
00a8e05b  8b4808  MOV ECX,dword ptr [EAX + 0x8]
00a8e05e  8b400c  MOV EAX,dword ptr [EAX + 0xc]
00a8e061  8bd1  MOV EDX,ECX
00a8e063  0bd0  OR EDX,EAX
00a8e065  7415  JZ 0x00a8e07c
00a8e067  3b4c2414  CMP ECX,dword ptr [ESP + 0x14]
00a8e06b  7506  JNZ 0x00a8e073
00a8e06d  3b442418  CMP EAX,dword ptr [ESP + 0x18]
00a8e071  7409  JZ 0x00a8e07c
00a8e073  b001  MOV AL,0x1
00a8e075  5e  POP ESI
00a8e076  83c408  ADD ESP,0x8
00a8e079  c20c00  RET 0xc
00a8e07c  32c0  XOR AL,AL
00a8e07e  5e  POP ESI
00a8e07f  83c408  ADD ESP,0x8
00a8e082  c20c00  RET 0xc
