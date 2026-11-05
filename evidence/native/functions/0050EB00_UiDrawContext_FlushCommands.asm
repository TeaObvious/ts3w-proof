# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; full owned Ghidra Listing.
Actual annotated Ghidra C: 0050EB00_UiDrawContext_FlushCommands.c
Owned ranges: [[0050eb00, 0050ebb9]]

0050eb00  55  PUSH EBP
0050eb01  56  PUSH ESI
0050eb02  8bf1  MOV ESI,ECX
0050eb04  8d4e60  LEA ECX,[ESI + 0x60]
0050eb07  e86472ffff  CALL 0x00505d70
0050eb0c  8be8  MOV EBP,EAX
0050eb0e  85ed  TEST EBP,EBP
0050eb10  0f849a000000  JZ 0x0050ebb0
0050eb16  80be9400000000  CMP byte ptr [ESI + 0x94],0x0
0050eb1d  7463  JZ 0x0050eb82
0050eb1f  8b4500  MOV EAX,dword ptr [EBP]
0050eb22  8b10  MOV EDX,dword ptr [EAX]
0050eb24  8bcd  MOV ECX,EBP
0050eb26  ffd2  CALL EDX
0050eb28  8b4e54  MOV ECX,dword ptr [ESI + 0x54]
0050eb2b  394e40  CMP dword ptr [ESI + 0x40],ECX
0050eb2e  7415  JZ 0x0050eb45
0050eb30  85c9  TEST ECX,ECX
0050eb32  7407  JZ 0x0050eb3b
0050eb34  8b01  MOV EAX,dword ptr [ECX]
0050eb36  8b5018  MOV EDX,dword ptr [EAX + 0x18]
0050eb39  ffd2  CALL EDX
0050eb3b  8b4e40  MOV ECX,dword ptr [ESI + 0x40]
0050eb3e  8b01  MOV EAX,dword ptr [ECX]
0050eb40  8b5010  MOV EDX,dword ptr [EAX + 0x10]
0050eb43  ffd2  CALL EDX
0050eb45  8b4e40  MOV ECX,dword ptr [ESI + 0x40]
0050eb48  8b01  MOV EAX,dword ptr [ECX]
0050eb4a  8b5014  MOV EDX,dword ptr [EAX + 0x14]
0050eb4d  55  PUSH EBP
0050eb4e  56  PUSH ESI
0050eb4f  ffd2  CALL EDX
0050eb51  8b4e40  MOV ECX,dword ptr [ESI + 0x40]
0050eb54  3b4e54  CMP ECX,dword ptr [ESI + 0x54]
0050eb57  7415  JZ 0x0050eb6e
0050eb59  8b01  MOV EAX,dword ptr [ECX]
0050eb5b  8b5018  MOV EDX,dword ptr [EAX + 0x18]
0050eb5e  ffd2  CALL EDX
0050eb60  8b4e54  MOV ECX,dword ptr [ESI + 0x54]
0050eb63  85c9  TEST ECX,ECX
0050eb65  7407  JZ 0x0050eb6e
0050eb67  8b01  MOV EAX,dword ptr [ECX]
0050eb69  8b5010  MOV EDX,dword ptr [EAX + 0x10]
0050eb6c  ffd2  CALL EDX
0050eb6e  8b4500  MOV EAX,dword ptr [EBP]
0050eb71  8b5004  MOV EDX,dword ptr [EAX + 0x4]
0050eb74  8bcd  MOV ECX,EBP
0050eb76  ffd2  CALL EDX
0050eb78  c6869400000000  MOV byte ptr [ESI + 0x94],0x0
0050eb7f  5e  POP ESI
0050eb80  5d  POP EBP
0050eb81  c3  RET
0050eb82  57  PUSH EDI
0050eb83  e8d8b5ffff  CALL 0x0050a160
0050eb88  8bf8  MOV EDI,EAX
0050eb8a  8b4500  MOV EAX,dword ptr [EBP]
0050eb8d  8b10  MOV EDX,dword ptr [EAX]
0050eb8f  8bcd  MOV ECX,EBP
0050eb91  ffd2  CALL EDX
0050eb93  896f08  MOV dword ptr [EDI + 0x8],EBP
0050eb96  8b4640  MOV EAX,dword ptr [ESI + 0x40]
0050eb99  89470c  MOV dword ptr [EDI + 0xc],EAX
0050eb9c  8b4e5c  MOV ECX,dword ptr [ESI + 0x5c]
0050eb9f  8d4658  LEA EAX,[ESI + 0x58]
0050eba2  894f04  MOV dword ptr [EDI + 0x4],ECX
0050eba5  8907  MOV dword ptr [EDI],EAX
0050eba7  897804  MOV dword ptr [EAX + 0x4],EDI
0050ebaa  8b5704  MOV EDX,dword ptr [EDI + 0x4]
0050ebad  893a  MOV dword ptr [EDX],EDI
0050ebaf  5f  POP EDI
0050ebb0  c6869400000000  MOV byte ptr [ESI + 0x94],0x0
0050ebb7  5e  POP ESI
0050ebb8  5d  POP EBP
0050ebb9  c3  RET
