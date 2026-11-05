# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool LotFloorFeatures_TestAny(void * this, char * location, byte requestedFlags, ushort requestedMask)
Owned ranges: [[00ab6550, 00ab65f3]]

00ab6550  53  PUSH EBX
00ab6551  56  PUSH ESI
00ab6552  8bd9  MOV EBX,ECX
00ab6554  8bb39c020000  MOV ESI,dword ptr [EBX + 0x29c]
00ab655a  85f6  TEST ESI,ESI
00ab655c  57  PUSH EDI
00ab655d  0f8489000000  JZ 0x00ab65ec
00ab6563  8b7c2410  MOV EDI,dword ptr [ESP + 0x10]
00ab6567  57  PUSH EDI
00ab6568  e80324dbff  CALL 0x00868970
00ab656d  84c0  TEST AL,AL
00ab656f  747b  JZ 0x00ab65ec
00ab6571  0fbe4f02  MOVSX ECX,byte ptr [EDI + 0x2]
00ab6575  2b8b7c010000  SUB ECX,dword ptr [EBX + 0x17c]
00ab657b  8b4604  MOV EAX,dword ptr [ESI + 0x4]
00ab657e  0fafc1  IMUL EAX,ECX
00ab6581  8a542414  MOV DL,byte ptr [ESP + 0x14]
00ab6585  55  PUSH EBP
00ab6586  0fbe2f  MOVSX EBP,byte ptr [EDI]
00ab6589  0fbe7f01  MOVSX EDI,byte ptr [EDI + 0x1]
00ab658d  03c5  ADD EAX,EBP
00ab658f  0faf4608  IMUL EAX,dword ptr [ESI + 0x8]
00ab6593  034610  ADD EAX,dword ptr [ESI + 0x10]
00ab6596  8bb3a0020000  MOV ESI,dword ptr [EBX + 0x2a0]
00ab659c  85f6  TEST ESI,ESI
00ab659e  8a0438  MOV AL,byte ptr [EAX + EDI*0x1]
00ab65a1  743a  JZ 0x00ab65dd
00ab65a3  f6c201  TEST DL,0x1
00ab65a6  7435  JZ 0x00ab65dd
00ab65a8  84c2  TEST DL,AL
00ab65aa  7428  JZ 0x00ab65d4
00ab65ac  8b5604  MOV EDX,dword ptr [ESI + 0x4]
00ab65af  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00ab65b2  0fafd1  IMUL EDX,ECX
00ab65b5  668b4c241c  MOV CX,word ptr [ESP + 0x1c]
00ab65ba  03d5  ADD EDX,EBP
00ab65bc  0faf5608  IMUL EDX,dword ptr [ESI + 0x8]
00ab65c0  03d7  ADD EDX,EDI
00ab65c2  66850c50  TEST word ptr [EAX + EDX*0x2],CX
00ab65c6  740c  JZ 0x00ab65d4
00ab65c8  5d  POP EBP
00ab65c9  5f  POP EDI
00ab65ca  5e  POP ESI
00ab65cb  b801000000  MOV EAX,0x1
00ab65d0  5b  POP EBX
00ab65d1  c20c00  RET 0xc
00ab65d4  5d  POP EBP
00ab65d5  5f  POP EDI
00ab65d6  5e  POP ESI
00ab65d7  33c0  XOR EAX,EAX
00ab65d9  5b  POP EBX
00ab65da  c20c00  RET 0xc
00ab65dd  22c2  AND AL,DL
00ab65df  f6d8  NEG AL
00ab65e1  5d  POP EBP
00ab65e2  5f  POP EDI
00ab65e3  5e  POP ESI
00ab65e4  5b  POP EBX
00ab65e5  1bc0  SBB EAX,EAX
00ab65e7  f7d8  NEG EAX
00ab65e9  c20c00  RET 0xc
00ab65ec  5f  POP EDI
00ab65ed  5e  POP ESI
00ab65ee  32c0  XOR AL,AL
00ab65f0  5b  POP EBX
00ab65f1  c20c00  RET 0xc
