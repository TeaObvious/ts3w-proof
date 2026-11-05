# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; actual Ghidra Listing and preserved non-owned envelope gaps.
Owned ranges: [[005e6050, 005e6088]]
Signature: int * DbpfIndex_FindBucketNode(int * param_1, int * param_2, uint ignoredStackWord)

005e6050  8b442404  MOV EAX,dword ptr [ESP + 0x4]
005e6054  85c0  TEST EAX,EAX
005e6056  56  PUSH ESI
005e6057  742a  JZ 0x005e6083
005e6059  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
005e605d  8b11  MOV EDX,dword ptr [ECX]
005e605f  90  NOP
005e6060  3b10  CMP EDX,dword ptr [EAX]
005e6062  7518  JNZ 0x005e607c
005e6064  8b7108  MOV ESI,dword ptr [ECX + 0x8]
005e6067  3b7008  CMP ESI,dword ptr [EAX + 0x8]
005e606a  7510  JNZ 0x005e607c
005e606c  8b710c  MOV ESI,dword ptr [ECX + 0xc]
005e606f  3b700c  CMP ESI,dword ptr [EAX + 0xc]
005e6072  7508  JNZ 0x005e607c
005e6074  8b7104  MOV ESI,dword ptr [ECX + 0x4]
005e6077  3b7004  CMP ESI,dword ptr [EAX + 0x4]
005e607a  7409  JZ 0x005e6085
005e607c  8b4020  MOV EAX,dword ptr [EAX + 0x20]
005e607f  85c0  TEST EAX,EAX
005e6081  75dd  JNZ 0x005e6060
005e6083  33c0  XOR EAX,EAX
005e6085  5e  POP ESI
005e6086  c20c00  RET 0xc
