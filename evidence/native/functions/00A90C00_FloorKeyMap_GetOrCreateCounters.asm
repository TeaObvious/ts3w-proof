# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: pointer FloorKeyMap_GetOrCreateCounters(void * this, pointer fourKeys)
Owned ranges: [[00a90c00, 00a90c64]]

00a90c00  83ec54  SUB ESP,0x54
00a90c03  53  PUSH EBX
00a90c04  56  PUSH ESI
00a90c05  8b742460  MOV ESI,dword ptr [ESP + 0x60]
00a90c09  56  PUSH ESI
00a90c0a  8d44240c  LEA EAX,[ESP + 0xc]
00a90c0e  50  PUSH EAX
00a90c0f  8bd9  MOV EBX,ECX
00a90c11  e80ae7ffff  CALL 0x00a8f320
00a90c16  8b4b08  MOV ECX,dword ptr [EBX + 0x8]
00a90c19  8b5304  MOV EDX,dword ptr [EBX + 0x4]
00a90c1c  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00a90c20  3b048a  CMP EAX,dword ptr [EDX + ECX*0x4]
00a90c23  7535  JNZ 0x00a90c5a
00a90c25  57  PUSH EDI
00a90c26  33c0  XOR EAX,EAX
00a90c28  b910000000  MOV ECX,0x10
00a90c2d  8d7c2418  LEA EDI,[ESP + 0x18]
00a90c31  f3a5  MOVSD.REP ES:EDI,ESI
00a90c33  89442458  MOV dword ptr [ESP + 0x58],EAX
00a90c37  8944245c  MOV dword ptr [ESP + 0x5c],EAX
00a90c3b  88442464  MOV byte ptr [ESP + 0x64],AL
00a90c3f  8b442464  MOV EAX,dword ptr [ESP + 0x64]
00a90c43  50  PUSH EAX
00a90c44  8d4c241c  LEA ECX,[ESP + 0x1c]
00a90c48  51  PUSH ECX
00a90c49  8d542414  LEA EDX,[ESP + 0x14]
00a90c4d  52  PUSH EDX
00a90c4e  8bcb  MOV ECX,EBX
00a90c50  e81beaffff  CALL 0x00a8f670
00a90c55  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
00a90c59  5f  POP EDI
00a90c5a  5e  POP ESI
00a90c5b  83c040  ADD EAX,0x40
00a90c5e  5b  POP EBX
00a90c5f  83c454  ADD ESP,0x54
00a90c62  c20400  RET 0x4
