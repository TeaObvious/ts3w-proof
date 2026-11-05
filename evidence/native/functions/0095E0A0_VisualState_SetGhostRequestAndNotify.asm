# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void VisualState_SetGhostRequestAndNotify(void * this, uint ghostType, uint ageGenderSpeciesFlags)
Owned ranges: [[0095e0a0, 0095e0da]]

0095e0a0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
0095e0a4  83ec08  SUB ESP,0x8
0095e0a7  85c0  TEST EAX,EAX
0095e0a9  7609  JBE 0x0095e0b4
0095e0ab  81490800000100  OR dword ptr [ECX + 0x8],0x10000
0095e0b2  eb07  JMP 0x0095e0bb
0095e0b4  816108fffffeff  AND dword ptr [ECX + 0x8],0xfffeffff
0095e0bb  890424  MOV dword ptr [ESP],EAX
0095e0be  8b442410  MOV EAX,dword ptr [ESP + 0x10]
0095e0c2  8d1424  LEA EDX,[ESP]
0095e0c5  89442404  MOV dword ptr [ESP + 0x4],EAX
0095e0c9  8b4104  MOV EAX,dword ptr [ECX + 0x4]
0095e0cc  52  PUSH EDX
0095e0cd  50  PUSH EAX
0095e0ce  6a22  PUSH 0x22
0095e0d0  e8eb75fdff  CALL 0x009356c0
0095e0d5  83c414  ADD ESP,0x14
0095e0d8  c20800  RET 0x8
