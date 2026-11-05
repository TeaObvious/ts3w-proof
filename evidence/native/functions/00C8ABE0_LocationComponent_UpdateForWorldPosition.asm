# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void LocationComponent_UpdateForWorldPosition(void * this, float * worldPosition)
Owned ranges: [[00c8abe0, 00c8acf4]]

00c8abe0  83ec08  SUB ESP,0x8
00c8abe3  53  PUSH EBX
00c8abe4  56  PUSH ESI
00c8abe5  8bf1  MOV ESI,ECX
00c8abe7  8b4604  MOV EAX,dword ptr [ESI + 0x4]
00c8abea  8b4808  MOV ECX,dword ptr [EAX + 0x8]
00c8abed  8b400c  MOV EAX,dword ptr [EAX + 0xc]
00c8abf0  50  PUSH EAX
00c8abf1  33db  XOR EBX,EBX
00c8abf3  51  PUSH ECX
00c8abf4  895c2410  MOV dword ptr [ESP + 0x10],EBX
00c8abf8  895c2414  MOV dword ptr [ESP + 0x14],EBX
00c8abfc  e89f2bb0ff  CALL 0x0078d7a0
00c8ac01  83c408  ADD ESP,0x8
00c8ac04  83f8ff  CMP EAX,-0x1
00c8ac07  0f84e0000000  JZ 0x00c8aced
00c8ac0d  57  PUSH EDI
00c8ac0e  8b3dc4db1e01  MOV EDI,dword ptr [0x011edbc4]
00c8ac14  3bfb  CMP EDI,EBX
00c8ac16  0f84d0000000  JZ 0x00c8acec
00c8ac1c  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
00c8ac1f  3bcb  CMP ECX,EBX
00c8ac21  0f84c5000000  JZ 0x00c8acec
00c8ac27  a158a11e01  MOV EAX,[0x011ea158]
00c8ac2c  50  PUSH EAX
00c8ac2d  e82e96caff  CALL 0x00934260
00c8ac32  3bc3  CMP EAX,EBX
00c8ac34  0f84b2000000  JZ 0x00c8acec
00c8ac3a  8b542418  MOV EDX,dword ptr [ESP + 0x18]
00c8ac3e  8b5e08  MOV EBX,dword ptr [ESI + 0x8]
00c8ac41  55  PUSH EBP
00c8ac42  8b6e0c  MOV EBP,dword ptr [ESI + 0xc]
00c8ac45  8d4c2410  LEA ECX,[ESP + 0x10]
00c8ac49  51  PUSH ECX
00c8ac4a  50  PUSH EAX
00c8ac4b  57  PUSH EDI
00c8ac4c  52  PUSH EDX
00c8ac4d  8bce  MOV ECX,ESI
00c8ac4f  e8fcf8ffff  CALL 0x00c8a550
00c8ac54  84c0  TEST AL,AL
00c8ac56  7512  JNZ 0x00c8ac6a
00c8ac58  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
00c8ac5c  8d442410  LEA EAX,[ESP + 0x10]
00c8ac60  50  PUSH EAX
00c8ac61  57  PUSH EDI
00c8ac62  51  PUSH ECX
00c8ac63  8bce  MOV ECX,ESI
00c8ac65  e8a6fbffff  CALL 0x00c8a810
00c8ac6a  3b5e08  CMP EBX,dword ptr [ESI + 0x8]
00c8ac6d  7505  JNZ 0x00c8ac74
00c8ac6f  3b6e0c  CMP EBP,dword ptr [ESI + 0xc]
00c8ac72  7456  JZ 0x00c8acca
00c8ac74  8bd3  MOV EDX,EBX
00c8ac76  0bd5  OR EDX,EBP
00c8ac78  7450  JZ 0x00c8acca
00c8ac7a  6a00  PUSH 0x0
00c8ac7c  55  PUSH EBP
00c8ac7d  53  PUSH EBX
00c8ac7e  8bcf  MOV ECX,EDI
00c8ac80  e88b7bfdff  CALL 0x00c62810
00c8ac85  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00c8ac88  8bd8  MOV EBX,EAX
00c8ac8a  8b460c  MOV EAX,dword ptr [ESI + 0xc]
00c8ac8d  6a00  PUSH 0x0
00c8ac8f  50  PUSH EAX
00c8ac90  51  PUSH ECX
00c8ac91  8bcf  MOV ECX,EDI
00c8ac93  e8787bfdff  CALL 0x00c62810
00c8ac98  85db  TEST EBX,EBX
00c8ac9a  8bf8  MOV EDI,EAX
00c8ac9c  7430  JZ 0x00c8acce
00c8ac9e  8bcb  MOV ECX,EBX
00c8aca0  e87b880b00  CALL 0x00d43520
00c8aca5  84c0  TEST AL,AL
00c8aca7  7525  JNZ 0x00c8acce
00c8aca9  85ff  TEST EDI,EDI
00c8acab  740b  JZ 0x00c8acb8
00c8acad  8bcf  MOV ECX,EDI
00c8acaf  e86c880b00  CALL 0x00d43520
00c8acb4  84c0  TEST AL,AL
00c8acb6  7416  JZ 0x00c8acce
00c8acb8  8b5604  MOV EDX,dword ptr [ESI + 0x4]
00c8acbb  6a00  PUSH 0x0
00c8acbd  52  PUSH EDX
00c8acbe  6a0b  PUSH 0xb
00c8acc0  e8fba9caff  CALL 0x009356c0
00c8acc5  83c40c  ADD ESP,0xc
00c8acc8  eb04  JMP 0x00c8acce
00c8acca  8b7c2414  MOV EDI,dword ptr [ESP + 0x14]
00c8acce  8b5c2410  MOV EBX,dword ptr [ESP + 0x10]
00c8acd2  f6c33c  TEST BL,0x3c
00c8acd5  5d  POP EBP
00c8acd6  7407  JZ 0x00c8acdf
00c8acd8  8bce  MOV ECX,ESI
00c8acda  e821f5ffff  CALL 0x00c8a200
00c8acdf  85db  TEST EBX,EBX
00c8ace1  7409  JZ 0x00c8acec
00c8ace3  57  PUSH EDI
00c8ace4  53  PUSH EBX
00c8ace5  8bce  MOV ECX,ESI
00c8ace7  e834edffff  CALL 0x00c89a20
00c8acec  5f  POP EDI
00c8aced  5e  POP ESI
00c8acee  5b  POP EBX
00c8acef  83c408  ADD ESP,0x8
00c8acf2  c20400  RET 0x4
