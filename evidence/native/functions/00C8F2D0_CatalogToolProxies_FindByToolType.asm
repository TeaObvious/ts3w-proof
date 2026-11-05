# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: pointer CatalogToolProxies_FindByToolType(void * this, uint toolType)
Owned ranges: [[00c8f2d0, 00c8f322]]

00c8f2d0  53  PUSH EBX
00c8f2d1  8b5c2408  MOV EBX,dword ptr [ESP + 0x8]
00c8f2d5  56  PUSH ESI
00c8f2d6  8bf1  MOV ESI,ECX
00c8f2d8  0fb68698010000  MOVZX EAX,byte ptr [ESI + 0x198]
00c8f2df  8b9688010000  MOV EDX,dword ptr [ESI + 0x188]
00c8f2e5  57  PUSH EDI
00c8f2e6  8bbe8c010000  MOV EDI,dword ptr [ESI + 0x18c]
00c8f2ec  50  PUSH EAX
00c8f2ed  8d4c2414  LEA ECX,[ESP + 0x14]
00c8f2f1  51  PUSH ECX
00c8f2f2  57  PUSH EDI
00c8f2f3  52  PUSH EDX
00c8f2f4  895c2420  MOV dword ptr [ESP + 0x20],EBX
00c8f2f8  e8f38992ff  CALL 0x005b7cf0
00c8f2fd  83c410  ADD ESP,0x10
00c8f300  3bc7  CMP EAX,EDI
00c8f302  740b  JZ 0x00c8f30f
00c8f304  3b18  CMP EBX,dword ptr [EAX]
00c8f306  7207  JC 0x00c8f30f
00c8f308  8d4808  LEA ECX,[EAX + 0x8]
00c8f30b  3bc1  CMP EAX,ECX
00c8f30d  7502  JNZ 0x00c8f311
00c8f30f  8bc7  MOV EAX,EDI
00c8f311  3bc7  CMP EAX,EDI
00c8f313  5f  POP EDI
00c8f314  5e  POP ESI
00c8f315  5b  POP EBX
00c8f316  7406  JZ 0x00c8f31e
00c8f318  8b4004  MOV EAX,dword ptr [EAX + 0x4]
00c8f31b  c20400  RET 0x4
00c8f31e  33c0  XOR EAX,EAX
00c8f320  c20400  RET 0x4
