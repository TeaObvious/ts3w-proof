# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined ByteBlockGrid_SetDimensions(void * this, int param_1, int param_2)
Owned ranges: [[00aee740, 00aee7ab]]

00aee740  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00aee744  8b542408  MOV EDX,dword ptr [ESP + 0x8]
00aee748  53  PUSH EBX
00aee749  55  PUSH EBP
00aee74a  56  PUSH ESI
00aee74b  57  PUSH EDI
00aee74c  8bf9  MOV EDI,ECX
00aee74e  8907  MOV dword ptr [EDI],EAX
00aee750  8d4803  LEA ECX,[EAX + 0x3]
00aee753  8d4203  LEA EAX,[EDX + 0x3]
00aee756  c1f902  SAR ECX,0x2
00aee759  c1f802  SAR EAX,0x2
00aee75c  89470c  MOV dword ptr [EDI + 0xc],EAX
00aee75f  0fafc1  IMUL EAX,ECX
00aee762  894f08  MOV dword ptr [EDI + 0x8],ECX
00aee765  8d5f30  LEA EBX,[EDI + 0x30]
00aee768  895704  MOV dword ptr [EDI + 0x4],EDX
00aee76b  8b7304  MOV ESI,dword ptr [EBX + 0x4]
00aee76e  2b33  SUB ESI,dword ptr [EBX]
00aee770  8be8  MOV EBP,EAX
00aee772  55  PUSH EBP
00aee773  8bcb  MOV ECX,EBX
00aee775  d1fe  SAR ESI,0x1
00aee777  e8640eb9ff  CALL 0x0067f5e0
00aee77c  3bee  CMP EBP,ESI
00aee77e  7e1c  JLE 0x00aee79c
00aee780  8b03  MOV EAX,dword ptr [EBX]
00aee782  8b4f34  MOV ECX,dword ptr [EDI + 0x34]
00aee785  8d0470  LEA EAX,[EAX + ESI*0x2]
00aee788  3bc1  CMP EAX,ECX
00aee78a  7410  JZ 0x00aee79c
00aee78c  8d642400  LEA ESP,[ESP]
00aee790  66c7000080  MOV word ptr [EAX],0x8000
00aee795  83c002  ADD EAX,0x2
00aee798  3bc1  CMP EAX,ECX
00aee79a  75f4  JNZ 0x00aee790
00aee79c  55  PUSH EBP
00aee79d  8d4f10  LEA ECX,[EDI + 0x10]
00aee7a0  e87b4692ff  CALL 0x00412e20
00aee7a5  5f  POP EDI
00aee7a6  5e  POP ESI
00aee7a7  5d  POP EBP
00aee7a8  5b  POP EBX
00aee7a9  c20800  RET 0x8
