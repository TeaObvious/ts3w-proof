# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; actual Ghidra Listing and preserved non-owned envelope gaps.
Owned ranges: [[00c8eae0, 00c8eb59]]
Signature: uint ProductCatalog_FindExactKeyInFourBanks(void * this, uint * param_1)

00c8eae0  53  PUSH EBX
00c8eae1  55  PUSH EBP
00c8eae2  56  PUSH ESI
00c8eae3  8b742410  MOV ESI,dword ptr [ESP + 0x10]
00c8eae7  57  PUSH EDI
00c8eae8  bd01000000  MOV EBP,0x1
00c8eaed  8d7948  LEA EDI,[ECX + 0x48]
00c8eaf0  0fb6470c  MOVZX EAX,byte ptr [EDI + 0xc]
00c8eaf4  8b1f  MOV EBX,dword ptr [EDI]
00c8eaf6  8b4ffc  MOV ECX,dword ptr [EDI + -0x4]
00c8eaf9  50  PUSH EAX
00c8eafa  56  PUSH ESI
00c8eafb  53  PUSH EBX
00c8eafc  51  PUSH ECX
00c8eafd  e84edeffff  CALL 0x00c8c950
00c8eb02  83c410  ADD ESP,0x10
00c8eb05  3bc3  CMP EAX,EBX
00c8eb07  7430  JZ 0x00c8eb39
00c8eb09  8b0e  MOV ECX,dword ptr [ESI]
00c8eb0b  8b10  MOV EDX,dword ptr [EAX]
00c8eb0d  3bca  CMP ECX,EDX
00c8eb0f  751a  JNZ 0x00c8eb2b
00c8eb11  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
00c8eb14  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00c8eb17  3bca  CMP ECX,EDX
00c8eb19  7510  JNZ 0x00c8eb2b
00c8eb1b  8b4e0c  MOV ECX,dword ptr [ESI + 0xc]
00c8eb1e  8b500c  MOV EDX,dword ptr [EAX + 0xc]
00c8eb21  3bca  CMP ECX,EDX
00c8eb23  7506  JNZ 0x00c8eb2b
00c8eb25  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00c8eb28  3b5008  CMP EDX,dword ptr [EAX + 0x8]
00c8eb2b  0f92c1  SETC CL
00c8eb2e  84c9  TEST CL,CL
00c8eb30  7507  JNZ 0x00c8eb39
00c8eb32  8d4818  LEA ECX,[EAX + 0x18]
00c8eb35  3bc1  CMP EAX,ECX
00c8eb37  7502  JNZ 0x00c8eb3b
00c8eb39  8bc3  MOV EAX,EBX
00c8eb3b  3bc3  CMP EAX,EBX
00c8eb3d  7407  JZ 0x00c8eb46
00c8eb3f  8b4010  MOV EAX,dword ptr [EAX + 0x10]
00c8eb42  85c0  TEST EAX,EAX
00c8eb44  750d  JNZ 0x00c8eb53
00c8eb46  83c501  ADD EBP,0x1
00c8eb49  83c714  ADD EDI,0x14
00c8eb4c  83fd05  CMP EBP,0x5
00c8eb4f  729f  JC 0x00c8eaf0
00c8eb51  33c0  XOR EAX,EAX
00c8eb53  5f  POP EDI
00c8eb54  5e  POP ESI
00c8eb55  5d  POP EBP
00c8eb56  5b  POP EBX
00c8eb57  c20400  RET 0x4
