# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool FloorManager_TileHasAnyRequestedFlag(void * this, char * param_1)
Owned ranges: [[00a8cb10, 00a8cb66]]

00a8cb10  8b542404  MOV EDX,dword ptr [ESP + 0x4]
00a8cb14  8b4128  MOV EAX,dword ptr [ECX + 0x28]
00a8cb17  56  PUSH ESI
00a8cb18  0fbe7202  MOVSX ESI,byte ptr [EDX + 0x2]
00a8cb1c  2b7110  SUB ESI,dword ptr [ECX + 0x10]
00a8cb1f  0fbe0a  MOVSX ECX,byte ptr [EDX]
00a8cb22  0faf7004  IMUL ESI,dword ptr [EAX + 0x4]
00a8cb26  03f1  ADD ESI,ECX
00a8cb28  0faf7008  IMUL ESI,dword ptr [EAX + 0x8]
00a8cb2c  0fbe4a01  MOVSX ECX,byte ptr [EDX + 0x1]
00a8cb30  8b4010  MOV EAX,dword ptr [EAX + 0x10]
00a8cb33  8a5203  MOV DL,byte ptr [EDX + 0x3]
00a8cb36  03f1  ADD ESI,ECX
00a8cb38  8a0406  MOV AL,byte ptr [ESI + EAX*0x1]
00a8cb3b  5e  POP ESI
00a8cb3c  33c9  XOR ECX,ECX
00a8cb3e  53  PUSH EBX
00a8cb3f  90  NOP
00a8cb40  b301  MOV BL,0x1
00a8cb42  d2e3  SHL BL,CL
00a8cb44  84da  TEST DL,BL
00a8cb46  740b  JZ 0x00a8cb53
00a8cb48  bb01000000  MOV EBX,0x1
00a8cb4d  d3e3  SHL EBX,CL
00a8cb4f  84d8  TEST AL,BL
00a8cb51  750e  JNZ 0x00a8cb61
00a8cb53  83c101  ADD ECX,0x1
00a8cb56  83f904  CMP ECX,0x4
00a8cb59  7ce5  JL 0x00a8cb40
00a8cb5b  32c0  XOR AL,AL
00a8cb5d  5b  POP EBX
00a8cb5e  c20400  RET 0x4
00a8cb61  b001  MOV AL,0x1
00a8cb63  5b  POP EBX
00a8cb64  c20400  RET 0x4
