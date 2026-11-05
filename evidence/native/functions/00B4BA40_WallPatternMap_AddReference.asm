# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: WallPatternMap_AddReference
Paired actual annotated Ghidra pseudocode: 00B4BA40_WallPatternMap_AddReference.c
Owned ranges: [[00b4ba40, 00b4bac7]]
Envelope bytes=136

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00b4ba40  83ec08  SUB ESP,0x8
00b4ba43  56  PUSH ESI
00b4ba44  8b742410  MOV ESI,dword ptr [ESP + 0x10]
00b4ba48  57  PUSH EDI
00b4ba49  56  PUSH ESI
00b4ba4a  8d44240c  LEA EAX,[ESP + 0xc]
00b4ba4e  50  PUSH EAX
00b4ba4f  8bf9  MOV EDI,ECX
00b4ba51  e88a1faaff  CALL 0x005ed9e0
00b4ba56  8b4f08  MOV ECX,dword ptr [EDI + 0x8]
00b4ba59  8b5704  MOV EDX,dword ptr [EDI + 0x4]
00b4ba5c  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00b4ba60  3b048a  CMP EAX,dword ptr [EDX + ECX*0x4]
00b4ba63  7554  JNZ 0x00b4bab9
00b4ba65  53  PUSH EBX
00b4ba66  55  PUSH EBP
00b4ba67  bd01000000  MOV EBP,0x1
00b4ba6c  8bcf  MOV ECX,EDI
00b4ba6e  896c2414  MOV dword ptr [ESP + 0x14],EBP
00b4ba72  e849e2ffff  CALL 0x00b49cc0
00b4ba77  8bd8  MOV EBX,EAX
00b4ba79  56  PUSH ESI
00b4ba7a  8bcf  MOV ECX,EDI
00b4ba7c  895c2414  MOV dword ptr [ESP + 0x14],EBX
00b4ba80  e83bffffff  CALL 0x00b4b9c0
00b4ba85  8918  MOV dword ptr [EAX],EBX
00b4ba87  896804  MOV dword ptr [EAX + 0x4],EBP
00b4ba8a  8d442410  LEA EAX,[ESP + 0x10]
00b4ba8e  50  PUSH EAX
00b4ba8f  8d4f20  LEA ECX,[EDI + 0x20]
00b4ba92  e869d0a6ff  CALL 0x005b8b00
00b4ba97  8b0e  MOV ECX,dword ptr [ESI]
00b4ba99  8908  MOV dword ptr [EAX],ECX
00b4ba9b  8b5604  MOV EDX,dword ptr [ESI + 0x4]
00b4ba9e  895004  MOV dword ptr [EAX + 0x4],EDX
00b4baa1  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00b4baa4  894808  MOV dword ptr [EAX + 0x8],ECX
00b4baa7  8b560c  MOV EDX,dword ptr [ESI + 0xc]
00b4baaa  5d  POP EBP
00b4baab  89500c  MOV dword ptr [EAX + 0xc],EDX
00b4baae  8bc3  MOV EAX,EBX
00b4bab0  5b  POP EBX
00b4bab1  5f  POP EDI
00b4bab2  5e  POP ESI
00b4bab3  83c408  ADD ESP,0x8
00b4bab6  c20400  RET 0x4
00b4bab9  83401401  ADD dword ptr [EAX + 0x14],0x1
00b4babd  8b4010  MOV EAX,dword ptr [EAX + 0x10]
00b4bac0  5f  POP EDI
00b4bac1  5e  POP ESI
00b4bac2  83c408  ADD ESP,0x8
00b4bac5  c20400  RET 0x4
Owned instructions=52 owned bytes=136 gap/nonowned bytes=0
