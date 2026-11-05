# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete actual owned Listing
; Analyst name: ConsoleCommandManager_ExecuteText
; Owned ranges: [[0058ab80, 0058ac26]]

0058ab80  51  PUSH ECX
0058ab81  53  PUSH EBX
0058ab82  56  PUSH ESI
0058ab83  57  PUSH EDI
0058ab84  6a00  PUSH 0x0
0058ab86  6a00  PUSH 0x0
0058ab88  6a00  PUSH 0x0
0058ab8a  6a00  PUSH 0x0
0058ab8c  6844d0fc00  PUSH 0xfcd044
0058ab91  68e0000000  PUSH 0xe0
0058ab96  8bf9  MOV EDI,ECX
0058ab98  e86399f5ff  CALL 0x004e4500
0058ab9d  83c418  ADD ESP,0x18
0058aba0  85c0  TEST EAX,EAX
0058aba2  740d  JZ 0x0058abb1
0058aba4  6aff  PUSH -0x1
0058aba6  8bc8  MOV ECX,EAX
0058aba8  e8d3f8ffff  CALL 0x0058a480
0058abad  8bf0  MOV ESI,EAX
0058abaf  eb02  JMP 0x0058abb3
0058abb1  33f6  XOR ESI,ESI
0058abb3  85f6  TEST ESI,ESI
0058abb5  7467  JZ 0x0058ac1e
0058abb7  8b06  MOV EAX,dword ptr [ESI]
0058abb9  8b5004  MOV EDX,dword ptr [EAX + 0x4]
0058abbc  8bce  MOV ECX,ESI
0058abbe  ffd2  CALL EDX
0058abc0  8b5c2414  MOV EBX,dword ptr [ESP + 0x14]
0058abc4  56  PUSH ESI
0058abc5  53  PUSH EBX
0058abc6  8bcf  MOV ECX,EDI
0058abc8  e8c3faffff  CALL 0x0058a690
0058abcd  837e04ff  CMP dword ptr [ESI + 0x4],-0x1
0058abd1  7442  JZ 0x0058ac15
0058abd3  53  PUSH EBX
0058abd4  8d442418  LEA EAX,[ESP + 0x18]
0058abd8  50  PUSH EAX
0058abd9  8d4c2414  LEA ECX,[ESP + 0x14]
0058abdd  51  PUSH ECX
0058abde  c74424200e000000  MOV dword ptr [ESP + 0x20],0xe
0058abe6  c744241804000000  MOV dword ptr [ESP + 0x18],0x4
0058abee  e88d7e3000  CALL 0x00892a80
0058abf3  83c40c  ADD ESP,0xc
0058abf6  56  PUSH ESI
0058abf7  8bcf  MOV ECX,EDI
0058abf9  e8a2f6ffff  CALL 0x0058a2a0
0058abfe  83f801  CMP EAX,0x1
0058ac01  7512  JNZ 0x0058ac15
0058ac03  8b16  MOV EDX,dword ptr [ESI]
0058ac05  8b4208  MOV EAX,dword ptr [EDX + 0x8]
0058ac08  8bce  MOV ECX,ESI
0058ac0a  ffd0  CALL EAX
0058ac0c  5f  POP EDI
0058ac0d  5e  POP ESI
0058ac0e  b001  MOV AL,0x1
0058ac10  5b  POP EBX
0058ac11  59  POP ECX
0058ac12  c20400  RET 0x4
0058ac15  8b16  MOV EDX,dword ptr [ESI]
0058ac17  8b4208  MOV EAX,dword ptr [EDX + 0x8]
0058ac1a  8bce  MOV ECX,ESI
0058ac1c  ffd0  CALL EAX
0058ac1e  5f  POP EDI
0058ac1f  5e  POP ESI
0058ac20  32c0  XOR AL,AL
0058ac22  5b  POP EBX
0058ac23  59  POP ECX
0058ac24  c20400  RET 0x4
