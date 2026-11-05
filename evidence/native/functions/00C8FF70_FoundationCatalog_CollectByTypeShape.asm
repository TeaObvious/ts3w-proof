# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 00C8FF70_FoundationCatalog_CollectByTypeShape.c
Owned ranges: [[00c8ff70, 00c8ffe4]]

00c8ff70  55  PUSH EBP
00c8ff71  8ba9b0000000  MOV EBP,dword ptr [ECX + 0xb0]
00c8ff77  57  PUSH EDI
00c8ff78  8bb9ac000000  MOV EDI,dword ptr [ECX + 0xac]
00c8ff7e  3bfd  CMP EDI,EBP
00c8ff80  745e  JZ 0x00c8ffe0
00c8ff82  53  PUSH EBX
00c8ff83  8b5c2414  MOV EBX,dword ptr [ESP + 0x14]
00c8ff87  56  PUSH ESI
00c8ff88  8b74241c  MOV ESI,dword ptr [ESP + 0x1c]
00c8ff8c  8d642400  LEA ESP,[ESP]
00c8ff90  8b4f10  MOV ECX,dword ptr [EDI + 0x10]
00c8ff93  85c9  TEST ECX,ECX
00c8ff95  7440  JZ 0x00c8ffd7
00c8ff97  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00c8ff9b  398188000000  CMP dword ptr [ECX + 0x88],EAX
00c8ffa1  7534  JNZ 0x00c8ffd7
00c8ffa3  83fbff  CMP EBX,-0x1
00c8ffa6  7408  JZ 0x00c8ffb0
00c8ffa8  3999e8000000  CMP dword ptr [ECX + 0xe8],EBX
00c8ffae  7527  JNZ 0x00c8ffd7
00c8ffb0  8b4604  MOV EAX,dword ptr [ESI + 0x4]
00c8ffb3  3b4608  CMP EAX,dword ptr [ESI + 0x8]
00c8ffb6  894c241c  MOV dword ptr [ESP + 0x1c],ECX
00c8ffba  730e  JNC 0x00c8ffca
00c8ffbc  85c0  TEST EAX,EAX
00c8ffbe  8d5004  LEA EDX,[EAX + 0x4]
00c8ffc1  895604  MOV dword ptr [ESI + 0x4],EDX
00c8ffc4  7411  JZ 0x00c8ffd7
00c8ffc6  8908  MOV dword ptr [EAX],ECX
00c8ffc8  eb0d  JMP 0x00c8ffd7
00c8ffca  8d4c241c  LEA ECX,[ESP + 0x1c]
00c8ffce  51  PUSH ECX
00c8ffcf  50  PUSH EAX
00c8ffd0  8bce  MOV ECX,ESI
00c8ffd2  e84924cfff  CALL 0x00982420
00c8ffd7  83c718  ADD EDI,0x18
00c8ffda  3bfd  CMP EDI,EBP
00c8ffdc  75b2  JNZ 0x00c8ff90
00c8ffde  5e  POP ESI
00c8ffdf  5b  POP EBX
00c8ffe0  5f  POP EDI
00c8ffe1  5d  POP EBP
00c8ffe2  c20c00  RET 0xc
