# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 0077EBB0_UiHost_NotifyWindowShutdown.c
Owned ranges: [[0077ebb0, 0077ec81]]

0077ebb0  83ec44  SUB ESP,0x44
0077ebb3  56  PUSH ESI
0077ebb4  57  PUSH EDI
0077ebb5  8bf9  MOV EDI,ECX
0077ebb7  e8d4a7feff  CALL 0x00769390
0077ebbc  8bf0  MOV ESI,EAX
0077ebbe  85f6  TEST ESI,ESI
0077ebc0  0f84b4000000  JZ 0x0077ec7a
0077ebc6  837f3400  CMP dword ptr [EDI + 0x34],0x0
0077ebca  0f84aa000000  JZ 0x0077ec7a
0077ebd0  8b06  MOV EAX,dword ptr [ESI]
0077ebd2  8b5034  MOV EDX,dword ptr [EAX + 0x34]
0077ebd5  8bce  MOV ECX,ESI
0077ebd7  ffd2  CALL EDX
0077ebd9  84c0  TEST AL,AL
0077ebdb  0f8599000000  JNZ 0x0077ec7a
0077ebe1  8b4c2450  MOV ECX,dword ptr [ESP + 0x50]
0077ebe5  8b06  MOV EAX,dword ptr [ESI]
0077ebe7  8b90c8000000  MOV EDX,dword ptr [EAX + 0xc8]
0077ebed  6a30  PUSH 0x30
0077ebef  51  PUSH ECX
0077ebf0  8bce  MOV ECX,ESI
0077ebf2  ffd2  CALL EDX
0077ebf4  89442408  MOV dword ptr [ESP + 0x8],EAX
0077ebf8  8d442408  LEA EAX,[ESP + 0x8]
0077ebfc  50  PUSH EAX
0077ebfd  8d4c2410  LEA ECX,[ESP + 0x10]
0077ec01  c74424106c880001  MOV dword ptr [ESP + 0x10],0x100886c
0077ec09  66c744241a0a00  MOV word ptr [ESP + 0x1a],0xa
0077ec10  66c74424180200  MOV word ptr [ESP + 0x18],0x2
0077ec17  e80473d7ff  CALL 0x004f5f20
0077ec1c  8b4f34  MOV ECX,dword ptr [EDI + 0x34]
0077ec1f  8b16  MOV EDX,dword ptr [ESI]
0077ec21  8b9234010000  MOV EDX,dword ptr [EDX + 0x134]
0077ec27  6a01  PUSH 0x1
0077ec29  8d442410  LEA EAX,[ESP + 0x10]
0077ec2d  50  PUSH EAX
0077ec2e  51  PUSH ECX
0077ec2f  8d442438  LEA EAX,[ESP + 0x38]
0077ec33  50  PUSH EAX
0077ec34  8bce  MOV ECX,ESI
0077ec36  ffd2  CALL EDX
0077ec38  f644243404  TEST byte ptr [ESP + 0x34],0x4
0077ec3d  bff4a6fb00  MOV EDI,0xfba6f4
0077ec42  897c242c  MOV dword ptr [ESP + 0x2c],EDI
0077ec46  740b  JZ 0x0077ec53
0077ec48  6a00  PUSH 0x0
0077ec4a  8d4c2430  LEA ECX,[ESP + 0x30]
0077ec4e  e80d6bd7ff  CALL 0x004f5760
0077ec53  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
0077ec57  8b06  MOV EAX,dword ptr [ESI]
0077ec59  8b90d8000000  MOV EDX,dword ptr [EAX + 0xd8]
0077ec5f  51  PUSH ECX
0077ec60  8bce  MOV ECX,ESI
0077ec62  ffd2  CALL EDX
0077ec64  f644241404  TEST byte ptr [ESP + 0x14],0x4
0077ec69  897c240c  MOV dword ptr [ESP + 0xc],EDI
0077ec6d  740b  JZ 0x0077ec7a
0077ec6f  6a00  PUSH 0x0
0077ec71  8d4c2410  LEA ECX,[ESP + 0x10]
0077ec75  e8e66ad7ff  CALL 0x004f5760
0077ec7a  5f  POP EDI
0077ec7b  5e  POP ESI
0077ec7c  83c444  ADD ESP,0x44
0077ec7f  c20400  RET 0x4
