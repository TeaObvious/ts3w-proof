# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined4 TreeComponent_InitResourceIdentity(void * this, void * param_1)
Owned ranges: [[0095a460, 0095a48e]]

0095a460  56  PUSH ESI
0095a461  8bf1  MOV ESI,ECX
0095a463  8b4604  MOV EAX,dword ptr [ESI + 0x4]
0095a466  57  PUSH EDI
0095a467  8b7808  MOV EDI,dword ptr [EAX + 0x8]
0095a46a  8d4e10  LEA ECX,[ESI + 0x10]
0095a46d  51  PUSH ECX
0095a46e  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
0095a472  6829f6e5a6  PUSH 0xa6e5f629
0095a477  e814f2fdff  CALL 0x00939690
0095a47c  84c0  TEST AL,AL
0095a47e  7505  JNZ 0x0095a485
0095a480  5f  POP EDI
0095a481  5e  POP ESI
0095a482  c20400  RET 0x4
0095a485  897e20  MOV dword ptr [ESI + 0x20],EDI
0095a488  5f  POP EDI
0095a489  b001  MOV AL,0x1
0095a48b  5e  POP ESI
0095a48c  c20400  RET 0x4
