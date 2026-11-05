# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Actual Ghidra function: SceneAnimation_BindSource
Paired annotated actual pseudocode: 006F5B00_SceneAnimation_BindSource.c
Owned ranges: [[006f5b00, 006f5b8f]]

GHIDRA LISTING (original bytes)
006f5b00  53  PUSH EBX
006f5b01  56  PUSH ESI
006f5b02  57  PUSH EDI
006f5b03  8b7c2410  MOV EDI,dword ptr [ESP + 0x10]
006f5b07  85ff  TEST EDI,EDI
006f5b09  8bd9  MOV EBX,ECX
006f5b0b  745a  JZ 0x006f5b67
006f5b0d  8bb398020000  MOV ESI,dword ptr [EBX + 0x298]
006f5b13  85f6  TEST ESI,ESI
006f5b15  7524  JNZ 0x006f5b3b
006f5b17  56  PUSH ESI
006f5b18  56  PUSH ESI
006f5b19  56  PUSH ESI
006f5b1a  56  PUSH ESI
006f5b1b  68f4a8ff00  PUSH 0xffa8f4
006f5b20  6a50  PUSH 0x50
006f5b22  e8d9e9deff  CALL 0x004e4500
006f5b27  83c418  ADD ESP,0x18
006f5b2a  85c0  TEST EAX,EAX
006f5b2c  740b  JZ 0x006f5b39
006f5b2e  8bc8  MOV ECX,EAX
006f5b30  e8cbe6e7ff  CALL 0x00574200
006f5b35  8bf0  MOV ESI,EAX
006f5b37  eb02  JMP 0x006f5b3b
006f5b39  33f6  XOR ESI,ESI
006f5b3b  51  PUSH ECX
006f5b3c  8bc4  MOV EAX,ESP
006f5b3e  8938  MOV dword ptr [EAX],EDI
006f5b40  8b07  MOV EAX,dword ptr [EDI]
006f5b42  8b10  MOV EDX,dword ptr [EAX]
006f5b44  8bcf  MOV ECX,EDI
006f5b46  ffd2  CALL EDX
006f5b48  8b06  MOV EAX,dword ptr [ESI]
006f5b4a  8b10  MOV EDX,dword ptr [EAX]
006f5b4c  8bce  MOV ECX,ESI
006f5b4e  ffd2  CALL EDX
006f5b50  3bb398020000  CMP ESI,dword ptr [EBX + 0x298]
006f5b56  7408  JZ 0x006f5b60
006f5b58  56  PUSH ESI
006f5b59  8bcb  MOV ECX,EBX
006f5b5b  e810f4ffff  CALL 0x006f4f70
006f5b60  8bce  MOV ECX,ESI
006f5b62  e8b9d8e7ff  CALL 0x00573420
006f5b67  57  PUSH EDI
006f5b68  8d8b10020000  LEA ECX,[EBX + 0x210]
006f5b6e  e8fd59feff  CALL 0x006db570
006f5b73  85ff  TEST EDI,EDI
006f5b75  7413  JZ 0x006f5b8a
006f5b77  68e4a8ff00  PUSH 0xffa8e4
006f5b7c  8d4f28  LEA ECX,[EDI + 0x28]
006f5b7f  e8bc04e8ff  CALL 0x00576040
006f5b84  8983bc020000  MOV dword ptr [EBX + 0x2bc],EAX
006f5b8a  5f  POP EDI
006f5b8b  5e  POP ESI
006f5b8c  5b  POP EBX
006f5b8d  c20400  RET 0x4
Owned instructions=56 owned bytes=144 envelope bytes=144
