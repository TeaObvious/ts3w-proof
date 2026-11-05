# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: ushort LotFloorFeatures_ReadPuddleMask(void * this, char * location, uint unusedRequestedFlags)
Owned ranges: [[00ab6750, 00ab67c4]]

00ab6750  53  PUSH EBX
00ab6751  55  PUSH EBP
00ab6752  56  PUSH ESI
00ab6753  8bd9  MOV EBX,ECX
00ab6755  8bb39c020000  MOV ESI,dword ptr [EBX + 0x29c]
00ab675b  85f6  TEST ESI,ESI
00ab675d  57  PUSH EDI
00ab675e  745a  JZ 0x00ab67ba
00ab6760  8baba0020000  MOV EBP,dword ptr [EBX + 0x2a0]
00ab6766  85ed  TEST EBP,EBP
00ab6768  7450  JZ 0x00ab67ba
00ab676a  8b7c2414  MOV EDI,dword ptr [ESP + 0x14]
00ab676e  57  PUSH EDI
00ab676f  e8fc21dbff  CALL 0x00868970
00ab6774  84c0  TEST AL,AL
00ab6776  7442  JZ 0x00ab67ba
00ab6778  0fbe4702  MOVSX EAX,byte ptr [EDI + 0x2]
00ab677c  0fbe5701  MOVSX EDX,byte ptr [EDI + 0x1]
00ab6780  0fbe0f  MOVSX ECX,byte ptr [EDI]
00ab6783  2b837c010000  SUB EAX,dword ptr [EBX + 0x17c]
00ab6789  8b7e04  MOV EDI,dword ptr [ESI + 0x4]
00ab678c  0faff8  IMUL EDI,EAX
00ab678f  03f9  ADD EDI,ECX
00ab6791  0faf7e08  IMUL EDI,dword ptr [ESI + 0x8]
00ab6795  037e10  ADD EDI,dword ptr [ESI + 0x10]
00ab6798  f6041701  TEST byte ptr [EDI + EDX*0x1],0x1
00ab679c  741c  JZ 0x00ab67ba
00ab679e  8b7504  MOV ESI,dword ptr [EBP + 0x4]
00ab67a1  0faff0  IMUL ESI,EAX
00ab67a4  8b4510  MOV EAX,dword ptr [EBP + 0x10]
00ab67a7  03f1  ADD ESI,ECX
00ab67a9  0faf7508  IMUL ESI,dword ptr [EBP + 0x8]
00ab67ad  03f2  ADD ESI,EDX
00ab67af  668b0470  MOV AX,word ptr [EAX + ESI*0x2]
00ab67b3  5f  POP EDI
00ab67b4  5e  POP ESI
00ab67b5  5d  POP EBP
00ab67b6  5b  POP EBX
00ab67b7  c20800  RET 0x8
00ab67ba  5f  POP EDI
00ab67bb  5e  POP ESI
00ab67bc  5d  POP EBP
00ab67bd  660dffff  OR AX,0xffff
00ab67c1  5b  POP EBX
00ab67c2  c20800  RET 0x8
