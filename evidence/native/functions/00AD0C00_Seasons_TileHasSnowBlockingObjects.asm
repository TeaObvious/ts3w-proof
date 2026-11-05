# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined4 Seasons_TileHasSnowBlockingObjects(void * lot, char * tile, int ignoreIdLow, int ignoreIdHigh)
Owned ranges: [[00ad0c00, 00ad0cfe]]

00ad0c00  83ec10  SUB ESP,0x10
00ad0c03  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
00ad0c07  55  PUSH EBP
00ad0c08  56  PUSH ESI
00ad0c09  57  PUSH EDI
00ad0c0a  6a04  PUSH 0x4
00ad0c0c  6a00  PUSH 0x0
00ad0c0e  6a0f  PUSH 0xf
00ad0c10  6a01  PUSH 0x1
00ad0c12  6a00  PUSH 0x0
00ad0c14  6a00  PUSH 0x0
00ad0c16  8d442424  LEA EAX,[ESP + 0x24]
00ad0c1a  50  PUSH EAX
00ad0c1b  51  PUSH ECX
00ad0c1c  8b4c2440  MOV ECX,dword ptr [ESP + 0x40]
00ad0c20  c744242c00000000  MOV dword ptr [ESP + 0x2c],0x0
00ad0c28  c744243000000000  MOV dword ptr [ESP + 0x30],0x0
00ad0c30  c744243400000000  MOV dword ptr [ESP + 0x34],0x0
00ad0c38  c7442438c86b0601  MOV dword ptr [ESP + 0x38],0x1066bc8
00ad0c40  e83b68ffff  CALL 0x00ac7480
00ad0c45  8b7c2410  MOV EDI,dword ptr [ESP + 0x10]
00ad0c49  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
00ad0c4d  2bf8  SUB EDI,EAX
00ad0c4f  c1ff02  SAR EDI,0x2
00ad0c52  33ed  XOR EBP,EBP
00ad0c54  85ff  TEST EDI,EDI
00ad0c56  7e77  JLE 0x00ad0ccf
00ad0c58  8b34a8  MOV ESI,dword ptr [EAX + EBP*0x4]
00ad0c5b  85f6  TEST ESI,ESI
00ad0c5d  7469  JZ 0x00ad0cc8
00ad0c5f  8b542428  MOV EDX,dword ptr [ESP + 0x28]
00ad0c63  0b54242c  OR EDX,dword ptr [ESP + 0x2c]
00ad0c67  7412  JZ 0x00ad0c7b
00ad0c69  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00ad0c6c  3b4c2428  CMP ECX,dword ptr [ESP + 0x28]
00ad0c70  7509  JNZ 0x00ad0c7b
00ad0c72  8b560c  MOV EDX,dword ptr [ESI + 0xc]
00ad0c75  3b54242c  CMP EDX,dword ptr [ESP + 0x2c]
00ad0c79  744d  JZ 0x00ad0cc8
00ad0c7b  a1a8a21e01  MOV EAX,[0x011ea2a8]
00ad0c80  50  PUSH EAX
00ad0c81  8bce  MOV ECX,ESI
00ad0c83  e8d835e6ff  CALL 0x00934260
00ad0c88  85c0  TEST EAX,EAX
00ad0c8a  7438  JZ 0x00ad0cc4
00ad0c8c  f6400801  TEST byte ptr [EAX + 0x8],0x1
00ad0c90  7432  JZ 0x00ad0cc4
00ad0c92  56  PUSH ESI
00ad0c93  e818f10200  CALL 0x00affdb0
00ad0c98  83c404  ADD ESP,0x4
00ad0c9b  85c0  TEST EAX,EAX
00ad0c9d  7425  JZ 0x00ad0cc4
00ad0c9f  8b8898000000  MOV ECX,dword ptr [EAX + 0x98]
00ad0ca5  8bd1  MOV EDX,ECX
00ad0ca7  c1ea03  SHR EDX,0x3
00ad0caa  f6c201  TEST DL,0x1
00ad0cad  7536  JNZ 0x00ad0ce5
00ad0caf  c1e905  SHR ECX,0x5
00ad0cb2  f6c101  TEST CL,0x1
00ad0cb5  752e  JNZ 0x00ad0ce5
00ad0cb7  8b809c000000  MOV EAX,dword ptr [EAX + 0x9c]
00ad0cbd  c1e80c  SHR EAX,0xc
00ad0cc0  a801  TEST AL,0x1
00ad0cc2  7521  JNZ 0x00ad0ce5
00ad0cc4  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
00ad0cc8  83c501  ADD EBP,0x1
00ad0ccb  3bef  CMP EBP,EDI
00ad0ccd  7c89  JL 0x00ad0c58
00ad0ccf  85c0  TEST EAX,EAX
00ad0cd1  7409  JZ 0x00ad0cdc
00ad0cd3  50  PUSH EAX
00ad0cd4  e80738a1ff  CALL 0x004e44e0
00ad0cd9  83c404  ADD ESP,0x4
00ad0cdc  5f  POP EDI
00ad0cdd  5e  POP ESI
00ad0cde  32c0  XOR AL,AL
00ad0ce0  5d  POP EBP
00ad0ce1  83c410  ADD ESP,0x10
00ad0ce4  c3  RET
00ad0ce5  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
00ad0ce9  85c0  TEST EAX,EAX
00ad0ceb  7409  JZ 0x00ad0cf6
00ad0ced  50  PUSH EAX
00ad0cee  e8ed37a1ff  CALL 0x004e44e0
00ad0cf3  83c404  ADD ESP,0x4
00ad0cf6  5f  POP EDI
00ad0cf7  5e  POP ESI
00ad0cf8  b001  MOV AL,0x1
00ad0cfa  5d  POP EBP
00ad0cfb  83c410  ADD ESP,0x10
00ad0cfe  c3  RET
