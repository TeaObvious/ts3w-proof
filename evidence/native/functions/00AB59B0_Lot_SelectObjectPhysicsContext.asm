# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined4 Lot_SelectObjectPhysicsContext(void * this, void * param_1)
Owned ranges: [[00ab59b0, 00ab5a5e]]

00ab59b0  56  PUSH ESI
00ab59b1  8bf1  MOV ESI,ECX
00ab59b3  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
00ab59b7  85c9  TEST ECX,ECX
00ab59b9  0f849a000000  JZ 0x00ab5a59
00ab59bf  a108df1e01  MOV EAX,[0x011edf08]
00ab59c4  50  PUSH EAX
00ab59c5  e896e8e7ff  CALL 0x00934260
00ab59ca  85c0  TEST EAX,EAX
00ab59cc  0f8487000000  JZ 0x00ab5a59
00ab59d2  8b482c  MOV ECX,dword ptr [EAX + 0x2c]
00ab59d5  c1e905  SHR ECX,0x5
00ab59d8  f6c101  TEST CL,0x1
00ab59db  8b4818  MOV ECX,dword ptr [EAX + 0x18]
00ab59de  8bc1  MOV EAX,ECX
00ab59e0  7410  JZ 0x00ab59f2
00ab59e2  2dffffff7f  SUB EAX,0x7fffffff
00ab59e7  f7d8  NEG EAX
00ab59e9  1bc0  SBB EAX,EAX
00ab59eb  23c1  AND EAX,ECX
00ab59ed  83c001  ADD EAX,0x1
00ab59f0  eb0b  JMP 0x00ab59fd
00ab59f2  2dffffff7f  SUB EAX,0x7fffffff
00ab59f7  f7d8  NEG EAX
00ab59f9  1bc0  SBB EAX,EAX
00ab59fb  23c1  AND EAX,ECX
00ab59fd  3b867c010000  CMP EAX,dword ptr [ESI + 0x17c]
00ab5a03  8d967c010000  LEA EDX,[ESI + 0x17c]
00ab5a09  57  PUSH EDI
00ab5a0a  8944240c  MOV dword ptr [ESP + 0xc],EAX
00ab5a0e  8bfa  MOV EDI,EDX
00ab5a10  7c04  JL 0x00ab5a16
00ab5a12  8d7c240c  LEA EDI,[ESP + 0xc]
00ab5a16  8b8e7c030000  MOV ECX,dword ptr [ESI + 0x37c]
00ab5a1c  8b8678030000  MOV EAX,dword ptr [ESI + 0x378]
00ab5a22  2bc1  SUB EAX,ECX
00ab5a24  c1f802  SAR EAX,0x2
00ab5a27  2b02  SUB EAX,dword ptr [EDX]
00ab5a29  8bb684030000  MOV ESI,dword ptr [ESI + 0x384]
00ab5a2f  0307  ADD EAX,dword ptr [EDI]
00ab5a31  5f  POP EDI
00ab5a32  8bc8  MOV ECX,EAX
00ab5a34  8d8100000001  LEA EAX,[ECX + 0x1000000]
00ab5a3a  99  CDQ
00ab5a3b  83e23f  AND EDX,0x3f
00ab5a3e  03c2  ADD EAX,EDX
00ab5a40  c1f806  SAR EAX,0x6
00ab5a43  2d00000400  SUB EAX,0x40000
00ab5a48  8bd0  MOV EDX,EAX
00ab5a4a  8b0486  MOV EAX,dword ptr [ESI + EAX*0x4]
00ab5a4d  c1e206  SHL EDX,0x6
00ab5a50  2bca  SUB ECX,EDX
00ab5a52  8b0488  MOV EAX,dword ptr [EAX + ECX*0x4]
00ab5a55  5e  POP ESI
00ab5a56  c20400  RET 0x4
00ab5a59  33c0  XOR EAX,EAX
00ab5a5b  5e  POP ESI
00ab5a5c  c20400  RET 0x4
