# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: uint ObjectRegistry_FindMaskByNameHash(void * this, uint nameHash)
Owned ranges: [[00937530, 00937568]]

00937530  56  PUSH ESI
00937531  8bb1c8110000  MOV ESI,dword ptr [ECX + 0x11c8]
00937537  33c0  XOR EAX,EAX
00937539  85f6  TEST ESI,ESI
0093753b  57  PUSH EDI
0093753c  7e18  JLE 0x00937556
0093753e  8b7c240c  MOV EDI,dword ptr [ESP + 0xc]
00937542  8d91c4100000  LEA EDX,[ECX + 0x10c4]
00937548  3b3a  CMP EDI,dword ptr [EDX]
0093754a  7411  JZ 0x0093755d
0093754c  83c001  ADD EAX,0x1
0093754f  83c204  ADD EDX,0x4
00937552  3bc6  CMP EAX,ESI
00937554  7cf2  JL 0x00937548
00937556  5f  POP EDI
00937557  33c0  XOR EAX,EAX
00937559  5e  POP ESI
0093755a  c20400  RET 0x4
0093755d  8b848144110000  MOV EAX,dword ptr [ECX + EAX*0x4 + 0x1144]
00937564  5f  POP EDI
00937565  5e  POP ESI
00937566  c20400  RET 0x4
