# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool SlotPlacement_MatchesProductFlags(void * this, int param_1)
Owned ranges: [[0080d4c0, 0080d508]]

0080d4c0  56  PUSH ESI
0080d4c1  8bf1  MOV ESI,ECX
0080d4c3  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
0080d4c7  85c9  TEST ECX,ECX
0080d4c9  7438  JZ 0x0080d503
0080d4cb  e8b0a24800  CALL 0x00c97780
0080d4d0  8b4e18  MOV ECX,dword ptr [ESI + 0x18]
0080d4d3  f6c101  TEST CL,0x1
0080d4d6  752b  JNZ 0x0080d503
0080d4d8  a801  TEST AL,0x1
0080d4da  7527  JNZ 0x0080d503
0080d4dc  8bd0  MOV EDX,EAX
0080d4de  81e238ff0c00  AND EDX,0xcff38
0080d4e4  741d  JZ 0x0080d503
0080d4e6  8bf1  MOV ESI,ECX
0080d4e8  33f0  XOR ESI,EAX
0080d4ea  f7c600000002  TEST ESI,0x2000000
0080d4f0  7511  JNZ 0x0080d503
0080d4f2  23ca  AND ECX,EDX
0080d4f4  81e138ff0c00  AND ECX,0xcff38
0080d4fa  3bca  CMP ECX,EDX
0080d4fc  0f94c0  SETZ AL
0080d4ff  5e  POP ESI
0080d500  c20400  RET 0x4
0080d503  32c0  XOR AL,AL
0080d505  5e  POP ESI
0080d506  c20400  RET 0x4
