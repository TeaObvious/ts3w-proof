# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void LotTerrain_DiminishPaintAtSample(void * this, uint x, uint z, uchar decrease)
Owned ranges: [[00af0290, 00af036d]]

00af0290  83ec08  SUB ESP,0x8
00af0293  53  PUSH EBX
00af0294  8b5c2414  MOV EBX,dword ptr [ESP + 0x14]
00af0298  55  PUSH EBP
00af0299  57  PUSH EDI
00af029a  8bf9  MOV EDI,ECX
00af029c  8b4f34  MOV ECX,dword ptr [EDI + 0x34]
00af029f  2b4f30  SUB ECX,dword ptr [EDI + 0x30]
00af02a2  b8abaaaa2a  MOV EAX,0x2aaaaaab
00af02a7  f7e9  IMUL ECX
00af02a9  c1fa02  SAR EDX,0x2
00af02ac  8bc2  MOV EAX,EDX
00af02ae  c1e81f  SHR EAX,0x1f
00af02b1  03c2  ADD EAX,EDX
00af02b3  bd00000000  MOV EBP,0x0
00af02b8  89442410  MOV dword ptr [ESP + 0x10],EAX
00af02bc  896c240c  MOV dword ptr [ESP + 0xc],EBP
00af02c0  0f848d000000  JZ 0x00af0353
00af02c6  56  PUSH ESI
00af02c7  3b6f18  CMP EBP,dword ptr [EDI + 0x18]
00af02ca  747b  JZ 0x00af0347
00af02cc  8b4760  MOV EAX,dword ptr [EDI + 0x60]
00af02cf  8b0ca8  MOV ECX,dword ptr [EAX + EBP*0x4]
00af02d2  8bd3  MOV EDX,EBX
00af02d4  c1fa02  SAR EDX,0x2
00af02d7  8bc2  MOV EAX,EDX
00af02d9  0faf4108  IMUL EAX,dword ptr [ECX + 0x8]
00af02dd  8b54241c  MOV EDX,dword ptr [ESP + 0x1c]
00af02e1  c1fa02  SAR EDX,0x2
00af02e4  03c2  ADD EAX,EDX
00af02e6  8b5130  MOV EDX,dword ptr [ECX + 0x30]
00af02e9  0fb73442  MOVZX ESI,word ptr [EDX + EAX*0x2]
00af02ed  8bd6  MOV EDX,ESI
00af02ef  c1ea0f  SHR EDX,0xf
00af02f2  f6c201  TEST DL,0x1
00af02f5  7407  JZ 0x00af02fe
00af02f7  8b4910  MOV ECX,dword ptr [ECX + 0x10]
00af02fa  03c8  ADD ECX,EAX
00af02fc  eb1a  JMP 0x00af0318
00af02fe  8b4920  MOV ECX,dword ptr [ECX + 0x20]
00af0301  0fb7c6  MOVZX EAX,SI
00af0304  8bd3  MOV EDX,EBX
00af0306  83e203  AND EDX,0x3
00af0309  8d0482  LEA EAX,[EDX + EAX*0x4]
00af030c  8b54241c  MOV EDX,dword ptr [ESP + 0x1c]
00af0310  8d0c81  LEA ECX,[ECX + EAX*0x4]
00af0313  83e203  AND EDX,0x3
00af0316  03ca  ADD ECX,EDX
00af0318  0fb601  MOVZX EAX,byte ptr [ECX]
00af031b  0fb64c2424  MOVZX ECX,byte ptr [ESP + 0x24]
00af0320  3bc1  CMP EAX,ECX
00af0322  7704  JA 0x00af0328
00af0324  33f6  XOR ESI,ESI
00af0326  eb04  JMP 0x00af032c
00af0328  8bf0  MOV ESI,EAX
00af032a  2bf1  SUB ESI,ECX
00af032c  3bf0  CMP ESI,EAX
00af032e  740f  JZ 0x00af033f
00af0330  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
00af0334  56  PUSH ESI
00af0335  53  PUSH EBX
00af0336  50  PUSH EAX
00af0337  55  PUSH EBP
00af0338  8bcf  MOV ECX,EDI
00af033a  e8d1e7ffff  CALL 0x00aeeb10
00af033f  01742410  ADD dword ptr [ESP + 0x10],ESI
00af0343  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00af0347  83c501  ADD EBP,0x1
00af034a  3be8  CMP EBP,EAX
00af034c  0f8275ffffff  JC 0x00af02c7
00af0352  5e  POP ESI
00af0353  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
00af0357  8b542418  MOV EDX,dword ptr [ESP + 0x18]
00af035b  51  PUSH ECX
00af035c  53  PUSH EBX
00af035d  52  PUSH EDX
00af035e  8bcf  MOV ECX,EDI
00af0360  e8cbf4ffff  CALL 0x00aef830
00af0365  5f  POP EDI
00af0366  5d  POP EBP
00af0367  5b  POP EBX
00af0368  83c408  ADD ESP,0x8
00af036b  c20c00  RET 0xc
