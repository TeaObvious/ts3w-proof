# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool ToolFlattenLot_OnPress(void * this, uint pressWord)
Owned ranges: [[00ce3c20, 00ce3d32]]

00ce3c20  51  PUSH ECX
00ce3c21  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00ce3c25  56  PUSH ESI
00ce3c26  50  PUSH EAX
00ce3c27  8bf1  MOV ESI,ECX
00ce3c29  e802f1feff  CALL 0x00cd2d30
00ce3c2e  84c0  TEST AL,AL
00ce3c30  7507  JNZ 0x00ce3c39
00ce3c32  32c0  XOR AL,AL
00ce3c34  5e  POP ESI
00ce3c35  59  POP ECX
00ce3c36  c20400  RET 0x4
00ce3c39  807e1c00  CMP byte ptr [ESI + 0x1c],0x0
00ce3c3d  740a  JZ 0x00ce3c49
00ce3c3f  0f57c0  XORPS XMM0,XMM0
00ce3c42  f30f114634  MOVSS dword ptr [ESI + 0x34],XMM0
00ce3c47  eb21  JMP 0x00ce3c6a
00ce3c49  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00ce3c4f  85c9  TEST ECX,ECX
00ce3c51  7417  JZ 0x00ce3c6a
00ce3c53  6a02  PUSH 0x2
00ce3c55  e876b6faff  CALL 0x00c8f2d0
00ce3c5a  85c0  TEST EAX,EAX
00ce3c5c  740c  JZ 0x00ce3c6a
00ce3c5e  50  PUSH EAX
00ce3c5f  e89c6c0300  CALL 0x00d1a900
00ce3c64  d95e34  FSTP float ptr [ESI + 0x34]
00ce3c67  83c404  ADD ESP,0x4
00ce3c6a  8bce  MOV ECX,ESI
00ce3c6c  e89ffbfeff  CALL 0x00cd3810
00ce3c71  8b4e0c  MOV ECX,dword ptr [ESI + 0xc]
00ce3c74  85c9  TEST ECX,ECX
00ce3c76  74ba  JZ 0x00ce3c32
00ce3c78  8b8190020000  MOV EAX,dword ptr [ECX + 0x290]
00ce3c7e  8b5024  MOV EDX,dword ptr [EAX + 0x24]
00ce3c81  57  PUSH EDI
00ce3c82  8b7818  MOV EDI,dword ptr [EAX + 0x18]
00ce3c85  2b7810  SUB EDI,dword ptr [EAX + 0x10]
00ce3c88  0faf7a08  IMUL EDI,dword ptr [EDX + 0x8]
00ce3c8c  0faf7a04  IMUL EDI,dword ptr [EDX + 0x4]
00ce3c90  83b90804000001  CMP dword ptr [ECX + 0x408],0x1
00ce3c97  8b5210  MOV EDX,dword ptr [EDX + 0x10]
00ce3c9a  f30f1004ba  MOVSS XMM0,dword ptr [EDX + EDI*0x4]
00ce3c9f  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
00ce3ca5  5f  POP EDI
00ce3ca6  7509  JNZ 0x00ce3cb1
00ce3ca8  83b90c04000050  CMP dword ptr [ECX + 0x40c],0x50
00ce3caf  7427  JZ 0x00ce3cd8
00ce3cb1  e8dadddcff  CALL 0x00ab1a90
00ce3cb6  d80548120801  FADD float ptr [0x01081248]
00ce3cbc  d9542404  FST float ptr [ESP + 0x4]
00ce3cc0  d944240c  FLD float ptr [ESP + 0xc]
00ce3cc4  d9c9  FXCH
00ce3cc6  dff1  FCOMIP ST0,ST1
00ce3cc8  ddd8  FSTP ST0
00ce3cca  760c  JBE 0x00ce3cd8
00ce3ccc  f30f10442404  MOVSS XMM0,dword ptr [ESP + 0x4]
00ce3cd2  f30f1144240c  MOVSS dword ptr [ESP + 0xc],XMM0
00ce3cd8  d944240c  FLD float ptr [ESP + 0xc]
00ce3cdc  51  PUSH ECX
00ce3cdd  8bce  MOV ECX,ESI
00ce3cdf  d91c24  FSTP float ptr [ESP]
00ce3ce2  e849feffff  CALL 0x00ce3b30
00ce3ce7  51  PUSH ECX
00ce3ce8  8bce  MOV ECX,ESI
00ce3cea  d91c24  FSTP float ptr [ESP]
00ce3ced  e81ef1feff  CALL 0x00cd2e10
00ce3cf2  84c0  TEST AL,AL
00ce3cf4  742b  JZ 0x00ce3d21
00ce3cf6  d944240c  FLD float ptr [ESP + 0xc]
00ce3cfa  51  PUSH ECX
00ce3cfb  8bce  MOV ECX,ESI
00ce3cfd  d91c24  FSTP float ptr [ESP]
00ce3d00  e88bfcffff  CALL 0x00ce3990
00ce3d05  a1ecbf1e01  MOV EAX,[0x011ebfec]
00ce3d0a  8b0de8bf1e01  MOV ECX,dword ptr [0x011ebfe8]
00ce3d10  50  PUSH EAX
00ce3d11  51  PUSH ECX
00ce3d12  e889c7feff  CALL 0x00cd04a0
00ce3d17  83c408  ADD ESP,0x8
00ce3d1a  b001  MOV AL,0x1
00ce3d1c  5e  POP ESI
00ce3d1d  59  POP ECX
00ce3d1e  c20400  RET 0x4
00ce3d21  8b16  MOV EDX,dword ptr [ESI]
00ce3d23  8b424c  MOV EAX,dword ptr [EDX + 0x4c]
00ce3d26  6a01  PUSH 0x1
00ce3d28  8bce  MOV ECX,ESI
00ce3d2a  ffd0  CALL EAX
00ce3d2c  b001  MOV AL,0x1
00ce3d2e  5e  POP ESI
00ce3d2f  59  POP ECX
00ce3d30  c20400  RET 0x4
