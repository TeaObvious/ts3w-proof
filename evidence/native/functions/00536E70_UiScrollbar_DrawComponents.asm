# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body.
Actual annotated Ghidra pseudocode: 00536E70_UiScrollbar_DrawComponents.c
Owned ranges: [[00536e70, 00536efe]]

00536e70  56  PUSH ESI
00536e71  8bf1  MOV ESI,ECX
00536e73  83be0402000000  CMP dword ptr [ESI + 0x204],0x0
00536e7a  7473  JZ 0x00536eef
00536e7c  8b06  MOV EAX,dword ptr [ESI]
00536e7e  8b90a4000000  MOV EDX,dword ptr [EAX + 0xa4]
00536e84  57  PUSH EDI
00536e85  8b7c240c  MOV EDI,dword ptr [ESP + 0xc]
00536e89  6a00  PUSH 0x0
00536e8b  57  PUSH EDI
00536e8c  ffd2  CALL EDX
00536e8e  8b06  MOV EAX,dword ptr [ESI]
00536e90  8b90a4000000  MOV EDX,dword ptr [EAX + 0xa4]
00536e96  6a04  PUSH 0x4
00536e98  57  PUSH EDI
00536e99  8bce  MOV ECX,ESI
00536e9b  ffd2  CALL EDX
00536e9d  8b06  MOV EAX,dword ptr [ESI]
00536e9f  8b90a4000000  MOV EDX,dword ptr [EAX + 0xa4]
00536ea5  6a03  PUSH 0x3
00536ea7  57  PUSH EDI
00536ea8  8bce  MOV ECX,ESI
00536eaa  ffd2  CALL EDX
00536eac  8b06  MOV EAX,dword ptr [ESI]
00536eae  8b90a4000000  MOV EDX,dword ptr [EAX + 0xa4]
00536eb4  6a01  PUSH 0x1
00536eb6  57  PUSH EDI
00536eb7  8bce  MOV ECX,ESI
00536eb9  ffd2  CALL EDX
00536ebb  8b06  MOV EAX,dword ptr [ESI]
00536ebd  8b90a4000000  MOV EDX,dword ptr [EAX + 0xa4]
00536ec3  6a06  PUSH 0x6
00536ec5  57  PUSH EDI
00536ec6  8bce  MOV ECX,ESI
00536ec8  ffd2  CALL EDX
00536eca  8b06  MOV EAX,dword ptr [ESI]
00536ecc  8b90a4000000  MOV EDX,dword ptr [EAX + 0xa4]
00536ed2  6a02  PUSH 0x2
00536ed4  57  PUSH EDI
00536ed5  8bce  MOV ECX,ESI
00536ed7  ffd2  CALL EDX
00536ed9  8b06  MOV EAX,dword ptr [ESI]
00536edb  8b90a4000000  MOV EDX,dword ptr [EAX + 0xa4]
00536ee1  6a05  PUSH 0x5
00536ee3  57  PUSH EDI
00536ee4  8bce  MOV ECX,ESI
00536ee6  ffd2  CALL EDX
00536ee8  5f  POP EDI
00536ee9  b001  MOV AL,0x1
00536eeb  5e  POP ESI
00536eec  c20400  RET 0x4
00536eef  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00536ef3  50  PUSH EAX
00536ef4  e847d7fdff  CALL 0x00514640
00536ef9  b001  MOV AL,0x1
00536efb  5e  POP ESI
00536efc  c20400  RET 0x4
