# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool TerrainUndoable_ChangeGroundElevation(void * this, int sampleX, int sampleZ, float targetHeight, pointer ok, pointer errors)
Owned ranges: [[00d2c420, 00d2c552]]

00d2c420  83ec08  SUB ESP,0x8
00d2c423  56  PUSH ESI
00d2c424  8bf1  MOV ESI,ECX
00d2c426  83beb000000000  CMP dword ptr [ESI + 0xb0],0x0
00d2c42d  7509  JNZ 0x00d2c438
00d2c42f  32c0  XOR AL,AL
00d2c431  5e  POP ESI
00d2c432  83c408  ADD ESP,0x8
00d2c435  c21400  RET 0x14
00d2c438  8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
00d2c43c  d9442418  FLD float ptr [ESP + 0x18]
00d2c440  8a442414  MOV AL,byte ptr [ESP + 0x14]
00d2c444  53  PUSH EBX
00d2c445  8b5c2414  MOV EBX,dword ptr [ESP + 0x14]
00d2c449  57  PUSH EDI
00d2c44a  8b7c2424  MOV EDI,dword ptr [ESP + 0x24]
00d2c44e  6a00  PUSH 0x0
00d2c450  6a00  PUSH 0x0
00d2c452  51  PUSH ECX
00d2c453  c60701  MOV byte ptr [EDI],0x1
00d2c456  8b1534071901  MOV EDX,dword ptr [0x01190734]
00d2c45c  52  PUSH EDX
00d2c45d  51  PUSH ECX
00d2c45e  8b8eb0000000  MOV ECX,dword ptr [ESI + 0xb0]
00d2c464  d91c24  FSTP float ptr [ESP]
00d2c467  8844242d  MOV byte ptr [ESP + 0x2d],AL
00d2c46b  8d44242c  LEA EAX,[ESP + 0x2c]
00d2c46f  50  PUSH EAX
00d2c470  51  PUSH ECX
00d2c471  885c2434  MOV byte ptr [ESP + 0x34],BL
00d2c475  c644243600  MOV byte ptr [ESP + 0x36],0x0
00d2c47a  e89142f8ff  CALL 0x00cb0710
00d2c47f  83c41c  ADD ESP,0x1c
00d2c482  84c0  TEST AL,AL
00d2c484  0f84be000000  JZ 0x00d2c548
00d2c48a  8b96b0000000  MOV EDX,dword ptr [ESI + 0xb0]
00d2c490  8b8a90020000  MOV ECX,dword ptr [EDX + 0x290]
00d2c496  8b4124  MOV EAX,dword ptr [ECX + 0x24]
00d2c499  0fbe54241a  MOVSX EDX,byte ptr [ESP + 0x1a]
00d2c49e  2b5110  SUB EDX,dword ptr [ECX + 0x10]
00d2c4a1  0fbe4c2418  MOVSX ECX,byte ptr [ESP + 0x18]
00d2c4a6  0faf5004  IMUL EDX,dword ptr [EAX + 0x4]
00d2c4aa  f30f104c2420  MOVSS XMM1,dword ptr [ESP + 0x20]
00d2c4b0  03d1  ADD EDX,ECX
00d2c4b2  0faf5008  IMUL EDX,dword ptr [EAX + 0x8]
00d2c4b6  0fbe4c2419  MOVSX ECX,byte ptr [ESP + 0x19]
00d2c4bb  8b4010  MOV EAX,dword ptr [EAX + 0x10]
00d2c4be  03d1  ADD EDX,ECX
00d2c4c0  f30f100490  MOVSS XMM0,dword ptr [EAX + EDX*0x4]
00d2c4c5  51  PUSH ECX
00d2c4c6  f30f5cc8  SUBSS XMM1,XMM0
00d2c4ca  8bce  MOV ECX,ESI
00d2c4cc  f30f110c24  MOVSS dword ptr [ESP],XMM1
00d2c4d1  e84af9ffff  CALL 0x00d2be20
00d2c4d6  84c0  TEST AL,AL
00d2c4d8  746b  JZ 0x00d2c545
00d2c4da  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
00d2c4de  6a01  PUSH 0x1
00d2c4e0  51  PUSH ECX
00d2c4e1  53  PUSH EBX
00d2c4e2  8bce  MOV ECX,ESI
00d2c4e4  e847feffff  CALL 0x00d2c330
00d2c4e9  d9ee  FLDZ
00d2c4eb  6a01  PUSH 0x1
00d2c4ed  6a00  PUSH 0x0
00d2c4ef  6a00  PUSH 0x0
00d2c4f1  6830071901  PUSH 0x1190730
00d2c4f6  51  PUSH ECX
00d2c4f7  d91c24  FSTP float ptr [ESP]
00d2c4fa  6a00  PUSH 0x0
00d2c4fc  d9442438  FLD float ptr [ESP + 0x38]
00d2c500  51  PUSH ECX
00d2c501  8d542434  LEA EDX,[ESP + 0x34]
00d2c505  d91c24  FSTP float ptr [ESP]
00d2c508  52  PUSH EDX
00d2c509  8bce  MOV ECX,ESI
00d2c50b  8bf8  MOV EDI,EAX
00d2c50d  e8de5effff  CALL 0x00d223f0
00d2c512  8a4710  MOV AL,byte ptr [EDI + 0x10]
00d2c515  a801  TEST AL,0x1
00d2c517  7521  JNZ 0x00d2c53a
00d2c519  0c01  OR AL,0x1
00d2c51b  8d4c240c  LEA ECX,[ESP + 0xc]
00d2c51f  884710  MOV byte ptr [EDI + 0x10],AL
00d2c522  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
00d2c526  51  PUSH ECX
00d2c527  8d8e14010000  LEA ECX,[ESI + 0x114]
00d2c52d  895c2410  MOV dword ptr [ESP + 0x10],EBX
00d2c531  89442414  MOV dword ptr [ESP + 0x14],EAX
00d2c535  e8e629abff  CALL 0x007def20
00d2c53a  5f  POP EDI
00d2c53b  5b  POP EBX
00d2c53c  b001  MOV AL,0x1
00d2c53e  5e  POP ESI
00d2c53f  83c408  ADD ESP,0x8
00d2c542  c21400  RET 0x14
00d2c545  c60700  MOV byte ptr [EDI],0x0
00d2c548  5f  POP EDI
00d2c549  5b  POP EBX
00d2c54a  32c0  XOR AL,AL
00d2c54c  5e  POP ESI
00d2c54d  83c408  ADD ESP,0x8
00d2c550  c21400  RET 0x14
