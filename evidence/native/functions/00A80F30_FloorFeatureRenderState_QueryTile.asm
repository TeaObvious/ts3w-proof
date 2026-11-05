# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool FloorFeatureRenderState_QueryTile(void * this, char * cell, uint flags, ushort * maskOutput)
Owned ranges: [[00a80f30, 00a80feb]]

00a80f30  55  PUSH EBP
00a80f31  8be9  MOV EBP,ECX
00a80f33  8b4504  MOV EAX,dword ptr [EBP + 0x4]
00a80f36  8b8830020000  MOV ECX,dword ptr [EAX + 0x230]
00a80f3c  85c9  TEST ECX,ECX
00a80f3e  7506  JNZ 0x00a80f46
00a80f40  32c0  XOR AL,AL
00a80f42  5d  POP EBP
00a80f43  c20c00  RET 0xc
00a80f46  53  PUSH EBX
00a80f47  56  PUSH ESI
00a80f48  8b742410  MOV ESI,dword ptr [ESP + 0x10]
00a80f4c  56  PUSH ESI
00a80f4d  e84e030200  CALL 0x00aa12a0
00a80f52  8b4d04  MOV ECX,dword ptr [EBP + 0x4]
00a80f55  8b8930020000  MOV ECX,dword ptr [ECX + 0x230]
00a80f5b  84c0  TEST AL,AL
00a80f5d  0f95c3  SETNZ BL
00a80f60  85c9  TEST ECX,ECX
00a80f62  7406  JZ 0x00a80f6a
00a80f64  56  PUSH ESI
00a80f65  e836030200  CALL 0x00aa12a0
00a80f6a  84db  TEST BL,BL
00a80f6c  57  PUSH EDI
00a80f6d  7474  JZ 0x00a80fe3
00a80f6f  8b7d38  MOV EDI,dword ptr [EBP + 0x38]
00a80f72  85ff  TEST EDI,EDI
00a80f74  746d  JZ 0x00a80fe3
00a80f76  8b5d3c  MOV EBX,dword ptr [EBP + 0x3c]
00a80f79  85db  TEST EBX,EBX
00a80f7b  7466  JZ 0x00a80fe3
00a80f7d  8b4d04  MOV ECX,dword ptr [EBP + 0x4]
00a80f80  56  PUSH ESI
00a80f81  e8fa6efeff  CALL 0x00a67e80
00a80f86  84c0  TEST AL,AL
00a80f88  7459  JZ 0x00a80fe3
00a80f8a  0fbe4602  MOVSX EAX,byte ptr [ESI + 0x2]
00a80f8e  2b4534  SUB EAX,dword ptr [EBP + 0x34]
00a80f91  8b5704  MOV EDX,dword ptr [EDI + 0x4]
00a80f94  0fbe0e  MOVSX ECX,byte ptr [ESI]
00a80f97  0fafd0  IMUL EDX,EAX
00a80f9a  0fbe7601  MOVSX ESI,byte ptr [ESI + 0x1]
00a80f9e  03d1  ADD EDX,ECX
00a80fa0  0faf5708  IMUL EDX,dword ptr [EDI + 0x8]
00a80fa4  035710  ADD EDX,dword ptr [EDI + 0x10]
00a80fa7  8b7c241c  MOV EDI,dword ptr [ESP + 0x1c]
00a80fab  85ff  TEST EDI,EDI
00a80fad  8a1432  MOV DL,byte ptr [EDX + ESI*0x1]
00a80fb0  7418  JZ 0x00a80fca
00a80fb2  8b6b04  MOV EBP,dword ptr [EBX + 0x4]
00a80fb5  0fafe8  IMUL EBP,EAX
00a80fb8  8b4310  MOV EAX,dword ptr [EBX + 0x10]
00a80fbb  03e9  ADD EBP,ECX
00a80fbd  0faf6b08  IMUL EBP,dword ptr [EBX + 0x8]
00a80fc1  03ee  ADD EBP,ESI
00a80fc3  668b0c68  MOV CX,word ptr [EAX + EBP*0x2]
00a80fc7  66890f  MOV word ptr [EDI],CX
00a80fca  8b442418  MOV EAX,dword ptr [ESP + 0x18]
00a80fce  0fb6d2  MOVZX EDX,DL
00a80fd1  5f  POP EDI
00a80fd2  23d0  AND EDX,EAX
00a80fd4  33c9  XOR ECX,ECX
00a80fd6  3bd0  CMP EDX,EAX
00a80fd8  5e  POP ESI
00a80fd9  0f94c1  SETZ CL
00a80fdc  5b  POP EBX
00a80fdd  8ac1  MOV AL,CL
00a80fdf  5d  POP EBP
00a80fe0  c20c00  RET 0xc
00a80fe3  5f  POP EDI
00a80fe4  5e  POP ESI
00a80fe5  5b  POP EBX
00a80fe6  32c0  XOR AL,AL
00a80fe8  5d  POP EBP
00a80fe9  c20c00  RET 0xc
