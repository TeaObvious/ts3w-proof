# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 00C90310_RoofCatalog_CollectByDiagonalFlag.c
Owned ranges: [[00c90310, 00c90374]]

00c90310  53  PUSH EBX
00c90311  8bd9  MOV EBX,ECX
00c90313  55  PUSH EBP
00c90314  8babe8000000  MOV EBP,dword ptr [EBX + 0xe8]
00c9031a  3babec000000  CMP EBP,dword ptr [EBX + 0xec]
00c90320  744e  JZ 0x00c90370
00c90322  56  PUSH ESI
00c90323  57  PUSH EDI
00c90324  8b7c2418  MOV EDI,dword ptr [ESP + 0x18]
00c90328  8b7510  MOV ESI,dword ptr [EBP + 0x10]
00c9032b  85f6  TEST ESI,ESI
00c9032d  7434  JZ 0x00c90363
00c9032f  8bce  MOV ECX,ESI
00c90331  e82aa60000  CALL 0x00c9a960
00c90336  3a442414  CMP AL,byte ptr [ESP + 0x14]
00c9033a  7527  JNZ 0x00c90363
00c9033c  8b4704  MOV EAX,dword ptr [EDI + 0x4]
00c9033f  3b4708  CMP EAX,dword ptr [EDI + 0x8]
00c90342  89742418  MOV dword ptr [ESP + 0x18],ESI
00c90346  730e  JNC 0x00c90356
00c90348  85c0  TEST EAX,EAX
00c9034a  8d4804  LEA ECX,[EAX + 0x4]
00c9034d  894f04  MOV dword ptr [EDI + 0x4],ECX
00c90350  7411  JZ 0x00c90363
00c90352  8930  MOV dword ptr [EAX],ESI
00c90354  eb0d  JMP 0x00c90363
00c90356  8d542418  LEA EDX,[ESP + 0x18]
00c9035a  52  PUSH EDX
00c9035b  50  PUSH EAX
00c9035c  8bcf  MOV ECX,EDI
00c9035e  e8bd20cfff  CALL 0x00982420
00c90363  83c518  ADD EBP,0x18
00c90366  3babec000000  CMP EBP,dword ptr [EBX + 0xec]
00c9036c  75ba  JNZ 0x00c90328
00c9036e  5f  POP EDI
00c9036f  5e  POP ESI
00c90370  5d  POP EBP
00c90371  5b  POP EBX
00c90372  c20800  RET 0x8
