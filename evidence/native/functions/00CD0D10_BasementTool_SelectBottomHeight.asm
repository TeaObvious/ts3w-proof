# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: float10 BasementTool_SelectBottomHeight(void * param_1, float * param_2)
Owned ranges: [[00cd0d10, 00cd0de5]]

00cd0d10  83ec10  SUB ESP,0x10
00cd0d13  56  PUSH ESI
00cd0d14  8bf1  MOV ESI,ECX
00cd0d16  8b460c  MOV EAX,dword ptr [ESI + 0xc]
00cd0d19  8b8890020000  MOV ECX,dword ptr [EAX + 0x290]
00cd0d1f  57  PUSH EDI
00cd0d20  8b7c241c  MOV EDI,dword ptr [ESP + 0x1c]
00cd0d24  57  PUSH EDI
00cd0d25  e866b9dbff  CALL 0x00a8c690
00cd0d2a  d954241c  FST float ptr [ESP + 0x1c]
00cd0d2e  8b4660  MOV EAX,dword ptr [ESI + 0x60]
00cd0d31  85c0  TEST EAX,EAX
00cd0d33  7409  JZ 0x00cd0d3e
00cd0d35  83f801  CMP EAX,0x1
00cd0d38  0f85a0000000  JNZ 0x00cd0dde
00cd0d3e  8b460c  MOV EAX,dword ptr [ESI + 0xc]
00cd0d41  ddd8  FSTP ST0
00cd0d43  8b4f08  MOV ECX,dword ptr [EDI + 0x8]
00cd0d46  3b887c010000  CMP ECX,dword ptr [EAX + 0x17c]
00cd0d4c  f30f1044241c  MOVSS XMM0,dword ptr [ESP + 0x1c]
00cd0d52  f30f5c053cf70701  SUBSS XMM0,dword ptr [0x0107f73c]
00cd0d5a  f30f11442414  MOVSS dword ptr [ESP + 0x14],XMM0
00cd0d60  7e78  JLE 0x00cd0dda
00cd0d62  f30f104704  MOVSS XMM0,dword ptr [EDI + 0x4]
00cd0d67  f30f1144240c  MOVSS dword ptr [ESP + 0xc],XMM0
00cd0d6d  d944240c  FLD float ptr [ESP + 0xc]
00cd0d71  db5c2408  FISTP dword ptr [ESP + 0x8]
00cd0d75  f30f1007  MOVSS XMM0,dword ptr [EDI]
00cd0d79  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00cd0d7d  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
00cd0d83  d9442410  FLD float ptr [ESP + 0x10]
00cd0d87  db5c240c  FISTP dword ptr [ESP + 0xc]
00cd0d8b  8a54240c  MOV DL,byte ptr [ESP + 0xc]
00cd0d8f  8844241d  MOV byte ptr [ESP + 0x1d],AL
00cd0d93  8a4708  MOV AL,byte ptr [EDI + 0x8]
00cd0d96  8b7e0c  MOV EDI,dword ptr [ESI + 0xc]
00cd0d99  8d4c241c  LEA ECX,[ESP + 0x1c]
00cd0d9d  2c01  SUB AL,0x1
00cd0d9f  51  PUSH ECX
00cd0da0  8bcf  MOV ECX,EDI
00cd0da2  88542420  MOV byte ptr [ESP + 0x20],DL
00cd0da6  88442422  MOV byte ptr [ESP + 0x22],AL
00cd0daa  e8a15ddaff  CALL 0x00a76b50
00cd0daf  84c0  TEST AL,AL
00cd0db1  7427  JZ 0x00cd0dda
00cd0db3  8d54241c  LEA EDX,[ESP + 0x1c]
00cd0db7  52  PUSH EDX
00cd0db8  57  PUSH EDI
00cd0db9  e8d2efdfff  CALL 0x00acfd90
00cd0dbe  83c408  ADD ESP,0x8
00cd0dc1  84c0  TEST AL,AL
00cd0dc3  7415  JZ 0x00cd0dda
00cd0dc5  8b4e0c  MOV ECX,dword ptr [ESI + 0xc]
00cd0dc8  8d44241c  LEA EAX,[ESP + 0x1c]
00cd0dcc  50  PUSH EAX
00cd0dcd  e80ecaaaff  CALL 0x0077d7e0
00cd0dd2  5f  POP EDI
00cd0dd3  5e  POP ESI
00cd0dd4  83c410  ADD ESP,0x10
00cd0dd7  c20400  RET 0x4
00cd0dda  d9442414  FLD float ptr [ESP + 0x14]
00cd0dde  5f  POP EDI
00cd0ddf  5e  POP ESI
00cd0de0  83c410  ADD ESP,0x10
00cd0de3  c20400  RET 0x4
