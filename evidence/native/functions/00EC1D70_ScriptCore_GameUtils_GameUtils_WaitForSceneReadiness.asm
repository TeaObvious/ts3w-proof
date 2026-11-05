# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

00ec1d70  83ec20  SUB ESP,0x20
00ec1d73  53  PUSH EBX
00ec1d74  55  PUSH EBP
00ec1d75  56  PUSH ESI
00ec1d76  57  PUSH EDI
00ec1d77  e814768aff  CALL 0x00769390
00ec1d7c  8bf0  MOV ESI,EAX
00ec1d7e  8b06  MOV EAX,dword ptr [ESI]
00ec1d80  8b9018010000  MOV EDX,dword ptr [EAX + 0x118]
00ec1d86  8bce  MOV ECX,ESI
00ec1d88  ffd2  CALL EDX
00ec1d8a  6a00  PUSH 0x0
00ec1d8c  6a00  PUSH 0x0
00ec1d8e  6a00  PUSH 0x0
00ec1d90  6a00  PUSH 0x0
00ec1d92  6874320f01  PUSH 0x10f3274
00ec1d97  6a28  PUSH 0x28
00ec1d99  8be8  MOV EBP,EAX
00ec1d9b  8bda  MOV EBX,EDX
00ec1d9d  e85e2762ff  CALL 0x004e4500
00ec1da2  83c418  ADD ESP,0x18
00ec1da5  85c0  TEST EAX,EAX
00ec1da7  7472  JZ 0x00ec1e1b
00ec1da9  8b4c2434  MOV ECX,dword ptr [ESP + 0x34]
00ec1dad  51  PUSH ECX
00ec1dae  53  PUSH EBX
00ec1daf  55  PUSH EBP
00ec1db0  8bc8  MOV ECX,EAX
00ec1db2  e869fbffff  CALL 0x00ec1920
00ec1db7  8bf8  MOV EDI,EAX
00ec1db9  85ff  TEST EDI,EDI
00ec1dbb  745e  JZ 0x00ec1e1b
00ec1dbd  8b17  MOV EDX,dword ptr [EDI]
00ec1dbf  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00ec1dc2  8bcf  MOV ECX,EDI
00ec1dc4  ffd0  CALL EAX
00ec1dc6  e825a758ff  CALL 0x0044c4f0
00ec1dcb  85c0  TEST EAX,EAX
00ec1dcd  7418  JZ 0x00ec1de7
00ec1dcf  8b10  MOV EDX,dword ptr [EAX]
00ec1dd1  8b521c  MOV EDX,dword ptr [EDX + 0x1c]
00ec1dd4  8d4f0c  LEA ECX,[EDI + 0xc]
00ec1dd7  51  PUSH ECX
00ec1dd8  6a00  PUSH 0x0
00ec1dda  8d4f10  LEA ECX,[EDI + 0x10]
00ec1ddd  51  PUSH ECX
00ec1dde  6816aa77b5  PUSH 0xb577aa16
00ec1de3  8bc8  MOV ECX,EAX
00ec1de5  ffd2  CALL EDX
00ec1de7  8b4c2438  MOV ECX,dword ptr [ESP + 0x38]
00ec1deb  8b06  MOV EAX,dword ptr [ESI]
00ec1ded  8b9020010000  MOV EDX,dword ptr [EAX + 0x120]
00ec1df3  6a00  PUSH 0x0
00ec1df5  51  PUSH ECX
00ec1df6  6aff  PUSH -0x1
00ec1df8  53  PUSH EBX
00ec1df9  55  PUSH EBP
00ec1dfa  8bce  MOV ECX,ESI
00ec1dfc  ffd2  CALL EDX
00ec1dfe  8b06  MOV EAX,dword ptr [ESI]
00ec1e00  8b901c010000  MOV EDX,dword ptr [EAX + 0x11c]
00ec1e06  8bce  MOV ECX,ESI
00ec1e08  ffd2  CALL EDX
00ec1e0a  8b07  MOV EAX,dword ptr [EDI]
00ec1e0c  8b5008  MOV EDX,dword ptr [EAX + 0x8]
00ec1e0f  8bcf  MOV ECX,EDI
00ec1e11  ffd2  CALL EDX
00ec1e13  5f  POP EDI
00ec1e14  5e  POP ESI
00ec1e15  5d  POP EBP
00ec1e16  5b  POP EBX
00ec1e17  83c420  ADD ESP,0x20
00ec1e1a  c3  RET
00ec1e1b  8b542438  MOV EDX,dword ptr [ESP + 0x38]
00ec1e1f  6a00  PUSH 0x0
00ec1e21  8d4c2414  LEA ECX,[ESP + 0x14]
00ec1e25  51  PUSH ECX
00ec1e26  53  PUSH EBX
00ec1e27  bff4a6fb00  MOV EDI,0xfba6f4
00ec1e2c  897c241c  MOV dword ptr [ESP + 0x1c],EDI
00ec1e30  c644242c00  MOV byte ptr [ESP + 0x2c],0x0
00ec1e35  66c74424260100  MOV word ptr [ESP + 0x26],0x1
00ec1e3c  66c74424240000  MOV word ptr [ESP + 0x24],0x0
00ec1e43  8b06  MOV EAX,dword ptr [ESI]
00ec1e45  8b8030010000  MOV EAX,dword ptr [EAX + 0x130]
00ec1e4b  55  PUSH EBP
00ec1e4c  52  PUSH EDX
00ec1e4d  8bce  MOV ECX,ESI
00ec1e4f  ffd0  CALL EAX
00ec1e51  f644241804  TEST byte ptr [ESP + 0x18],0x4
00ec1e56  897c2410  MOV dword ptr [ESP + 0x10],EDI
00ec1e5a  740b  JZ 0x00ec1e67
00ec1e5c  6a00  PUSH 0x0
00ec1e5e  8d4c2414  LEA ECX,[ESP + 0x14]
00ec1e62  e8f93863ff  CALL 0x004f5760
00ec1e67  5f  POP EDI
00ec1e68  5e  POP ESI
00ec1e69  5d  POP EBP
00ec1e6a  5b  POP EBX
00ec1e6b  83c420  ADD ESP,0x20
00ec1e6e  c3  RET
