# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool PaintUndoable_TryChargeSample(void * this)
Owned ranges: [[00d23ec0, 00d23f0b]]

00d23ec0  51  PUSH ECX
00d23ec1  53  PUSH EBX
00d23ec2  56  PUSH ESI
00d23ec3  8bf1  MOV ESI,ECX
00d23ec5  807e1400  CMP byte ptr [ESI + 0x14],0x0
00d23ec9  b301  MOV BL,0x1
00d23ecb  7405  JZ 0x00d23ed2
00d23ecd  0f57c0  XORPS XMM0,XMM0
00d23ed0  eb08  JMP 0x00d23eda
00d23ed2  f30f1086b0000000  MOVSS XMM0,dword ptr [ESI + 0xb0]
00d23eda  f30f11442408  MOVSS dword ptr [ESP + 0x8],XMM0
00d23ee0  d9442408  FLD float ptr [ESP + 0x8]
00d23ee4  51  PUSH ECX
00d23ee5  d91c24  FSTP float ptr [ESP]
00d23ee8  e8e369ffff  CALL 0x00d1a8d0
00d23eed  84c0  TEST AL,AL
00d23eef  7415  JZ 0x00d23f06
00d23ef1  d9442408  FLD float ptr [ESP + 0x8]
00d23ef5  51  PUSH ECX
00d23ef6  8bce  MOV ECX,ESI
00d23ef8  d91c24  FSTP float ptr [ESP]
00d23efb  e8b069ffff  CALL 0x00d1a8b0
00d23f00  5e  POP ESI
00d23f01  8ac3  MOV AL,BL
00d23f03  5b  POP EBX
00d23f04  59  POP ECX
00d23f05  c3  RET
00d23f06  5e  POP ESI
00d23f07  32c0  XOR AL,AL
00d23f09  5b  POP EBX
00d23f0a  59  POP ECX
00d23f0b  c3  RET
