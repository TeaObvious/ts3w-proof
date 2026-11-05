# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void WorldGrid_SetDimensions(void * this, int width, int depth, int levels)
Owned ranges: [[00c6d840, 00c6d873]]

00c6d840  53  PUSH EBX
00c6d841  8b5c240c  MOV EBX,dword ptr [ESP + 0xc]
00c6d845  55  PUSH EBP
00c6d846  8b6c2414  MOV EBP,dword ptr [ESP + 0x14]
00c6d84a  56  PUSH ESI
00c6d84b  8bf1  MOV ESI,ECX
00c6d84d  8b06  MOV EAX,dword ptr [ESI]
00c6d84f  8b5008  MOV EDX,dword ptr [EAX + 0x8]
00c6d852  57  PUSH EDI
00c6d853  8b7c2414  MOV EDI,dword ptr [ESP + 0x14]
00c6d857  8bcf  MOV ECX,EDI
00c6d859  0fafcb  IMUL ECX,EBX
00c6d85c  0fafcd  IMUL ECX,EBP
00c6d85f  51  PUSH ECX
00c6d860  8bce  MOV ECX,ESI
00c6d862  ffd2  CALL EDX
00c6d864  897e04  MOV dword ptr [ESI + 0x4],EDI
00c6d867  5f  POP EDI
00c6d868  895e08  MOV dword ptr [ESI + 0x8],EBX
00c6d86b  896e0c  MOV dword ptr [ESI + 0xc],EBP
00c6d86e  5e  POP ESI
00c6d86f  5d  POP EBP
00c6d870  5b  POP EBX
00c6d871  c20c00  RET 0xc
