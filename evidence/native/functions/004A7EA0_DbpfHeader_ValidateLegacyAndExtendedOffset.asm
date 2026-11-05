# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; actual Ghidra Listing and preserved non-owned envelope gaps.
Owned ranges: [[004a7ea0, 004a7f49]]
Signature: undefined1 DbpfHeader_ValidateLegacyAndExtendedOffset(void * this, int * param_1)

004a7ea0  53  PUSH EBX
004a7ea1  56  PUSH ESI
004a7ea2  8bf1  MOV ESI,ECX
004a7ea4  57  PUSH EDI
004a7ea5  8dbea0020000  LEA EDI,[ESI + 0x2a0]
004a7eab  680835fb00  PUSH 0xfb3508
004a7eb0  8bcf  MOV ECX,EDI
004a7eb2  32db  XOR BL,BL
004a7eb4  e8479d0300  CALL 0x004e1c00
004a7eb9  83be6402000000  CMP dword ptr [ESI + 0x264],0x0
004a7ec0  7408  JZ 0x004a7eca
004a7ec2  8bb668020000  MOV ESI,dword ptr [ESI + 0x268]
004a7ec8  eb0f  JMP 0x004a7ed9
004a7eca  8b8e60020000  MOV ECX,dword ptr [ESI + 0x260]
004a7ed0  8b01  MOV EAX,dword ptr [ECX]
004a7ed2  8b501c  MOV EDX,dword ptr [EAX + 0x1c]
004a7ed5  ffd2  CALL EDX
004a7ed7  8bf0  MOV ESI,EAX
004a7ed9  8bcf  MOV ECX,EDI
004a7edb  e8e09d0300  CALL 0x004e1cc0
004a7ee0  8b442410  MOV EAX,dword ptr [ESP + 0x10]
004a7ee4  813844425046  CMP dword ptr [EAX],0x46504244
004a7eea  8bce  MOV ECX,ESI
004a7eec  7527  JNZ 0x004a7f15
004a7eee  83780402  CMP dword ptr [EAX + 0x4],0x2
004a7ef2  7721  JA 0x004a7f15
004a7ef4  817824ffffff07  CMP dword ptr [EAX + 0x24],0x7ffffff
004a7efb  7318  JNC 0x004a7f15
004a7efd  8b5040  MOV EDX,dword ptr [EAX + 0x40]
004a7f00  3bd1  CMP EDX,ECX
004a7f02  7311  JNC 0x004a7f15
004a7f04  8b702c  MOV ESI,dword ptr [EAX + 0x2c]
004a7f07  03f2  ADD ESI,EDX
004a7f09  3bf1  CMP ESI,ECX
004a7f0b  7708  JA 0x004a7f15
004a7f0d  83783c00  CMP dword ptr [EAX + 0x3c],0x0
004a7f11  7402  JZ 0x004a7f15
004a7f13  b301  MOV BL,0x1
004a7f15  8b4840  MOV ECX,dword ptr [EAX + 0x40]
004a7f18  8b7044  MOV ESI,dword ptr [EAX + 0x44]
004a7f1b  8bd1  MOV EDX,ECX
004a7f1d  0bd6  OR EDX,ESI
004a7f1f  7421  JZ 0x004a7f42
004a7f21  8b4028  MOV EAX,dword ptr [EAX + 0x28]
004a7f24  85c0  TEST EAX,EAX
004a7f26  741a  JZ 0x004a7f42
004a7f28  33d2  XOR EDX,EDX
004a7f2a  3bc8  CMP ECX,EAX
004a7f2c  750c  JNZ 0x004a7f3a
004a7f2e  3bf2  CMP ESI,EDX
004a7f30  7508  JNZ 0x004a7f3a
004a7f32  5f  POP EDI
004a7f33  5e  POP ESI
004a7f34  b001  MOV AL,0x1
004a7f36  5b  POP EBX
004a7f37  c20400  RET 0x4
004a7f3a  5f  POP EDI
004a7f3b  5e  POP ESI
004a7f3c  32c0  XOR AL,AL
004a7f3e  5b  POP EBX
004a7f3f  c20400  RET 0x4
004a7f42  5f  POP EDI
004a7f43  5e  POP ESI
004a7f44  8ac3  MOV AL,BL
004a7f46  5b  POP EBX
004a7f47  c20400  RET 0x4
