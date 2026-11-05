# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined BasementExcavation_ApplyVertexHeights(undefined4 * param_1, char param_2, char * param_3, char * param_4, float param_5, void * param_6)
Owned ranges: [[00c9dd50, 00c9deaa]]

00c9dd50  83ec10  SUB ESP,0x10
00c9dd53  a1fc771801  MOV EAX,[0x011877fc]
00c9dd58  56  PUSH ESI
00c9dd59  57  PUSH EDI
00c9dd5a  6a00  PUSH 0x0
00c9dd5c  6a00  PUSH 0x0
00c9dd5e  6a00  PUSH 0x0
00c9dd60  6a00  PUSH 0x0
00c9dd62  25fffffdff  AND EAX,0xfffdffff
00c9dd67  68a8d60701  PUSH 0x107d6a8
00c9dd6c  68b0000000  PUSH 0xb0
00c9dd71  89442420  MOV dword ptr [ESP + 0x20],EAX
00c9dd75  e8866784ff  CALL 0x004e4500
00c9dd7a  8b7c2434  MOV EDI,dword ptr [ESP + 0x34]
00c9dd7e  83c418  ADD ESP,0x18
00c9dd81  85c0  TEST EAX,EAX
00c9dd83  0f8490000000  JZ 0x00c9de19
00c9dd89  57  PUSH EDI
00c9dd8a  8bc8  MOV ECX,EAX
00c9dd8c  e87f3a0800  CALL 0x00d21810
00c9dd91  8bf0  MOV ESI,EAX
00c9dd93  85f6  TEST ESI,ESI
00c9dd95  7404  JZ 0x00c9dd9b
00c9dd97  83460401  ADD dword ptr [ESI + 0x4],0x1
00c9dd9b  8b16  MOV EDX,dword ptr [ESI]
00c9dd9d  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00c9dda0  53  PUSH EBX
00c9dda1  8bce  MOV ECX,ESI
00c9dda3  ffd0  CALL EAX
00c9dda5  8b9f90020000  MOV EBX,dword ptr [EDI + 0x290]
00c9ddab  8bcb  MOV ECX,EBX
00c9ddad  e8becfdeff  CALL 0x00a8ad70
00c9ddb2  807c242400  CMP byte ptr [ESP + 0x24],0x0
00c9ddb7  7567  JNZ 0x00c9de20
00c9ddb9  8b4c242c  MOV ECX,dword ptr [ESP + 0x2c]
00c9ddbd  8b542428  MOV EDX,dword ptr [ESP + 0x28]
00c9ddc1  51  PUSH ECX
00c9ddc2  52  PUSH EDX
00c9ddc3  8d4c2418  LEA ECX,[ESP + 0x18]
00c9ddc7  e8c487e5ff  CALL 0x00af6590
00c9ddcc  8d4c2410  LEA ECX,[ESP + 0x10]
00c9ddd0  e8bb86e5ff  CALL 0x00af6490
00c9ddd5  84c0  TEST AL,AL
00c9ddd7  0f859a000000  JNZ 0x00c9de77
00c9dddd  8d4900  LEA ECX,[ECX]
00c9dde0  8d4c2410  LEA ECX,[ESP + 0x10]
00c9dde4  e8f786e5ff  CALL 0x00af64e0
00c9dde9  d9442430  FLD float ptr [ESP + 0x30]
00c9dded  56  PUSH ESI
00c9ddee  8d4c2410  LEA ECX,[ESP + 0x10]
00c9ddf2  51  PUSH ECX
00c9ddf3  51  PUSH ECX
00c9ddf4  d91c24  FSTP float ptr [ESP]
00c9ddf7  50  PUSH EAX
00c9ddf8  57  PUSH EDI
00c9ddf9  e8c2faffff  CALL 0x00c9d8c0
00c9ddfe  83c414  ADD ESP,0x14
00c9de01  8d4c2410  LEA ECX,[ESP + 0x10]
00c9de05  e80688e5ff  CALL 0x00af6610
00c9de0a  8d4c2410  LEA ECX,[ESP + 0x10]
00c9de0e  e87d86e5ff  CALL 0x00af6490
00c9de13  84c0  TEST AL,AL
00c9de15  74c9  JZ 0x00c9dde0
00c9de17  eb5e  JMP 0x00c9de77
00c9de19  33f6  XOR ESI,ESI
00c9de1b  e97bffffff  JMP 0x00c9dd9b
00c9de20  8b54242c  MOV EDX,dword ptr [ESP + 0x2c]
00c9de24  8b442428  MOV EAX,dword ptr [ESP + 0x28]
00c9de28  52  PUSH EDX
00c9de29  50  PUSH EAX
00c9de2a  8d4c2418  LEA ECX,[ESP + 0x18]
00c9de2e  e8dd92e5ff  CALL 0x00af7110
00c9de33  8d4c2410  LEA ECX,[ESP + 0x10]
00c9de37  e8648be5ff  CALL 0x00af69a0
00c9de3c  84c0  TEST AL,AL
00c9de3e  7537  JNZ 0x00c9de77
00c9de40  8d4c2410  LEA ECX,[ESP + 0x10]
00c9de44  e8a7778aff  CALL 0x005455f0
00c9de49  d9442430  FLD float ptr [ESP + 0x30]
00c9de4d  56  PUSH ESI
00c9de4e  8d4c2410  LEA ECX,[ESP + 0x10]
00c9de52  51  PUSH ECX
00c9de53  51  PUSH ECX
00c9de54  d91c24  FSTP float ptr [ESP]
00c9de57  50  PUSH EAX
00c9de58  57  PUSH EDI
00c9de59  e862faffff  CALL 0x00c9d8c0
00c9de5e  83c414  ADD ESP,0x14
00c9de61  8d4c2410  LEA ECX,[ESP + 0x10]
00c9de65  e80691e5ff  CALL 0x00af6f70
00c9de6a  8d4c2410  LEA ECX,[ESP + 0x10]
00c9de6e  e82d8be5ff  CALL 0x00af69a0
00c9de73  84c0  TEST AL,AL
00c9de75  74c9  JZ 0x00c9de40
00c9de77  8bcb  MOV ECX,EBX
00c9de79  e8920fdfff  CALL 0x00a8ee10
00c9de7e  8b4c2434  MOV ECX,dword ptr [ESP + 0x34]
00c9de82  56  PUSH ESI
00c9de83  e808d30700  CALL 0x00d1b190
00c9de88  8b4604  MOV EAX,dword ptr [ESI + 0x4]
00c9de8b  83c0ff  ADD EAX,-0x1
00c9de8e  894604  MOV dword ptr [ESI + 0x4],EAX
00c9de91  5b  POP EBX
00c9de92  7511  JNZ 0x00c9dea5
00c9de94  c7460401000000  MOV dword ptr [ESI + 0x4],0x1
00c9de9b  8b16  MOV EDX,dword ptr [ESI]
00c9de9d  8b02  MOV EAX,dword ptr [EDX]
00c9de9f  6a01  PUSH 0x1
00c9dea1  8bce  MOV ECX,ESI
00c9dea3  ffd0  CALL EAX
00c9dea5  5f  POP EDI
00c9dea6  5e  POP ESI
00c9dea7  83c410  ADD ESP,0x10
00c9deaa  c3  RET
