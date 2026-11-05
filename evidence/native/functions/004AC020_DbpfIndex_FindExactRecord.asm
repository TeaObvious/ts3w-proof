# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; actual Ghidra Listing and preserved non-owned envelope gaps.
Owned ranges: [[004ac020, 004ac058]]
Signature: undefined4 * DbpfIndex_FindExactRecord(void * this, undefined4 * key)

004ac020  8b442404  MOV EAX,dword ptr [ESP + 0x4]
004ac024  83ec08  SUB ESP,0x8
004ac027  56  PUSH ESI
004ac028  8d7108  LEA ESI,[ECX + 0x8]
004ac02b  50  PUSH EAX
004ac02c  8d4c2408  LEA ECX,[ESP + 0x8]
004ac030  51  PUSH ECX
004ac031  8bce  MOV ECX,ESI
004ac033  e808f03800  CALL 0x0083b040
004ac038  8b5608  MOV EDX,dword ptr [ESI + 0x8]
004ac03b  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
004ac03e  8b442404  MOV EAX,dword ptr [ESP + 0x4]
004ac042  3b0491  CMP EAX,dword ptr [ECX + EDX*0x4]
004ac045  5e  POP ESI
004ac046  7409  JZ 0x004ac051
004ac048  83c010  ADD EAX,0x10
004ac04b  83c408  ADD ESP,0x8
004ac04e  c20400  RET 0x4
004ac051  33c0  XOR EAX,EAX
004ac053  83c408  ADD ESP,0x8
004ac056  c20400  RET 0x4
