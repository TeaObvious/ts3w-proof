# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool Lot_IsSignedTileInBounds(void * this, char * tile4)
Owned ranges: [[00868970, 008689b6]]

00868970  8b542404  MOV EDX,dword ptr [ESP + 0x4]
00868974  0fbe02  MOVSX EAX,byte ptr [EDX]
00868977  85c0  TEST EAX,EAX
00868979  56  PUSH ESI
0086897a  0fbe7201  MOVSX ESI,byte ptr [EDX + 0x1]
0086897e  7c31  JL 0x008689b1
00868980  3b8174010000  CMP EAX,dword ptr [ECX + 0x174]
00868986  7d29  JGE 0x008689b1
00868988  85f6  TEST ESI,ESI
0086898a  7c25  JL 0x008689b1
0086898c  3bb178010000  CMP ESI,dword ptr [ECX + 0x178]
00868992  7d1d  JGE 0x008689b1
00868994  0fbe4202  MOVSX EAX,byte ptr [EDX + 0x2]
00868998  3b817c010000  CMP EAX,dword ptr [ECX + 0x17c]
0086899e  7c11  JL 0x008689b1
008689a0  3b8180010000  CMP EAX,dword ptr [ECX + 0x180]
008689a6  7f09  JG 0x008689b1
008689a8  b801000000  MOV EAX,0x1
008689ad  5e  POP ESI
008689ae  c20400  RET 0x4
008689b1  33c0  XOR EAX,EAX
008689b3  5e  POP ESI
008689b4  c20400  RET 0x4
