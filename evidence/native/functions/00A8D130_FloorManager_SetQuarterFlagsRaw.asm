# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void FloorManager_SetQuarterFlagsRaw(void * this, bool enabled, pointer signedTileMask4)
Owned ranges: [[00a8d130, 00a8d1bf]]

00a8d130  8b542408  MOV EDX,dword ptr [ESP + 0x8]
00a8d134  8b4128  MOV EAX,dword ptr [ECX + 0x28]
00a8d137  53  PUSH EBX
00a8d138  55  PUSH EBP
00a8d139  0fbe6a01  MOVSX EBP,byte ptr [EDX + 0x1]
00a8d13d  56  PUSH ESI
00a8d13e  0fbe7202  MOVSX ESI,byte ptr [EDX + 0x2]
00a8d142  2b7110  SUB ESI,dword ptr [ECX + 0x10]
00a8d145  8b4804  MOV ECX,dword ptr [EAX + 0x4]
00a8d148  8a5c2410  MOV BL,byte ptr [ESP + 0x10]
00a8d14c  0fafce  IMUL ECX,ESI
00a8d14f  57  PUSH EDI
00a8d150  0fbe3a  MOVSX EDI,byte ptr [EDX]
00a8d153  0fbe5203  MOVSX EDX,byte ptr [EDX + 0x3]
00a8d157  03cf  ADD ECX,EDI
00a8d159  0faf4808  IMUL ECX,dword ptr [EAX + 0x8]
00a8d15d  034810  ADD ECX,dword ptr [EAX + 0x10]
00a8d160  f6c201  TEST DL,0x1
00a8d163  8a0c29  MOV CL,byte ptr [ECX + EBP*0x1]
00a8d166  740c  JZ 0x00a8d174
00a8d168  84db  TEST BL,BL
00a8d16a  7405  JZ 0x00a8d171
00a8d16c  80c901  OR CL,0x1
00a8d16f  eb03  JMP 0x00a8d174
00a8d171  80e1fe  AND CL,0xfe
00a8d174  f6c202  TEST DL,0x2
00a8d177  740c  JZ 0x00a8d185
00a8d179  84db  TEST BL,BL
00a8d17b  7405  JZ 0x00a8d182
00a8d17d  80c902  OR CL,0x2
00a8d180  eb03  JMP 0x00a8d185
00a8d182  80e1fd  AND CL,0xfd
00a8d185  f6c204  TEST DL,0x4
00a8d188  740c  JZ 0x00a8d196
00a8d18a  84db  TEST BL,BL
00a8d18c  7405  JZ 0x00a8d193
00a8d18e  80c904  OR CL,0x4
00a8d191  eb03  JMP 0x00a8d196
00a8d193  80e1fb  AND CL,0xfb
00a8d196  f6c208  TEST DL,0x8
00a8d199  740c  JZ 0x00a8d1a7
00a8d19b  84db  TEST BL,BL
00a8d19d  7405  JZ 0x00a8d1a4
00a8d19f  80c908  OR CL,0x8
00a8d1a2  eb03  JMP 0x00a8d1a7
00a8d1a4  80e1f7  AND CL,0xf7
00a8d1a7  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00a8d1aa  0fafd6  IMUL EDX,ESI
00a8d1ad  03d7  ADD EDX,EDI
00a8d1af  0faf5008  IMUL EDX,dword ptr [EAX + 0x8]
00a8d1b3  035010  ADD EDX,dword ptr [EAX + 0x10]
00a8d1b6  5f  POP EDI
00a8d1b7  5e  POP ESI
00a8d1b8  880c2a  MOV byte ptr [EDX + EBP*0x1],CL
00a8d1bb  5d  POP EBP
00a8d1bc  5b  POP EBX
00a8d1bd  c20800  RET 0x8
