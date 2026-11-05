# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 00C8FEB0_PatternCatalog_CollectFloorByMask.c
Owned ranges: [[00c8feb0, 00c8ff09]]

00c8feb0  53  PUSH EBX
00c8feb1  8b5948  MOV EBX,dword ptr [ECX + 0x48]
00c8feb4  57  PUSH EDI
00c8feb5  8b7944  MOV EDI,dword ptr [ECX + 0x44]
00c8feb8  3bfb  CMP EDI,EBX
00c8feba  7449  JZ 0x00c8ff05
00c8febc  55  PUSH EBP
00c8febd  8b6c2410  MOV EBP,dword ptr [ESP + 0x10]
00c8fec1  56  PUSH ESI
00c8fec2  8b742418  MOV ESI,dword ptr [ESP + 0x18]
00c8fec6  8b4f10  MOV ECX,dword ptr [EDI + 0x10]
00c8fec9  85c9  TEST ECX,ECX
00c8fecb  742f  JZ 0x00c8fefc
00c8fecd  85a9a0000000  TEST dword ptr [ECX + 0xa0],EBP
00c8fed3  7427  JZ 0x00c8fefc
00c8fed5  8b4604  MOV EAX,dword ptr [ESI + 0x4]
00c8fed8  3b4608  CMP EAX,dword ptr [ESI + 0x8]
00c8fedb  894c2418  MOV dword ptr [ESP + 0x18],ECX
00c8fedf  730e  JNC 0x00c8feef
00c8fee1  85c0  TEST EAX,EAX
00c8fee3  8d5004  LEA EDX,[EAX + 0x4]
00c8fee6  895604  MOV dword ptr [ESI + 0x4],EDX
00c8fee9  7411  JZ 0x00c8fefc
00c8feeb  8908  MOV dword ptr [EAX],ECX
00c8feed  eb0d  JMP 0x00c8fefc
00c8feef  8d4c2418  LEA ECX,[ESP + 0x18]
00c8fef3  51  PUSH ECX
00c8fef4  50  PUSH EAX
00c8fef5  8bce  MOV ECX,ESI
00c8fef7  e82425cfff  CALL 0x00982420
00c8fefc  83c718  ADD EDI,0x18
00c8feff  3bfb  CMP EDI,EBX
00c8ff01  75c3  JNZ 0x00c8fec6
00c8ff03  5e  POP ESI
00c8ff04  5d  POP EBP
00c8ff05  5f  POP EDI
00c8ff06  5b  POP EBX
00c8ff07  c20800  RET 0x8
