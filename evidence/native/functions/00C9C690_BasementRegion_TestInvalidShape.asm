# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool BasementRegion_TestInvalidShape(void * param_1, char param_2, char * param_3, char * param_4, void * param_5)
Owned ranges: [[00c9c690, 00c9c805]]

00c9c690  55  PUSH EBP
00c9c691  8bec  MOV EBP,ESP
00c9c693  83e4f0  AND ESP,0xfffffff0
00c9c696  83ec54  SUB ESP,0x54
00c9c699  53  PUSH EBX
00c9c69a  56  PUSH ESI
00c9c69b  8b7510  MOV ESI,dword ptr [EBP + 0x10]
00c9c69e  8a4602  MOV AL,byte ptr [ESI + 0x2]
00c9c6a1  57  PUSH EDI
00c9c6a2  8b7d14  MOV EDI,dword ptr [EBP + 0x14]
00c9c6a5  3a4702  CMP AL,byte ptr [EDI + 0x2]
00c9c6a8  0f854f010000  JNZ 0x00c9c7fd
00c9c6ae  807d0c00  CMP byte ptr [EBP + 0xc],0x0
00c9c6b2  c644241b00  MOV byte ptr [ESP + 0x1b],0x0
00c9c6b7  753c  JNZ 0x00c9c6f5
00c9c6b9  8a0e  MOV CL,byte ptr [ESI]
00c9c6bb  3a0f  CMP CL,byte ptr [EDI]
00c9c6bd  7d0c  JGE 0x00c9c6cb
00c9c6bf  8a5601  MOV DL,byte ptr [ESI + 0x1]
00c9c6c2  3a5701  CMP DL,byte ptr [EDI + 0x1]
00c9c6c5  0f8c27010000  JL 0x00c9c7f2
00c9c6cb  8b7d18  MOV EDI,dword ptr [EBP + 0x18]
00c9c6ce  85ff  TEST EDI,EDI
00c9c6d0  0f8427010000  JZ 0x00c9c7fd
00c9c6d6  8b4508  MOV EAX,dword ptr [EBP + 0x8]
00c9c6d9  56  PUSH ESI
00c9c6da  50  PUSH EAX
00c9c6db  68eb000000  PUSH 0xeb
00c9c6e0  8d4c242c  LEA ECX,[ESP + 0x2c]
00c9c6e4  e8d7a3e3ff  CALL 0x00ad6ac0
00c9c6e9  8d4c2420  LEA ECX,[ESP + 0x20]
00c9c6ed  51  PUSH ECX
00c9c6ee  8bcf  MOV ECX,EDI
00c9c6f0  e9ea000000  JMP 0x00c9c7df
00c9c6f5  8a16  MOV DL,byte ptr [ESI]
00c9c6f7  3a17  CMP DL,byte ptr [EDI]
00c9c6f9  8b5d18  MOV EBX,dword ptr [EBP + 0x18]
00c9c6fc  753d  JNZ 0x00c9c73b
00c9c6fe  8a4601  MOV AL,byte ptr [ESI + 0x1]
00c9c701  3a4701  CMP AL,byte ptr [EDI + 0x1]
00c9c704  7535  JNZ 0x00c9c73b
00c9c706  85db  TEST EBX,EBX
00c9c708  0f84ef000000  JZ 0x00c9c7fd
00c9c70e  8b4d08  MOV ECX,dword ptr [EBP + 0x8]
00c9c711  56  PUSH ESI
00c9c712  51  PUSH ECX
00c9c713  68eb000000  PUSH 0xeb
00c9c718  8d4c242c  LEA ECX,[ESP + 0x2c]
00c9c71c  e89fa3e3ff  CALL 0x00ad6ac0
00c9c721  8d542420  LEA EDX,[ESP + 0x20]
00c9c725  52  PUSH EDX
00c9c726  8bcb  MOV ECX,EBX
00c9c728  e843bee3ff  CALL 0x00ad8570
00c9c72d  8d4c2420  LEA ECX,[ESP + 0x20]
00c9c731  c644241b01  MOV byte ptr [ESP + 0x1b],0x1
00c9c736  e895a9e3ff  CALL 0x00ad70d0
00c9c73b  0fbe0e  MOVSX ECX,byte ptr [ESI]
00c9c73e  0fbe4701  MOVSX EAX,byte ptr [EDI + 0x1]
00c9c742  0fbe5601  MOVSX EDX,byte ptr [ESI + 0x1]
00c9c746  2bc1  SUB EAX,ECX
00c9c748  0fbe0f  MOVSX ECX,byte ptr [EDI]
00c9c74b  2bc2  SUB EAX,EDX
00c9c74d  03c1  ADD EAX,ECX
00c9c74f  2501000080  AND EAX,0x80000001
00c9c754  7905  JNS 0x00c9c75b
00c9c756  48  DEC EAX
00c9c757  83c8fe  OR EAX,0xfffffffe
00c9c75a  40  INC EAX
00c9c75b  83f801  CMP EAX,0x1
00c9c75e  7535  JNZ 0x00c9c795
00c9c760  85db  TEST EBX,EBX
00c9c762  0f8495000000  JZ 0x00c9c7fd
00c9c768  8b5508  MOV EDX,dword ptr [EBP + 0x8]
00c9c76b  56  PUSH ESI
00c9c76c  52  PUSH EDX
00c9c76d  68eb000000  PUSH 0xeb
00c9c772  8d4c242c  LEA ECX,[ESP + 0x2c]
00c9c776  e845a3e3ff  CALL 0x00ad6ac0
00c9c77b  8d442420  LEA EAX,[ESP + 0x20]
00c9c77f  50  PUSH EAX
00c9c780  8bcb  MOV ECX,EBX
00c9c782  e8e9bde3ff  CALL 0x00ad8570
00c9c787  8d4c2420  LEA ECX,[ESP + 0x20]
00c9c78b  c644241b01  MOV byte ptr [ESP + 0x1b],0x1
00c9c790  e83ba9e3ff  CALL 0x00ad70d0
00c9c795  0fbe4f01  MOVSX ECX,byte ptr [EDI + 0x1]
00c9c799  0fbe5601  MOVSX EDX,byte ptr [ESI + 0x1]
00c9c79d  0fbe06  MOVSX EAX,byte ptr [ESI]
00c9c7a0  894c241c  MOV dword ptr [ESP + 0x1c],ECX
00c9c7a4  0fbe0f  MOVSX ECX,byte ptr [EDI]
00c9c7a7  8b7c241c  MOV EDI,dword ptr [ESP + 0x1c]
00c9c7ab  03f9  ADD EDI,ECX
00c9c7ad  03d0  ADD EDX,EAX
00c9c7af  3bd7  CMP EDX,EDI
00c9c7b1  740e  JZ 0x00c9c7c1
00c9c7b3  0fbe5601  MOVSX EDX,byte ptr [ESI + 0x1]
00c9c7b7  2b4c241c  SUB ECX,dword ptr [ESP + 0x1c]
00c9c7bb  2bc2  SUB EAX,EDX
00c9c7bd  3bc1  CMP EAX,ECX
00c9c7bf  7531  JNZ 0x00c9c7f2
00c9c7c1  85db  TEST EBX,EBX
00c9c7c3  7438  JZ 0x00c9c7fd
00c9c7c5  8b4508  MOV EAX,dword ptr [EBP + 0x8]
00c9c7c8  56  PUSH ESI
00c9c7c9  50  PUSH EAX
00c9c7ca  68eb000000  PUSH 0xeb
00c9c7cf  8d4c242c  LEA ECX,[ESP + 0x2c]
00c9c7d3  e8e8a2e3ff  CALL 0x00ad6ac0
00c9c7d8  8d4c2420  LEA ECX,[ESP + 0x20]
00c9c7dc  51  PUSH ECX
00c9c7dd  8bcb  MOV ECX,EBX
00c9c7df  e88cbde3ff  CALL 0x00ad8570
00c9c7e4  8d4c2420  LEA ECX,[ESP + 0x20]
00c9c7e8  c644241b01  MOV byte ptr [ESP + 0x1b],0x1
00c9c7ed  e8dea8e3ff  CALL 0x00ad70d0
00c9c7f2  8a44241b  MOV AL,byte ptr [ESP + 0x1b]
00c9c7f6  5f  POP EDI
00c9c7f7  5e  POP ESI
00c9c7f8  5b  POP EBX
00c9c7f9  8be5  MOV ESP,EBP
00c9c7fb  5d  POP EBP
00c9c7fc  c3  RET
00c9c7fd  5f  POP EDI
00c9c7fe  5e  POP ESI
00c9c7ff  b001  MOV AL,0x1
00c9c801  5b  POP EBX
00c9c802  8be5  MOV ESP,EBP
00c9c804  5d  POP EBP
00c9c805  c3  RET
