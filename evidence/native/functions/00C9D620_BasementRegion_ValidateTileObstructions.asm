# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool BasementRegion_ValidateTileObstructions(void * param_1, undefined4 param_2, undefined4 param_3, char * param_4, char * param_5, void * param_6)
Owned ranges: [[00c9d620, 00c9d777]]

00c9d620  83ec14  SUB ESP,0x14
00c9d623  807c241c00  CMP byte ptr [ESP + 0x1c],0x0
00c9d628  53  PUSH EBX
00c9d629  56  PUSH ESI
00c9d62a  57  PUSH EDI
00c9d62b  0f85e0000000  JNZ 0x00c9d711
00c9d631  8b7c2434  MOV EDI,dword ptr [ESP + 0x34]
00c9d635  8a1f  MOV BL,byte ptr [EDI]
00c9d637  55  PUSH EBP
00c9d638  8b6c2434  MOV EBP,dword ptr [ESP + 0x34]
00c9d63c  3a5d00  CMP BL,byte ptr [EBP]
00c9d63f  8bc7  MOV EAX,EDI
00c9d641  7c02  JL 0x00c9d645
00c9d643  8bc5  MOV EAX,EBP
00c9d645  0fbe00  MOVSX EAX,byte ptr [EAX]
00c9d648  8a5701  MOV DL,byte ptr [EDI + 0x1]
00c9d64b  3a5501  CMP DL,byte ptr [EBP + 0x1]
00c9d64e  8d4f01  LEA ECX,[EDI + 0x1]
00c9d651  8d7501  LEA ESI,[EBP + 0x1]
00c9d654  8944242c  MOV dword ptr [ESP + 0x2c],EAX
00c9d658  8bc1  MOV EAX,ECX
00c9d65a  7c02  JL 0x00c9d65e
00c9d65c  8bc6  MOV EAX,ESI
00c9d65e  385d00  CMP byte ptr [EBP],BL
00c9d661  0fbe10  MOVSX EDX,byte ptr [EAX]
00c9d664  8bc7  MOV EAX,EDI
00c9d666  7c02  JL 0x00c9d66a
00c9d668  8bc5  MOV EAX,EBP
00c9d66a  8a1e  MOV BL,byte ptr [ESI]
00c9d66c  3a19  CMP BL,byte ptr [ECX]
00c9d66e  0fbe00  MOVSX EAX,byte ptr [EAX]
00c9d671  7c02  JL 0x00c9d675
00c9d673  8bce  MOV ECX,ESI
00c9d675  8a5c242c  MOV BL,byte ptr [ESP + 0x2c]
00c9d679  2c01  SUB AL,0x1
00c9d67b  8844242c  MOV byte ptr [ESP + 0x2c],AL
00c9d67f  8a01  MOV AL,byte ptr [ECX]
00c9d681  8a4f02  MOV CL,byte ptr [EDI + 0x2]
00c9d684  88542411  MOV byte ptr [ESP + 0x11],DL
00c9d688  8a5502  MOV DL,byte ptr [EBP + 0x2]
00c9d68b  2c01  SUB AL,0x1
00c9d68d  88542412  MOV byte ptr [ESP + 0x12],DL
00c9d691  8d54242c  LEA EDX,[ESP + 0x2c]
00c9d695  8844242d  MOV byte ptr [ESP + 0x2d],AL
00c9d699  52  PUSH EDX
00c9d69a  8d442414  LEA EAX,[ESP + 0x14]
00c9d69e  884c2432  MOV byte ptr [ESP + 0x32],CL
00c9d6a2  50  PUSH EAX
00c9d6a3  8d4c241c  LEA ECX,[ESP + 0x1c]
00c9d6a7  885c2418  MOV byte ptr [ESP + 0x18],BL
00c9d6ab  e84095e5ff  CALL 0x00af6bf0
00c9d6b0  8d4c2414  LEA ECX,[ESP + 0x14]
00c9d6b4  e8d78de5ff  CALL 0x00af6490
00c9d6b9  84c0  TEST AL,AL
00c9d6bb  5d  POP EBP
00c9d6bc  0f85ad000000  JNZ 0x00c9d76f
00c9d6c2  8b742438  MOV ESI,dword ptr [ESP + 0x38]
00c9d6c6  8b7c2424  MOV EDI,dword ptr [ESP + 0x24]
00c9d6ca  8b5c242c  MOV EBX,dword ptr [ESP + 0x2c]
00c9d6ce  8bff  MOV EDI,EDI
00c9d6d0  8d4c2410  LEA ECX,[ESP + 0x10]
00c9d6d4  e8078ee5ff  CALL 0x00af64e0
00c9d6d9  56  PUSH ESI
00c9d6da  50  PUSH EAX
00c9d6db  53  PUSH EBX
00c9d6dc  57  PUSH EDI
00c9d6dd  e80efcffff  CALL 0x00c9d2f0
00c9d6e2  83c410  ADD ESP,0x10
00c9d6e5  84c0  TEST AL,AL
00c9d6e7  741f  JZ 0x00c9d708
00c9d6e9  8d4c2410  LEA ECX,[ESP + 0x10]
00c9d6ed  e8ae8de5ff  CALL 0x00af64a0
00c9d6f2  8d4c2410  LEA ECX,[ESP + 0x10]
00c9d6f6  e8958de5ff  CALL 0x00af6490
00c9d6fb  84c0  TEST AL,AL
00c9d6fd  74d1  JZ 0x00c9d6d0
00c9d6ff  5f  POP EDI
00c9d700  5e  POP ESI
00c9d701  b001  MOV AL,0x1
00c9d703  5b  POP EBX
00c9d704  83c414  ADD ESP,0x14
00c9d707  c3  RET
00c9d708  5f  POP EDI
00c9d709  5e  POP ESI
00c9d70a  32c0  XOR AL,AL
00c9d70c  5b  POP EBX
00c9d70d  83c414  ADD ESP,0x14
00c9d710  c3  RET
00c9d711  8b4c2434  MOV ECX,dword ptr [ESP + 0x34]
00c9d715  8b542430  MOV EDX,dword ptr [ESP + 0x30]
00c9d719  51  PUSH ECX
00c9d71a  52  PUSH EDX
00c9d71b  8d4c2418  LEA ECX,[ESP + 0x18]
00c9d71f  e85c9ae5ff  CALL 0x00af7180
00c9d724  8d4c2410  LEA ECX,[ESP + 0x10]
00c9d728  e8a391e5ff  CALL 0x00af68d0
00c9d72d  84c0  TEST AL,AL
00c9d72f  753e  JNZ 0x00c9d76f
00c9d731  8b742438  MOV ESI,dword ptr [ESP + 0x38]
00c9d735  8b7c2424  MOV EDI,dword ptr [ESP + 0x24]
00c9d739  8b5c242c  MOV EBX,dword ptr [ESP + 0x2c]
00c9d73d  8d4900  LEA ECX,[ECX]
00c9d740  8d4c2410  LEA ECX,[ESP + 0x10]
00c9d744  e87791e5ff  CALL 0x00af68c0
00c9d749  56  PUSH ESI
00c9d74a  50  PUSH EAX
00c9d74b  53  PUSH EBX
00c9d74c  57  PUSH EDI
00c9d74d  e89efbffff  CALL 0x00c9d2f0
00c9d752  83c410  ADD ESP,0x10
00c9d755  84c0  TEST AL,AL
00c9d757  74af  JZ 0x00c9d708
00c9d759  8d4c2410  LEA ECX,[ESP + 0x10]
00c9d75d  e80e97e5ff  CALL 0x00af6e70
00c9d762  8d4c2410  LEA ECX,[ESP + 0x10]
00c9d766  e86591e5ff  CALL 0x00af68d0
00c9d76b  84c0  TEST AL,AL
00c9d76d  74d1  JZ 0x00c9d740
00c9d76f  5f  POP EDI
00c9d770  5e  POP ESI
00c9d771  b001  MOV AL,0x1
00c9d773  5b  POP EBX
00c9d774  83c414  ADD ESP,0x14
00c9d777  c3  RET
