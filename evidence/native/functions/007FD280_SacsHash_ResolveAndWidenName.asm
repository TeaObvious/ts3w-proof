# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SacsHash_ResolveAndWidenName
Paired actual annotated Ghidra pseudocode: 007FD280_SacsHash_ResolveAndWidenName.c
Owned ranges: [[007fd280, 007fd303]]
Envelope bytes=132

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007fd280  8b442404  MOV EAX,dword ptr [ESP + 0x4]
007fd284  56  PUSH ESI
007fd285  6a00  PUSH 0x0
007fd287  50  PUSH EAX
007fd288  e8b3bdfdff  CALL 0x007d9040
007fd28d  8bf0  MOV ESI,EAX
007fd28f  83c408  ADD ESP,0x8
007fd292  85f6  TEST ESI,ESI
007fd294  7468  JZ 0x007fd2fe
007fd296  8d5001  LEA EDX,[EAX + 0x1]
007fd299  8da42400000000  LEA ESP,[ESP]
007fd2a0  8a08  MOV CL,byte ptr [EAX]
007fd2a2  83c001  ADD EAX,0x1
007fd2a5  84c9  TEST CL,CL
007fd2a7  75f7  JNZ 0x007fd2a0
007fd2a9  57  PUSH EDI
007fd2aa  2bc2  SUB EAX,EDX
007fd2ac  8bf8  MOV EDI,EAX
007fd2ae  33c9  XOR ECX,ECX
007fd2b0  8d4701  LEA EAX,[EDI + 0x1]
007fd2b3  ba02000000  MOV EDX,0x2
007fd2b8  f7e2  MUL EDX
007fd2ba  6a00  PUSH 0x0
007fd2bc  0f90c1  SETO CL
007fd2bf  6a00  PUSH 0x0
007fd2c1  6a00  PUSH 0x0
007fd2c3  6a00  PUSH 0x0
007fd2c5  6820040201  PUSH 0x1020420
007fd2ca  f7d9  NEG ECX
007fd2cc  0bc8  OR ECX,EAX
007fd2ce  51  PUSH ECX
007fd2cf  e82c72ceff  CALL 0x004e4500
007fd2d4  8a0e  MOV CL,byte ptr [ESI]
007fd2d6  83c418  ADD ESP,0x18
007fd2d9  84c9  TEST CL,CL
007fd2db  8bd0  MOV EDX,EAX
007fd2dd  7414  JZ 0x007fd2f3
007fd2df  90  NOP
007fd2e0  660fbec9  MOVSX CX,CL
007fd2e4  83c601  ADD ESI,0x1
007fd2e7  66890a  MOV word ptr [EDX],CX
007fd2ea  8a0e  MOV CL,byte ptr [ESI]
007fd2ec  83c202  ADD EDX,0x2
007fd2ef  84c9  TEST CL,CL
007fd2f1  75ed  JNZ 0x007fd2e0
007fd2f3  66c704780000  MOV word ptr [EAX + EDI*0x2],0x0
007fd2f9  5f  POP EDI
007fd2fa  5e  POP ESI
007fd2fb  c20400  RET 0x4
007fd2fe  33c0  XOR EAX,EAX
007fd300  5e  POP ESI
007fd301  c20400  RET 0x4
Owned instructions=52 owned bytes=132 gap/nonowned bytes=0
