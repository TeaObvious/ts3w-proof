# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: uint Placement_TransformBoundsCornersToLot(void * param_1, float * param_2, float * param_3, int param_4, int param_5)
Owned ranges: [[00b3df30, 00b3e022]]

00b3df30  83ec2c  SUB ESP,0x2c
00b3df33  56  PUSH ESI
00b3df34  8b742434  MOV ESI,dword ptr [ESP + 0x34]
00b3df38  85f6  TEST ESI,ESI
00b3df3a  7507  JNZ 0x00b3df43
00b3df3c  32c0  XOR AL,AL
00b3df3e  5e  POP ESI
00b3df3f  83c42c  ADD ESP,0x2c
00b3df42  c3  RET
00b3df43  8b442440  MOV EAX,dword ptr [ESP + 0x40]
00b3df47  50  PUSH EAX
00b3df48  e893dffbff  CALL 0x00afbee0
00b3df4d  8b442440  MOV EAX,dword ptr [ESP + 0x40]
00b3df51  d94004  FLD float ptr [EAX + 0x4]
00b3df54  83c404  ADD ESP,0x4
00b3df57  8d4c240c  LEA ECX,[ESP + 0xc]
00b3df5b  51  PUSH ECX
00b3df5c  83ec0c  SUB ESP,0xc
00b3df5f  d95c2408  FSTP float ptr [ESP + 0x8]
00b3df63  d900  FLD float ptr [EAX]
00b3df65  d95c2404  FSTP float ptr [ESP + 0x4]
00b3df69  d91c24  FSTP float ptr [ESP]
00b3df6c  56  PUSH ESI
00b3df6d  e89ec0fcff  CALL 0x00b0a010
00b3df72  8b4c2458  MOV ECX,dword ptr [ESP + 0x58]
00b3df76  8b54244c  MOV EDX,dword ptr [ESP + 0x4c]
00b3df7a  f30f1064243c  MOVSS XMM4,dword ptr [ESP + 0x3c]
00b3df80  f30f106c2438  MOVSS XMM5,dword ptr [ESP + 0x38]
00b3df86  f30f10742430  MOVSS XMM6,dword ptr [ESP + 0x30]
00b3df8c  f30f105c241c  MOVSS XMM3,dword ptr [ESP + 0x1c]
00b3df92  f30f10542418  MOVSS XMM2,dword ptr [ESP + 0x18]
00b3df98  83c414  ADD ESP,0x14
00b3df9b  33c0  XOR EAX,EAX
00b3df9d  8d4900  LEA ECX,[ECX]
00b3dfa0  83f803  CMP EAX,0x3
00b3dfa3  772f  JA 0x00b3dfd4
00b3dfa5  ff248524e0b300  JMP dword ptr [EAX*0x4 + 0xb3e024]
00b3dfac  f30f105a0c  MOVSS XMM3,dword ptr [EDX + 0xc]
00b3dfb1  eb1d  JMP 0x00b3dfd0
00b3dfb3  f30f105208  MOVSS XMM2,dword ptr [EDX + 0x8]
00b3dfb8  f30f105a0c  MOVSS XMM3,dword ptr [EDX + 0xc]
00b3dfbd  eb15  JMP 0x00b3dfd4
00b3dfbf  f30f105208  MOVSS XMM2,dword ptr [EDX + 0x8]
00b3dfc4  f30f105a04  MOVSS XMM3,dword ptr [EDX + 0x4]
00b3dfc9  eb09  JMP 0x00b3dfd4
00b3dfcb  f30f105a04  MOVSS XMM3,dword ptr [EDX + 0x4]
00b3dfd0  f30f1012  MOVSS XMM2,dword ptr [EDX]
00b3dfd4  f30f10442418  MOVSS XMM0,dword ptr [ESP + 0x18]
00b3dfda  f30f104c240c  MOVSS XMM1,dword ptr [ESP + 0xc]
00b3dfe0  f30f107c2410  MOVSS XMM7,dword ptr [ESP + 0x10]
00b3dfe6  f30f59ca  MULSS XMM1,XMM2
00b3dfea  f30f59c3  MULSS XMM0,XMM3
00b3dfee  f30f58c1  ADDSS XMM0,XMM1
00b3dff2  0f28ce  MOVAPS XMM1,XMM6
00b3dff5  f30f59cb  MULSS XMM1,XMM3
00b3dff9  f30f59fa  MULSS XMM7,XMM2
00b3dffd  f30f58cf  ADDSS XMM1,XMM7
00b3e001  f30f58c5  ADDSS XMM0,XMM5
00b3e005  f30f58cc  ADDSS XMM1,XMM4
00b3e009  f30f1104c1  MOVSS dword ptr [ECX + EAX*0x8],XMM0
00b3e00e  f30f114cc104  MOVSS dword ptr [ECX + EAX*0x8 + 0x4],XMM1
00b3e014  83c001  ADD EAX,0x1
00b3e017  83f804  CMP EAX,0x4
00b3e01a  7284  JC 0x00b3dfa0
00b3e01c  b001  MOV AL,0x1
00b3e01e  5e  POP ESI
00b3e01f  83c42c  ADD ESP,0x2c
00b3e022  c3  RET
