# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 00C8FE50_PatternCatalog_CollectWallByMask.c
Owned ranges: [[00c8fe50, 00c8fea9]]

00c8fe50  53  PUSH EBX
00c8fe51  8b595c  MOV EBX,dword ptr [ECX + 0x5c]
00c8fe54  57  PUSH EDI
00c8fe55  8b7958  MOV EDI,dword ptr [ECX + 0x58]
00c8fe58  3bfb  CMP EDI,EBX
00c8fe5a  7449  JZ 0x00c8fea5
00c8fe5c  55  PUSH EBP
00c8fe5d  8b6c2410  MOV EBP,dword ptr [ESP + 0x10]
00c8fe61  56  PUSH ESI
00c8fe62  8b742418  MOV ESI,dword ptr [ESP + 0x18]
00c8fe66  8b4f10  MOV ECX,dword ptr [EDI + 0x10]
00c8fe69  85c9  TEST ECX,ECX
00c8fe6b  742f  JZ 0x00c8fe9c
00c8fe6d  85a9a0000000  TEST dword ptr [ECX + 0xa0],EBP
00c8fe73  7427  JZ 0x00c8fe9c
00c8fe75  8b4604  MOV EAX,dword ptr [ESI + 0x4]
00c8fe78  3b4608  CMP EAX,dword ptr [ESI + 0x8]
00c8fe7b  894c2418  MOV dword ptr [ESP + 0x18],ECX
00c8fe7f  730e  JNC 0x00c8fe8f
00c8fe81  85c0  TEST EAX,EAX
00c8fe83  8d5004  LEA EDX,[EAX + 0x4]
00c8fe86  895604  MOV dword ptr [ESI + 0x4],EDX
00c8fe89  7411  JZ 0x00c8fe9c
00c8fe8b  8908  MOV dword ptr [EAX],ECX
00c8fe8d  eb0d  JMP 0x00c8fe9c
00c8fe8f  8d4c2418  LEA ECX,[ESP + 0x18]
00c8fe93  51  PUSH ECX
00c8fe94  50  PUSH EAX
00c8fe95  8bce  MOV ECX,ESI
00c8fe97  e88425cfff  CALL 0x00982420
00c8fe9c  83c718  ADD EDI,0x18
00c8fe9f  3bfb  CMP EDI,EBX
00c8fea1  75c3  JNZ 0x00c8fe66
00c8fea3  5e  POP ESI
00c8fea4  5d  POP EBP
00c8fea5  5f  POP EDI
00c8fea6  5b  POP EBX
00c8fea7  c20800  RET 0x8
