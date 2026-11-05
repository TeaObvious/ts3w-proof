# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool LotFloorFeatures_TestAll(void * this, char * location, uint requestedFlags, ushort requestedMask)
Owned ranges: [[00ab6600, 00ab66b0]]

00ab6600  53  PUSH EBX
00ab6601  56  PUSH ESI
00ab6602  8bd9  MOV EBX,ECX
00ab6604  8bb39c020000  MOV ESI,dword ptr [EBX + 0x29c]
00ab660a  85f6  TEST ESI,ESI
00ab660c  57  PUSH EDI
00ab660d  0f8496000000  JZ 0x00ab66a9
00ab6613  8b7c2410  MOV EDI,dword ptr [ESP + 0x10]
00ab6617  57  PUSH EDI
00ab6618  e85323dbff  CALL 0x00868970
00ab661d  84c0  TEST AL,AL
00ab661f  0f8484000000  JZ 0x00ab66a9
00ab6625  0fbe4702  MOVSX EAX,byte ptr [EDI + 0x2]
00ab6629  2b837c010000  SUB EAX,dword ptr [EBX + 0x17c]
00ab662f  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
00ab6632  0fafc8  IMUL ECX,EAX
00ab6635  55  PUSH EBP
00ab6636  0fbe2f  MOVSX EBP,byte ptr [EDI]
00ab6639  0fbe7f01  MOVSX EDI,byte ptr [EDI + 0x1]
00ab663d  03cd  ADD ECX,EBP
00ab663f  0faf4e08  IMUL ECX,dword ptr [ESI + 0x8]
00ab6643  034e10  ADD ECX,dword ptr [ESI + 0x10]
00ab6646  8a1439  MOV DL,byte ptr [ECX + EDI*0x1]
00ab6649  8b8ba0020000  MOV ECX,dword ptr [EBX + 0x2a0]
00ab664f  85c9  TEST ECX,ECX
00ab6651  8b5c2418  MOV EBX,dword ptr [ESP + 0x18]
00ab6655  743f  JZ 0x00ab6696
00ab6657  f6c301  TEST BL,0x1
00ab665a  743a  JZ 0x00ab6696
00ab665c  0fb6d2  MOVZX EDX,DL
00ab665f  23d3  AND EDX,EBX
00ab6661  3bd3  CMP EDX,EBX
00ab6663  7528  JNZ 0x00ab668d
00ab6665  8b5104  MOV EDX,dword ptr [ECX + 0x4]
00ab6668  0fafd0  IMUL EDX,EAX
00ab666b  8b4110  MOV EAX,dword ptr [ECX + 0x10]
00ab666e  03d5  ADD EDX,EBP
00ab6670  0faf5108  IMUL EDX,dword ptr [ECX + 0x8]
00ab6674  668b4c241c  MOV CX,word ptr [ESP + 0x1c]
00ab6679  03d7  ADD EDX,EDI
00ab667b  66850c50  TEST word ptr [EAX + EDX*0x2],CX
00ab667f  740c  JZ 0x00ab668d
00ab6681  5d  POP EBP
00ab6682  5f  POP EDI
00ab6683  5e  POP ESI
00ab6684  b801000000  MOV EAX,0x1
00ab6689  5b  POP EBX
00ab668a  c20c00  RET 0xc
00ab668d  5d  POP EBP
00ab668e  5f  POP EDI
00ab668f  5e  POP ESI
00ab6690  33c0  XOR EAX,EAX
00ab6692  5b  POP EBX
00ab6693  c20c00  RET 0xc
00ab6696  0fb6d2  MOVZX EDX,DL
00ab6699  5d  POP EBP
00ab669a  23d3  AND EDX,EBX
00ab669c  5f  POP EDI
00ab669d  33c0  XOR EAX,EAX
00ab669f  3bd3  CMP EDX,EBX
00ab66a1  5e  POP ESI
00ab66a2  0f94c0  SETZ AL
00ab66a5  5b  POP EBX
00ab66a6  c20c00  RET 0xc
00ab66a9  5f  POP EDI
00ab66aa  5e  POP ESI
00ab66ab  32c0  XOR AL,AL
00ab66ad  5b  POP EBX
00ab66ae  c20c00  RET 0xc
