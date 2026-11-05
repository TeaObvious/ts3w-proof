# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined FUN_00726090(void * this, uint param_1, undefined4 * param_2, char param_3)
Owned ranges: [[00726090, 007260dc]]

00726090  55  PUSH EBP
00726091  8b6c2408  MOV EBP,dword ptr [ESP + 0x8]
00726095  57  PUSH EDI
00726096  8bf9  MOV EDI,ECX
00726098  3b6f10  CMP EBP,dword ptr [EDI + 0x10]
0072609b  733b  JNC 0x007260d8
0072609d  8b4728  MOV EAX,dword ptr [EDI + 0x28]
007260a0  53  PUSH EBX
007260a1  8b5c2414  MOV EBX,dword ptr [ESP + 0x14]
007260a5  56  PUSH ESI
007260a6  8b34a8  MOV ESI,dword ptr [EAX + EBP*0x4]
007260a9  83e6fe  AND ESI,0xfffffffe
007260ac  85db  TEST EBX,EBX
007260ae  7408  JZ 0x007260b8
007260b0  8b13  MOV EDX,dword ptr [EBX]
007260b2  8b02  MOV EAX,dword ptr [EDX]
007260b4  8bcb  MOV ECX,EBX
007260b6  ffd0  CALL EAX
007260b8  85f6  TEST ESI,ESI
007260ba  7409  JZ 0x007260c5
007260bc  8b16  MOV EDX,dword ptr [ESI]
007260be  8b4204  MOV EAX,dword ptr [EDX + 0x4]
007260c1  8bce  MOV ECX,ESI
007260c3  ffd0  CALL EAX
007260c5  8b5728  MOV EDX,dword ptr [EDI + 0x28]
007260c8  33c9  XOR ECX,ECX
007260ca  384c241c  CMP byte ptr [ESP + 0x1c],CL
007260ce  5e  POP ESI
007260cf  0f94c1  SETZ CL
007260d2  03cb  ADD ECX,EBX
007260d4  890caa  MOV dword ptr [EDX + EBP*0x4],ECX
007260d7  5b  POP EBX
007260d8  5f  POP EDI
007260d9  5d  POP EBP
007260da  c20c00  RET 0xc
