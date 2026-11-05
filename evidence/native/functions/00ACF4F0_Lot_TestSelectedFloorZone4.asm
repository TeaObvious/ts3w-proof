# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined4 Lot_TestSelectedFloorZone4(void * param_1, undefined2 * param_2)
Owned ranges: [[00acf4f0, 00acf57b]]

00acf4f0  83ec08  SUB ESP,0x8
00acf4f3  56  PUSH ESI
00acf4f4  57  PUSH EDI
00acf4f5  8d4c240c  LEA ECX,[ESP + 0xc]
00acf4f9  e8f26f0200  CALL 0x00af64f0
00acf4fe  8b7c2418  MOV EDI,dword ptr [ESP + 0x18]
00acf502  8a4f02  MOV CL,byte ptr [EDI + 0x2]
00acf505  668b07  MOV AX,word ptr [EDI]
00acf508  884c240a  MOV byte ptr [ESP + 0xa],CL
00acf50c  8d4c240c  LEA ECX,[ESP + 0xc]
00acf510  c644240bff  MOV byte ptr [ESP + 0xb],0xff
00acf515  6689442408  MOV word ptr [ESP + 0x8],AX
00acf51a  e801700200  CALL 0x00af6520
00acf51f  84c0  TEST AL,AL
00acf521  7549  JNZ 0x00acf56c
00acf523  8b742414  MOV ESI,dword ptr [ESP + 0x14]
00acf527  8d4c240c  LEA ECX,[ESP + 0xc]
00acf52b  e88018a3ff  CALL 0x00500db0
00acf530  844703  TEST byte ptr [EDI + 0x3],AL
00acf533  8844240b  MOV byte ptr [ESP + 0xb],AL
00acf537  741d  JZ 0x00acf556
00acf539  6a00  PUSH 0x0
00acf53b  8d54240c  LEA EDX,[ESP + 0xc]
00acf53f  52  PUSH EDX
00acf540  8bce  MOV ECX,ESI
00acf542  e88972feff  CALL 0x00ab67d0
00acf547  6a04  PUSH 0x4
00acf549  50  PUSH EAX
00acf54a  e8b1ed0200  CALL 0x00afe300
00acf54f  83c408  ADD ESP,0x8
00acf552  84c0  TEST AL,AL
00acf554  751e  JNZ 0x00acf574
00acf556  8d4c240c  LEA ECX,[ESP + 0xc]
00acf55a  e8b16f0200  CALL 0x00af6510
00acf55f  8d4c240c  LEA ECX,[ESP + 0xc]
00acf563  e8b86f0200  CALL 0x00af6520
00acf568  84c0  TEST AL,AL
00acf56a  74bb  JZ 0x00acf527
00acf56c  5f  POP EDI
00acf56d  32c0  XOR AL,AL
00acf56f  5e  POP ESI
00acf570  83c408  ADD ESP,0x8
00acf573  c3  RET
00acf574  5f  POP EDI
00acf575  b001  MOV AL,0x1
00acf577  5e  POP ESI
00acf578  83c408  ADD ESP,0x8
00acf57b  c3  RET
