# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 00C905A0_TerrainPaintCatalog_CollectByCategory.c
Owned ranges: [[00c905a0, 00c90605]]

00c905a0  53  PUSH EBX
00c905a1  8bd9  MOV EBX,ECX
00c905a3  57  PUSH EDI
00c905a4  8bbb4c010000  MOV EDI,dword ptr [EBX + 0x14c]
00c905aa  3bbb50010000  CMP EDI,dword ptr [EBX + 0x150]
00c905b0  744f  JZ 0x00c90601
00c905b2  55  PUSH EBP
00c905b3  8b6c2410  MOV EBP,dword ptr [ESP + 0x10]
00c905b7  56  PUSH ESI
00c905b8  8b742418  MOV ESI,dword ptr [ESP + 0x18]
00c905bc  8d642400  LEA ESP,[ESP]
00c905c0  8b4710  MOV EAX,dword ptr [EDI + 0x10]
00c905c3  39a8d4000000  CMP dword ptr [EAX + 0xd4],EBP
00c905c9  7529  JNZ 0x00c905f4
00c905cb  8bc8  MOV ECX,EAX
00c905cd  8b4604  MOV EAX,dword ptr [ESI + 0x4]
00c905d0  3b4608  CMP EAX,dword ptr [ESI + 0x8]
00c905d3  894c2418  MOV dword ptr [ESP + 0x18],ECX
00c905d7  730e  JNC 0x00c905e7
00c905d9  85c0  TEST EAX,EAX
00c905db  8d5004  LEA EDX,[EAX + 0x4]
00c905de  895604  MOV dword ptr [ESI + 0x4],EDX
00c905e1  7411  JZ 0x00c905f4
00c905e3  8908  MOV dword ptr [EAX],ECX
00c905e5  eb0d  JMP 0x00c905f4
00c905e7  8d4c2418  LEA ECX,[ESP + 0x18]
00c905eb  51  PUSH ECX
00c905ec  50  PUSH EAX
00c905ed  8bce  MOV ECX,ESI
00c905ef  e82c1ecfff  CALL 0x00982420
00c905f4  83c718  ADD EDI,0x18
00c905f7  3bbb50010000  CMP EDI,dword ptr [EBX + 0x150]
00c905fd  75c1  JNZ 0x00c905c0
00c905ff  5e  POP ESI
00c90600  5d  POP EBP
00c90601  5f  POP EDI
00c90602  5b  POP EBX
00c90603  c20800  RET 0x8
