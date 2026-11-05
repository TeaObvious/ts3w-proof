# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: float10 LotElevation_ReadSignedGridHeight(void * param_1, char * param_2)
Owned ranges: [[00a4a0c0, 00a4a0eb]]

00a4a0c0  8b542404  MOV EDX,dword ptr [ESP + 0x4]
00a4a0c4  8b4178  MOV EAX,dword ptr [ECX + 0x78]
00a4a0c7  56  PUSH ESI
00a4a0c8  0fbe7202  MOVSX ESI,byte ptr [EDX + 0x2]
00a4a0cc  2b710c  SUB ESI,dword ptr [ECX + 0xc]
00a4a0cf  0fbe0a  MOVSX ECX,byte ptr [EDX]
00a4a0d2  0faf7004  IMUL ESI,dword ptr [EAX + 0x4]
00a4a0d6  0fbe5201  MOVSX EDX,byte ptr [EDX + 0x1]
00a4a0da  03f1  ADD ESI,ECX
00a4a0dc  0faf7008  IMUL ESI,dword ptr [EAX + 0x8]
00a4a0e0  8b4010  MOV EAX,dword ptr [EAX + 0x10]
00a4a0e3  03f2  ADD ESI,EDX
00a4a0e5  d904b0  FLD float ptr [EAX + ESI*0x4]
00a4a0e8  5e  POP ESI
00a4a0e9  c20400  RET 0x4
