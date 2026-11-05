# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool LotBasement_TestAllRequestedParts(void * this, char * param_1)
Owned ranges: [[00ab6d70, 00ab6dca]]

00ab6d70  53  PUSH EBX
00ab6d71  56  PUSH ESI
00ab6d72  8b74240c  MOV ESI,dword ptr [ESP + 0xc]
00ab6d76  8a5e02  MOV BL,byte ptr [ESI + 0x2]
00ab6d79  80fbff  CMP BL,0xff
00ab6d7c  57  PUSH EDI
00ab6d7d  8bf9  MOV EDI,ECX
00ab6d7f  7f42  JG 0x00ab6dc3
00ab6d81  56  PUSH ESI
00ab6d82  e8e91bdbff  CALL 0x00868970
00ab6d87  84c0  TEST AL,AL
00ab6d89  7438  JZ 0x00ab6dc3
00ab6d8b  0fbecb  MOVSX ECX,BL
00ab6d8e  83c8ff  OR EAX,0xffffffff
00ab6d91  2bc1  SUB EAX,ECX
00ab6d93  8b8fa8020000  MOV ECX,dword ptr [EDI + 0x2a8]
00ab6d99  3b410c  CMP EAX,dword ptr [ECX + 0xc]
00ab6d9c  7d25  JGE 0x00ab6dc3
00ab6d9e  0fbe5601  MOVSX EDX,byte ptr [ESI + 0x1]
00ab6da2  50  PUSH EAX
00ab6da3  0fbe06  MOVSX EAX,byte ptr [ESI]
00ab6da6  52  PUSH EDX
00ab6da7  50  PUSH EAX
00ab6da8  e80346fdff  CALL 0x00a8b3b0
00ab6dad  0fbe4e03  MOVSX ECX,byte ptr [ESI + 0x3]
00ab6db1  0fb610  MOVZX EDX,byte ptr [EAX]
00ab6db4  5f  POP EDI
00ab6db5  23d1  AND EDX,ECX
00ab6db7  33c0  XOR EAX,EAX
00ab6db9  3bd1  CMP EDX,ECX
00ab6dbb  5e  POP ESI
00ab6dbc  0f94c0  SETZ AL
00ab6dbf  5b  POP EBX
00ab6dc0  c20400  RET 0x4
00ab6dc3  5f  POP EDI
00ab6dc4  5e  POP ESI
00ab6dc5  32c0  XOR AL,AL
00ab6dc7  5b  POP EBX
00ab6dc8  c20400  RET 0x4
