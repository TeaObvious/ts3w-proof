# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SACS_ComponentReleaseDriverRows_94D320
Paired actual annotated Ghidra pseudocode: 0094D320_SACS_ComponentReleaseDriverRows_94D320.c
Owned ranges: [[0094d320, 0094d38c]]
Envelope bytes=109

GHIDRA LISTING (original bytes; nonowned alignment explicit)
0094d320  51  PUSH ECX
0094d321  55  PUSH EBP
0094d322  8b690c  MOV EBP,dword ptr [ECX + 0xc]
0094d325  57  PUSH EDI
0094d326  8b7908  MOV EDI,dword ptr [ECX + 0x8]
0094d329  3bfd  CMP EDI,EBP
0094d32b  894c2408  MOV dword ptr [ESP + 0x8],ECX
0094d32f  744e  JZ 0x0094d37f
0094d331  53  PUSH EBX
0094d332  56  PUSH ESI
0094d333  8b37  MOV ESI,dword ptr [EDI]
0094d335  85f6  TEST ESI,ESI
0094d337  7439  JZ 0x0094d372
0094d339  8bce  MOV ECX,ESI
0094d33b  e8302cebff  CALL 0x007fff70
0094d340  8b4608  MOV EAX,dword ptr [ESI + 0x8]
0094d343  8b5004  MOV EDX,dword ptr [EAX + 0x4]
0094d346  8d5e08  LEA EBX,[ESI + 0x8]
0094d349  8bcb  MOV ECX,EBX
0094d34b  ffd2  CALL EDX
0094d34d  85c0  TEST EAX,EAX
0094d34f  7421  JZ 0x0094d372
0094d351  e83ac0e1ff  CALL 0x00769390
0094d356  8b10  MOV EDX,dword ptr [EAX]
0094d358  6a20  PUSH 0x20
0094d35a  8bc8  MOV ECX,EAX
0094d35c  8b82d4000000  MOV EAX,dword ptr [EDX + 0xd4]
0094d362  56  PUSH ESI
0094d363  ffd0  CALL EAX
0094d365  84c0  TEST AL,AL
0094d367  7409  JZ 0x0094d372
0094d369  8b13  MOV EDX,dword ptr [EBX]
0094d36b  8b4204  MOV EAX,dword ptr [EDX + 0x4]
0094d36e  8bcb  MOV ECX,EBX
0094d370  ffd0  CALL EAX
0094d372  83c704  ADD EDI,0x4
0094d375  3bfd  CMP EDI,EBP
0094d377  75ba  JNZ 0x0094d333
0094d379  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
0094d37d  5e  POP ESI
0094d37e  5b  POP EBX
0094d37f  8b5108  MOV EDX,dword ptr [ECX + 0x8]
0094d382  5f  POP EDI
0094d383  89510c  MOV dword ptr [ECX + 0xc],EDX
0094d386  b001  MOV AL,0x1
0094d388  5d  POP EBP
0094d389  59  POP ECX
0094d38a  c20400  RET 0x4
Owned instructions=48 owned bytes=109 gap/nonowned bytes=0
