# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: WallPatternSide_ResolveOrdinalKey
Paired actual annotated Ghidra pseudocode: 00B49F20_WallPatternSide_ResolveOrdinalKey.c
Owned ranges: [[00b49f20, 00b49f73]]
Envelope bytes=84

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00b49f20  83ec08  SUB ESP,0x8
00b49f23  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
00b49f27  0fb710  MOVZX EDX,word ptr [EAX]
00b49f2a  85d2  TEST EDX,EDX
00b49f2c  8b4170  MOV EAX,dword ptr [ECX + 0x70]
00b49f2f  8954240c  MOV dword ptr [ESP + 0xc],EDX
00b49f33  7509  JNZ 0x00b49f3e
00b49f35  83c040  ADD EAX,0x40
00b49f38  83c408  ADD ESP,0x8
00b49f3b  c20400  RET 0x4
00b49f3e  56  PUSH ESI
00b49f3f  8d4c2410  LEA ECX,[ESP + 0x10]
00b49f43  51  PUSH ECX
00b49f44  8d7020  LEA ESI,[EAX + 0x20]
00b49f47  8d542408  LEA EDX,[ESP + 0x8]
00b49f4b  52  PUSH EDX
00b49f4c  8bce  MOV ECX,ESI
00b49f4e  e8ddcce8ff  CALL 0x009d6c30
00b49f53  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00b49f56  8b5604  MOV EDX,dword ptr [ESI + 0x4]
00b49f59  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00b49f5d  3b048a  CMP EAX,dword ptr [EDX + ECX*0x4]
00b49f60  5e  POP ESI
00b49f61  7409  JZ 0x00b49f6c
00b49f63  83c008  ADD EAX,0x8
00b49f66  83c408  ADD ESP,0x8
00b49f69  c20400  RET 0x4
00b49f6c  33c0  XOR EAX,EAX
00b49f6e  83c408  ADD ESP,0x8
00b49f71  c20400  RET 0x4
Owned instructions=30 owned bytes=84 gap/nonowned bytes=0
