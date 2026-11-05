# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool BasementExcavation_ValidateVertexHeights(void * param_1, char param_2, char * param_3, char * param_4, float param_5, void * param_6)
Owned ranges: [[00c9dc40, 00c9dd42]]

00c9dc40  83ec10  SUB ESP,0x10
00c9dc43  a1fc771801  MOV EAX,[0x011877fc]
00c9dc48  25fffffdff  AND EAX,0xfffdffff
00c9dc4d  807c241800  CMP byte ptr [ESP + 0x18],0x0
00c9dc52  56  PUSH ESI
00c9dc53  57  PUSH EDI
00c9dc54  89442408  MOV dword ptr [ESP + 0x8],EAX
00c9dc58  7577  JNZ 0x00c9dcd1
00c9dc5a  8b4c2428  MOV ECX,dword ptr [ESP + 0x28]
00c9dc5e  8b542424  MOV EDX,dword ptr [ESP + 0x24]
00c9dc62  51  PUSH ECX
00c9dc63  52  PUSH EDX
00c9dc64  8d4c2414  LEA ECX,[ESP + 0x14]
00c9dc68  e82389e5ff  CALL 0x00af6590
00c9dc6d  8d4c240c  LEA ECX,[ESP + 0xc]
00c9dc71  e81a88e5ff  CALL 0x00af6490
00c9dc76  84c0  TEST AL,AL
00c9dc78  0f85bd000000  JNZ 0x00c9dd3b
00c9dc7e  8b742430  MOV ESI,dword ptr [ESP + 0x30]
00c9dc82  8b7c241c  MOV EDI,dword ptr [ESP + 0x1c]
00c9dc86  8d4c240c  LEA ECX,[ESP + 0xc]
00c9dc8a  e85188e5ff  CALL 0x00af64e0
00c9dc8f  d944242c  FLD float ptr [ESP + 0x2c]
00c9dc93  56  PUSH ESI
00c9dc94  8d4c240c  LEA ECX,[ESP + 0xc]
00c9dc98  51  PUSH ECX
00c9dc99  51  PUSH ECX
00c9dc9a  d91c24  FSTP float ptr [ESP]
00c9dc9d  50  PUSH EAX
00c9dc9e  57  PUSH EDI
00c9dc9f  e8dcfaffff  CALL 0x00c9d780
00c9dca4  83c414  ADD ESP,0x14
00c9dca7  84c0  TEST AL,AL
00c9dca9  741e  JZ 0x00c9dcc9
00c9dcab  8d4c240c  LEA ECX,[ESP + 0xc]
00c9dcaf  e85c89e5ff  CALL 0x00af6610
00c9dcb4  8d4c240c  LEA ECX,[ESP + 0xc]
00c9dcb8  e8d387e5ff  CALL 0x00af6490
00c9dcbd  84c0  TEST AL,AL
00c9dcbf  74c5  JZ 0x00c9dc86
00c9dcc1  5f  POP EDI
00c9dcc2  b001  MOV AL,0x1
00c9dcc4  5e  POP ESI
00c9dcc5  83c410  ADD ESP,0x10
00c9dcc8  c3  RET
00c9dcc9  5f  POP EDI
00c9dcca  32c0  XOR AL,AL
00c9dccc  5e  POP ESI
00c9dccd  83c410  ADD ESP,0x10
00c9dcd0  c3  RET
00c9dcd1  8b542428  MOV EDX,dword ptr [ESP + 0x28]
00c9dcd5  8b442424  MOV EAX,dword ptr [ESP + 0x24]
00c9dcd9  52  PUSH EDX
00c9dcda  50  PUSH EAX
00c9dcdb  8d4c2414  LEA ECX,[ESP + 0x14]
00c9dcdf  e82c94e5ff  CALL 0x00af7110
00c9dce4  8d4c240c  LEA ECX,[ESP + 0xc]
00c9dce8  e8b38ce5ff  CALL 0x00af69a0
00c9dced  84c0  TEST AL,AL
00c9dcef  754a  JNZ 0x00c9dd3b
00c9dcf1  8b742430  MOV ESI,dword ptr [ESP + 0x30]
00c9dcf5  8b7c241c  MOV EDI,dword ptr [ESP + 0x1c]
00c9dcf9  8da42400000000  LEA ESP,[ESP]
00c9dd00  8d4c240c  LEA ECX,[ESP + 0xc]
00c9dd04  e8e7788aff  CALL 0x005455f0
00c9dd09  d944242c  FLD float ptr [ESP + 0x2c]
00c9dd0d  56  PUSH ESI
00c9dd0e  8d4c240c  LEA ECX,[ESP + 0xc]
00c9dd12  51  PUSH ECX
00c9dd13  51  PUSH ECX
00c9dd14  d91c24  FSTP float ptr [ESP]
00c9dd17  50  PUSH EAX
00c9dd18  57  PUSH EDI
00c9dd19  e862faffff  CALL 0x00c9d780
00c9dd1e  83c414  ADD ESP,0x14
00c9dd21  84c0  TEST AL,AL
00c9dd23  74a4  JZ 0x00c9dcc9
00c9dd25  8d4c240c  LEA ECX,[ESP + 0xc]
00c9dd29  e84292e5ff  CALL 0x00af6f70
00c9dd2e  8d4c240c  LEA ECX,[ESP + 0xc]
00c9dd32  e8698ce5ff  CALL 0x00af69a0
00c9dd37  84c0  TEST AL,AL
00c9dd39  74c5  JZ 0x00c9dd00
00c9dd3b  5f  POP EDI
00c9dd3c  b001  MOV AL,0x1
00c9dd3e  5e  POP ESI
00c9dd3f  83c410  ADD ESP,0x10
00c9dd42  c3  RET
