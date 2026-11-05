# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined4 Lot_TestSelectedFloorZone2(void * param_1, undefined2 * param_2)
Owned ranges: [[00acf3d0, 00acf45b]]

00acf3d0  83ec08  SUB ESP,0x8
00acf3d3  56  PUSH ESI
00acf3d4  57  PUSH EDI
00acf3d5  8d4c240c  LEA ECX,[ESP + 0xc]
00acf3d9  e812710200  CALL 0x00af64f0
00acf3de  8b7c2418  MOV EDI,dword ptr [ESP + 0x18]
00acf3e2  8a4f02  MOV CL,byte ptr [EDI + 0x2]
00acf3e5  668b07  MOV AX,word ptr [EDI]
00acf3e8  884c240a  MOV byte ptr [ESP + 0xa],CL
00acf3ec  8d4c240c  LEA ECX,[ESP + 0xc]
00acf3f0  c644240bff  MOV byte ptr [ESP + 0xb],0xff
00acf3f5  6689442408  MOV word ptr [ESP + 0x8],AX
00acf3fa  e821710200  CALL 0x00af6520
00acf3ff  84c0  TEST AL,AL
00acf401  7549  JNZ 0x00acf44c
00acf403  8b742414  MOV ESI,dword ptr [ESP + 0x14]
00acf407  8d4c240c  LEA ECX,[ESP + 0xc]
00acf40b  e8a019a3ff  CALL 0x00500db0
00acf410  844703  TEST byte ptr [EDI + 0x3],AL
00acf413  8844240b  MOV byte ptr [ESP + 0xb],AL
00acf417  741d  JZ 0x00acf436
00acf419  6a00  PUSH 0x0
00acf41b  8d54240c  LEA EDX,[ESP + 0xc]
00acf41f  52  PUSH EDX
00acf420  8bce  MOV ECX,ESI
00acf422  e8a973feff  CALL 0x00ab67d0
00acf427  6a02  PUSH 0x2
00acf429  50  PUSH EAX
00acf42a  e8d1ee0200  CALL 0x00afe300
00acf42f  83c408  ADD ESP,0x8
00acf432  84c0  TEST AL,AL
00acf434  751e  JNZ 0x00acf454
00acf436  8d4c240c  LEA ECX,[ESP + 0xc]
00acf43a  e8d1700200  CALL 0x00af6510
00acf43f  8d4c240c  LEA ECX,[ESP + 0xc]
00acf443  e8d8700200  CALL 0x00af6520
00acf448  84c0  TEST AL,AL
00acf44a  74bb  JZ 0x00acf407
00acf44c  5f  POP EDI
00acf44d  32c0  XOR AL,AL
00acf44f  5e  POP ESI
00acf450  83c408  ADD ESP,0x8
00acf453  c3  RET
00acf454  5f  POP EDI
00acf455  b001  MOV AL,0x1
00acf457  5e  POP ESI
00acf458  83c408  ADD ESP,0x8
00acf45b  c3  RET
