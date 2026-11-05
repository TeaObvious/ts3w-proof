# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; actual Ghidra Listing and preserved non-owned envelope gaps.
Owned ranges: [[004a7860, 004a78b6]]
Signature: size_t PackedFile_ReadBytes(void * this, void * param_1, size_t param_2)

004a7860  56  PUSH ESI
004a7861  8bf1  MOV ESI,ECX
004a7863  8b9664020000  MOV EDX,dword ptr [ESI + 0x264]
004a7869  85d2  TEST EDX,EDX
004a786b  743c  JZ 0x004a78a9
004a786d  8b8e6c020000  MOV ECX,dword ptr [ESI + 0x26c]
004a7873  8b8668020000  MOV EAX,dword ptr [ESI + 0x268]
004a7879  53  PUSH EBX
004a787a  57  PUSH EDI
004a787b  8b7c2414  MOV EDI,dword ptr [ESP + 0x14]
004a787f  8d1c39  LEA EBX,[ECX + EDI*0x1]
004a7882  3bd8  CMP EBX,EAX
004a7884  7604  JBE 0x004a788a
004a7886  2bc1  SUB EAX,ECX
004a7888  8bf8  MOV EDI,EAX
004a788a  8b442410  MOV EAX,dword ptr [ESP + 0x10]
004a788e  57  PUSH EDI
004a788f  03ca  ADD ECX,EDX
004a7891  51  PUSH ECX
004a7892  50  PUSH EAX
004a7893  e8ee79ad00  CALL 0x00f7f286
004a7898  83c40c  ADD ESP,0xc
004a789b  01be6c020000  ADD dword ptr [ESI + 0x26c],EDI
004a78a1  8bc7  MOV EAX,EDI
004a78a3  5f  POP EDI
004a78a4  5b  POP EBX
004a78a5  5e  POP ESI
004a78a6  c20800  RET 0x8
004a78a9  8b8e60020000  MOV ECX,dword ptr [ESI + 0x260]
004a78af  8b11  MOV EDX,dword ptr [ECX]
004a78b1  8b5230  MOV EDX,dword ptr [EDX + 0x30]
004a78b4  5e  POP ESI
004a78b5  ffe2  JMP EDX
