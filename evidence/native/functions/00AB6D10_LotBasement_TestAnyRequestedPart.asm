# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool LotBasement_TestAnyRequestedPart(void * this, char * param_1)
Owned ranges: [[00ab6d10, 00ab6d69]]

00ab6d10  53  PUSH EBX
00ab6d11  56  PUSH ESI
00ab6d12  8b74240c  MOV ESI,dword ptr [ESP + 0xc]
00ab6d16  8a5e02  MOV BL,byte ptr [ESI + 0x2]
00ab6d19  80fbff  CMP BL,0xff
00ab6d1c  57  PUSH EDI
00ab6d1d  8bf9  MOV EDI,ECX
00ab6d1f  7f41  JG 0x00ab6d62
00ab6d21  56  PUSH ESI
00ab6d22  e8491cdbff  CALL 0x00868970
00ab6d27  84c0  TEST AL,AL
00ab6d29  7437  JZ 0x00ab6d62
00ab6d2b  0fbecb  MOVSX ECX,BL
00ab6d2e  83c8ff  OR EAX,0xffffffff
00ab6d31  2bc1  SUB EAX,ECX
00ab6d33  8b8fa8020000  MOV ECX,dword ptr [EDI + 0x2a8]
00ab6d39  3b410c  CMP EAX,dword ptr [ECX + 0xc]
00ab6d3c  7d24  JGE 0x00ab6d62
00ab6d3e  0fbe5601  MOVSX EDX,byte ptr [ESI + 0x1]
00ab6d42  50  PUSH EAX
00ab6d43  0fbe06  MOVSX EAX,byte ptr [ESI]
00ab6d46  52  PUSH EDX
00ab6d47  50  PUSH EAX
00ab6d48  e86346fdff  CALL 0x00a8b3b0
00ab6d4d  8a4e03  MOV CL,byte ptr [ESI + 0x3]
00ab6d50  8a10  MOV DL,byte ptr [EAX]
00ab6d52  22ca  AND CL,DL
00ab6d54  f6d9  NEG CL
00ab6d56  5f  POP EDI
00ab6d57  5e  POP ESI
00ab6d58  5b  POP EBX
00ab6d59  1bc9  SBB ECX,ECX
00ab6d5b  f7d9  NEG ECX
00ab6d5d  8ac1  MOV AL,CL
00ab6d5f  c20400  RET 0x4
00ab6d62  5f  POP EDI
00ab6d63  5e  POP ESI
00ab6d64  32c0  XOR AL,AL
00ab6d66  5b  POP EBX
00ab6d67  c20400  RET 0x4
