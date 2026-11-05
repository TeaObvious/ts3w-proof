# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void * ObjectRegistry_FindBorrowed(void * this, ulonglong guid)
Owned ranges: [[00937f80, 00937fb0]]

00937f80  83ec08  SUB ESP,0x8
00937f83  56  PUSH ESI
00937f84  8bf1  MOV ESI,ECX
00937f86  8d442410  LEA EAX,[ESP + 0x10]
00937f8a  50  PUSH EAX
00937f8b  8d4c2408  LEA ECX,[ESP + 0x8]
00937f8f  51  PUSH ECX
00937f90  8d4e10  LEA ECX,[ESI + 0x10]
00937f93  e888fbffff  CALL 0x00937b20
00937f98  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
00937f9c  8bc1  MOV EAX,ECX
00937f9e  2b8634100000  SUB EAX,dword ptr [ESI + 0x1034]
00937fa4  5e  POP ESI
00937fa5  f7d8  NEG EAX
00937fa7  1bc0  SBB EAX,EAX
00937fa9  23c1  AND EAX,ECX
00937fab  83c408  ADD ESP,0x8
00937fae  c20800  RET 0x8
