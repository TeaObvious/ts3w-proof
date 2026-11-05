# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: char Placement_GetFootprintBoundsForLevel(int param_1, void * param_2, float * param_3)
Owned ranges: [[00b3de30, 00b3df2d]]

00b3de30  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
00b3de34  83ec14  SUB ESP,0x14
00b3de37  56  PUSH ESI
00b3de38  33f6  XOR ESI,ESI
00b3de3a  3bce  CMP ECX,ESI
00b3de3c  7507  JNZ 0x00b3de45
00b3de3e  32c0  XOR AL,AL
00b3de40  5e  POP ESI
00b3de41  83c414  ADD ESP,0x14
00b3de44  c3  RET
00b3de45  a1a89f1e01  MOV EAX,[0x011e9fa8]
00b3de4a  57  PUSH EDI
00b3de4b  50  PUSH EAX
00b3de4c  e80f64dfff  CALL 0x00934260
00b3de51  8bf8  MOV EDI,EAX
00b3de53  3bfe  CMP EDI,ESI
00b3de55  7508  JNZ 0x00b3de5f
00b3de57  5f  POP EDI
00b3de58  32c0  XOR AL,AL
00b3de5a  5e  POP ESI
00b3de5b  83c414  ADD ESP,0x14
00b3de5e  c3  RET
00b3de5f  53  PUSH EBX
00b3de60  6a01  PUSH 0x1
00b3de62  8d4c242c  LEA ECX,[ESP + 0x2c]
00b3de66  51  PUSH ECX
00b3de67  6a05  PUSH 0x5
00b3de69  8d542418  LEA EDX,[ESP + 0x18]
00b3de6d  52  PUSH EDX
00b3de6e  8bcf  MOV ECX,EDI
00b3de70  32db  XOR BL,BL
00b3de72  8974241c  MOV dword ptr [ESP + 0x1c],ESI
00b3de76  89742438  MOV dword ptr [ESP + 0x38],ESI
00b3de7a  e80172e0ff  CALL 0x00945080
00b3de7f  84c0  TEST AL,AL
00b3de81  0f849e000000  JZ 0x00b3df25
00b3de87  8b74242c  MOV ESI,dword ptr [ESP + 0x2c]
00b3de8b  55  PUSH EBP
00b3de8c  8b6c2428  MOV EBP,dword ptr [ESP + 0x28]
00b3de90  8b44242c  MOV EAX,dword ptr [ESP + 0x2c]
00b3de94  0fbe4805  MOVSX ECX,byte ptr [EAX + 0x5]
00b3de98  3be9  CMP EBP,ECX
00b3de9a  756b  JNZ 0x00b3df07
00b3de9c  8b5030  MOV EDX,dword ptr [EAX + 0x30]
00b3de9f  83c030  ADD EAX,0x30
00b3dea2  3b5004  CMP EDX,dword ptr [EAX + 0x4]
00b3dea5  7460  JZ 0x00b3df07
00b3dea7  8d4c2414  LEA ECX,[ESP + 0x14]
00b3deab  51  PUSH ECX
00b3deac  50  PUSH EAX
00b3dead  e80e03c9ff  CALL 0x007ce1c0
00b3deb2  f30f1054241c  MOVSS XMM2,dword ptr [ESP + 0x1c]
00b3deb8  f30f105c2424  MOVSS XMM3,dword ptr [ESP + 0x24]
00b3debe  83c408  ADD ESP,0x8
00b3dec1  0f2ed3  UCOMISS XMM2,XMM3
00b3dec4  9f  LAHF
00b3dec5  f6c444  TEST AH,0x44
00b3dec8  7b3d  JNP 0x00b3df07
00b3deca  f30f10442418  MOVSS XMM0,dword ptr [ESP + 0x18]
00b3ded0  f30f104c2420  MOVSS XMM1,dword ptr [ESP + 0x20]
00b3ded6  0f2ec1  UCOMISS XMM0,XMM1
00b3ded9  9f  LAHF
00b3deda  f6c444  TEST AH,0x44
00b3dedd  7b28  JNP 0x00b3df07
00b3dedf  84db  TEST BL,BL
00b3dee1  7517  JNZ 0x00b3defa
00b3dee3  f30f1116  MOVSS dword ptr [ESI],XMM2
00b3dee7  f30f114604  MOVSS dword ptr [ESI + 0x4],XMM0
00b3deec  f30f115e08  MOVSS dword ptr [ESI + 0x8],XMM3
00b3def1  f30f114e0c  MOVSS dword ptr [ESI + 0xc],XMM1
00b3def6  b301  MOV BL,0x1
00b3def8  eb0d  JMP 0x00b3df07
00b3defa  8d542414  LEA EDX,[ESP + 0x14]
00b3defe  52  PUSH EDX
00b3deff  56  PUSH ESI
00b3df00  8bce  MOV ECX,ESI
00b3df02  e8891f9eff  CALL 0x0051fe90
00b3df07  6a01  PUSH 0x1
00b3df09  8d442430  LEA EAX,[ESP + 0x30]
00b3df0d  50  PUSH EAX
00b3df0e  6a05  PUSH 0x5
00b3df10  8d4c241c  LEA ECX,[ESP + 0x1c]
00b3df14  51  PUSH ECX
00b3df15  8bcf  MOV ECX,EDI
00b3df17  e86471e0ff  CALL 0x00945080
00b3df1c  84c0  TEST AL,AL
00b3df1e  0f856cffffff  JNZ 0x00b3de90
00b3df24  5d  POP EBP
00b3df25  8ac3  MOV AL,BL
00b3df27  5b  POP EBX
00b3df28  5f  POP EDI
00b3df29  5e  POP ESI
00b3df2a  83c414  ADD ESP,0x14
00b3df2d  c3  RET
