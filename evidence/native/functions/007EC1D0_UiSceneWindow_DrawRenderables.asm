# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope, nonowned alignment explicit.
Actual annotated Ghidra pseudocode: 007EC1D0_UiSceneWindow_DrawRenderables.c
Owned ranges: [[007ec1d0, 007ec27d]]

007ec1d0  83ec08  SUB ESP,0x8
007ec1d3  53  PUSH EBX
007ec1d4  56  PUSH ESI
007ec1d5  57  PUSH EDI
007ec1d6  6a00  PUSH 0x0
007ec1d8  6a00  PUSH 0x0
007ec1da  8bf9  MOV EDI,ECX
007ec1dc  f30f104748  MOVSS XMM0,dword ptr [EDI + 0x48]
007ec1e1  f30f5c4740  SUBSS XMM0,dword ptr [EDI + 0x40]
007ec1e6  6a00  PUSH 0x0
007ec1e8  6a00  PUSH 0x0
007ec1ea  f30f1144241c  MOVSS dword ptr [ESP + 0x1c],XMM0
007ec1f0  f30f10474c  MOVSS XMM0,dword ptr [EDI + 0x4c]
007ec1f5  f30f5c4744  SUBSS XMM0,dword ptr [EDI + 0x44]
007ec1fa  6860e40101  PUSH 0x101e460
007ec1ff  6a14  PUSH 0x14
007ec201  f30f11442428  MOVSS dword ptr [ESP + 0x28],XMM0
007ec207  e8f482cfff  CALL 0x004e4500
007ec20c  8b5c2430  MOV EBX,dword ptr [ESP + 0x30]
007ec210  8bf0  MOV ESI,EAX
007ec212  83c418  ADD ESP,0x18
007ec215  85f6  TEST ESI,ESI
007ec217  7449  JZ 0x007ec262
007ec219  8bbf70020000  MOV EDI,dword ptr [EDI + 0x270]
007ec21f  c7060058fe00  MOV dword ptr [ESI],0xfe5800
007ec225  33c0  XOR EAX,EAX
007ec227  8d4e04  LEA ECX,[ESI + 0x4]
007ec22a  8701  XCHG dword ptr [ECX],EAX
007ec22c  85ff  TEST EDI,EDI
007ec22e  c70670e10101  MOV dword ptr [ESI],0x101e170
007ec234  897e08  MOV dword ptr [ESI + 0x8],EDI
007ec237  740b  JZ 0x007ec244
007ec239  8b5708  MOV EDX,dword ptr [EDI + 0x8]
007ec23c  8b4204  MOV EAX,dword ptr [EDX + 0x4]
007ec23f  8d4f08  LEA ECX,[EDI + 0x8]
007ec242  ffd0  CALL EAX
007ec244  f30f1044240c  MOVSS XMM0,dword ptr [ESP + 0xc]
007ec24a  f30f11460c  MOVSS dword ptr [ESI + 0xc],XMM0
007ec24f  f30f10442410  MOVSS XMM0,dword ptr [ESP + 0x10]
007ec255  56  PUSH ESI
007ec256  8bcb  MOV ECX,EBX
007ec258  f30f114610  MOVSS dword ptr [ESI + 0x10],XMM0
007ec25d  e89e29d2ff  CALL 0x0050ec00
007ec262  e8f9dcffff  CALL 0x007e9f60
007ec267  85c0  TEST EAX,EAX
007ec269  7408  JZ 0x007ec273
007ec26b  50  PUSH EAX
007ec26c  8bcb  MOV ECX,EBX
007ec26e  e88d29d2ff  CALL 0x0050ec00
007ec273  5f  POP EDI
007ec274  5e  POP ESI
007ec275  b001  MOV AL,0x1
007ec277  5b  POP EBX
007ec278  83c408  ADD ESP,0x8
007ec27b  c20400  RET 0x4
