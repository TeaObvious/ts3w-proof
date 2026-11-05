# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool PaintUndoable_AddPaintAtSample(void * this, pointer lot, uint layer, uint sampleX, uint sampleZ, byte addAlpha, byte otherDecrease, bool * ok)
Owned ranges: [[00d244b0, 00d2454b]]

00d244b0  51  PUSH ECX
00d244b1  53  PUSH EBX
00d244b2  55  PUSH EBP
00d244b3  56  PUSH ESI
00d244b4  8bf1  MOV ESI,ECX
00d244b6  807e1400  CMP byte ptr [ESI + 0x14],0x0
00d244ba  b301  MOV BL,0x1
00d244bc  7405  JZ 0x00d244c3
00d244be  0f57c0  XORPS XMM0,XMM0
00d244c1  eb08  JMP 0x00d244cb
00d244c3  f30f1086b0000000  MOVSS XMM0,dword ptr [ESI + 0xb0]
00d244cb  f30f1144240c  MOVSS dword ptr [ESP + 0xc],XMM0
00d244d1  d944240c  FLD float ptr [ESP + 0xc]
00d244d5  51  PUSH ECX
00d244d6  d91c24  FSTP float ptr [ESP]
00d244d9  e8f263ffff  CALL 0x00d1a8d0
00d244de  84c0  TEST AL,AL
00d244e0  7411  JZ 0x00d244f3
00d244e2  d944240c  FLD float ptr [ESP + 0xc]
00d244e6  51  PUSH ECX
00d244e7  8bce  MOV ECX,ESI
00d244e9  d91c24  FSTP float ptr [ESP]
00d244ec  e8bf63ffff  CALL 0x00d1a8b0
00d244f1  eb02  JMP 0x00d244f5
00d244f3  32db  XOR BL,BL
00d244f5  84db  TEST BL,BL
00d244f7  8b6c242c  MOV EBP,dword ptr [ESP + 0x2c]
00d244fb  885d00  MOV byte ptr [EBP],BL
00d244fe  7443  JZ 0x00d24543
00d24500  8b5c241c  MOV EBX,dword ptr [ESP + 0x1c]
00d24504  57  PUSH EDI
00d24505  8b7c2424  MOV EDI,dword ptr [ESP + 0x24]
00d24509  57  PUSH EDI
00d2450a  53  PUSH EBX
00d2450b  8bce  MOV ECX,ESI
00d2450d  e8aefeffff  CALL 0x00d243c0
00d24512  8b44242c  MOV EAX,dword ptr [ESP + 0x2c]
00d24516  8b4c2428  MOV ECX,dword ptr [ESP + 0x28]
00d2451a  8b54241c  MOV EDX,dword ptr [ESP + 0x1c]
00d2451e  50  PUSH EAX
00d2451f  51  PUSH ECX
00d24520  8b4e54  MOV ECX,dword ptr [ESI + 0x54]
00d24523  57  PUSH EDI
00d24524  53  PUSH EBX
00d24525  52  PUSH EDX
00d24526  e825bcdcff  CALL 0x00af0150
00d2452b  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
00d2452f  6a01  PUSH 0x1
00d24531  6a01  PUSH 0x1
00d24533  e808c4d8ff  CALL 0x00ab0940
00d24538  8a4500  MOV AL,byte ptr [EBP]
00d2453b  5f  POP EDI
00d2453c  5e  POP ESI
00d2453d  5d  POP EBP
00d2453e  5b  POP EBX
00d2453f  59  POP ECX
00d24540  c21c00  RET 0x1c
00d24543  5e  POP ESI
00d24544  5d  POP EBP
00d24545  8ac3  MOV AL,BL
00d24547  5b  POP EBX
00d24548  59  POP ECX
00d24549  c21c00  RET 0x1c
