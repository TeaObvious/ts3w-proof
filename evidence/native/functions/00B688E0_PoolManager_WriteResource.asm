# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: PoolManager_WriteResource
Paired actual annotated Ghidra pseudocode: 00B688E0_PoolManager_WriteResource.c
Owned ranges: [[00b688e0, 00b68994]]
Envelope bytes=181

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00b688e0  83ec10  SUB ESP,0x10
00b688e3  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
00b688e7  8b542424  MOV EDX,dword ptr [ESP + 0x24]
00b688eb  53  PUSH EBX
00b688ec  56  PUSH ESI
00b688ed  8b74241c  MOV ESI,dword ptr [ESP + 0x1c]
00b688f1  8bd9  MOV EBX,ECX
00b688f3  8b4c2428  MOV ECX,dword ptr [ESP + 0x28]
00b688f7  89442408  MOV dword ptr [ESP + 0x8],EAX
00b688fb  6a01  PUSH 0x1
00b688fd  8d44240c  LEA EAX,[ESP + 0xc]
00b68901  894c2410  MOV dword ptr [ESP + 0x10],ECX
00b68905  50  PUSH EAX
00b68906  8bce  MOV ECX,ESI
00b68908  c7442418388b5b06  MOV dword ptr [ESP + 0x18],0x65b8b38
00b68910  8954241c  MOV dword ptr [ESP + 0x1c],EDX
00b68914  e8a7fbc6ff  CALL 0x007d84c0
00b68919  84c0  TEST AL,AL
00b6891b  746d  JZ 0x00b6898a
00b6891d  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00b68920  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00b68923  57  PUSH EDI
00b68924  51  PUSH ECX
00b68925  6a07  PUSH 0x7
00b68927  52  PUSH EDX
00b68928  e8435697ff  CALL 0x004ddf70
00b6892d  83c40c  ADD ESP,0xc
00b68930  8bce  MOV ECX,ESI
00b68932  50  PUSH EAX
00b68933  e8b8f0c6ff  CALL 0x007d79f0
00b68938  8b4b0c  MOV ECX,dword ptr [EBX + 0xc]
00b6893b  2b4b08  SUB ECX,dword ptr [EBX + 0x8]
00b6893e  b8abaaaa2a  MOV EAX,0x2aaaaaab
00b68943  f7e9  IMUL ECX
00b68945  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00b68948  c1fa02  SAR EDX,0x2
00b6894b  8bc2  MOV EAX,EDX
00b6894d  c1e81f  SHR EAX,0x1f
00b68950  03c2  ADD EAX,EDX
00b68952  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00b68955  51  PUSH ECX
00b68956  50  PUSH EAX
00b68957  52  PUSH EDX
00b68958  e8135697ff  CALL 0x004ddf70
00b6895d  83c40c  ADD ESP,0xc
00b68960  8bce  MOV ECX,ESI
00b68962  50  PUSH EAX
00b68963  e888f0c6ff  CALL 0x007d79f0
00b68968  8b7b08  MOV EDI,dword ptr [EBX + 0x8]
00b6896b  8b5b0c  MOV EBX,dword ptr [EBX + 0xc]
00b6896e  3bfb  CMP EDI,EBX
00b68970  7410  JZ 0x00b68982
00b68972  56  PUSH ESI
00b68973  8d4f08  LEA ECX,[EDI + 0x8]
00b68976  e8b5faffff  CALL 0x00b68430
00b6897b  83c718  ADD EDI,0x18
00b6897e  3bfb  CMP EDI,EBX
00b68980  75f0  JNZ 0x00b68972
00b68982  8bce  MOV ECX,ESI
00b68984  e8e7f0c6ff  CALL 0x007d7a70
00b68989  5f  POP EDI
00b6898a  8a4614  MOV AL,byte ptr [ESI + 0x14]
00b6898d  5e  POP ESI
00b6898e  5b  POP EBX
00b6898f  83c410  ADD ESP,0x10
00b68992  c21400  RET 0x14
Owned instructions=66 owned bytes=181 gap/nonowned bytes=0
