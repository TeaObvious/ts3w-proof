# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body.
Actual annotated Ghidra pseudocode: 0051B820_WinComboBox_HandleMouseDown.c
Owned ranges: [[0051b820, 0051b8c3]]

0051b820  56  PUSH ESI
0051b821  8bf1  MOV ESI,ECX
0051b823  85f6  TEST ESI,ESI
0051b825  57  PUSH EDI
0051b826  7405  JZ 0x0051b82d
0051b828  8d7e04  LEA EDI,[ESI + 0x4]
0051b82b  eb02  JMP 0x0051b82f
0051b82d  33ff  XOR EDI,EDI
0051b82f  8b4e30  MOV ECX,dword ptr [ESI + 0x30]
0051b832  8b01  MOV EAX,dword ptr [ECX]
0051b834  8b5060  MOV EDX,dword ptr [EAX + 0x60]
0051b837  6a01  PUSH 0x1
0051b839  ffd2  CALL EDX
0051b83b  3bc7  CMP EAX,EDI
0051b83d  7512  JNZ 0x0051b851
0051b83f  8b4e30  MOV ECX,dword ptr [ESI + 0x30]
0051b842  8b01  MOV EAX,dword ptr [ECX]
0051b844  8b4068  MOV EAX,dword ptr [EAX + 0x68]
0051b847  6a00  PUSH 0x0
0051b849  8d5604  LEA EDX,[ESI + 0x4]
0051b84c  52  PUSH EDX
0051b84d  6a01  PUSH 0x1
0051b84f  ffd0  CALL EAX
0051b851  d9442410  FLD float ptr [ESP + 0x10]
0051b855  8b16  MOV EDX,dword ptr [ESI]
0051b857  8b82b0000000  MOV EAX,dword ptr [EDX + 0xb0]
0051b85d  83ec08  SUB ESP,0x8
0051b860  80be9102000000  CMP byte ptr [ESI + 0x291],0x0
0051b867  d95c2404  FSTP float ptr [ESP + 0x4]
0051b86b  d9442414  FLD float ptr [ESP + 0x14]
0051b86f  8bce  MOV ECX,ESI
0051b871  d91c24  FSTP float ptr [ESP]
0051b874  7427  JZ 0x0051b89d
0051b876  ffd0  CALL EAX
0051b878  8b5604  MOV EDX,dword ptr [ESI + 0x4]
0051b87b  8d4e04  LEA ECX,[ESI + 0x4]
0051b87e  89865c020000  MOV dword ptr [ESI + 0x25c],EAX
0051b884  8b8290000000  MOV EAX,dword ptr [EDX + 0x90]
0051b88a  c78658020000ffffffff  MOV dword ptr [ESI + 0x258],0xffffffff
0051b894  ffd0  CALL EAX
0051b896  5f  POP EDI
0051b897  b001  MOV AL,0x1
0051b899  5e  POP ESI
0051b89a  c21000  RET 0x10
0051b89d  c7865c020000ffffffff  MOV dword ptr [ESI + 0x25c],0xffffffff
0051b8a7  ffd0  CALL EAX
0051b8a9  8b5604  MOV EDX,dword ptr [ESI + 0x4]
0051b8ac  8d4e04  LEA ECX,[ESI + 0x4]
0051b8af  898658020000  MOV dword ptr [ESI + 0x258],EAX
0051b8b5  8b8290000000  MOV EAX,dword ptr [EDX + 0x90]
0051b8bb  ffd0  CALL EAX
0051b8bd  5f  POP EDI
0051b8be  b001  MOV AL,0x1
0051b8c0  5e  POP ESI
0051b8c1  c21000  RET 0x10
