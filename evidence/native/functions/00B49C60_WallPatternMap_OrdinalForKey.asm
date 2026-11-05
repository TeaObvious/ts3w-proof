# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: WallPatternMap_OrdinalForKey
Paired actual annotated Ghidra pseudocode: 00B49C60_WallPatternMap_OrdinalForKey.c
Owned ranges: [[00b49c60, 00b49cb7]]
Envelope bytes=88

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00b49c60  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00b49c64  83ec08  SUB ESP,0x8
00b49c67  56  PUSH ESI
00b49c68  8bf1  MOV ESI,ECX
00b49c6a  8b08  MOV ECX,dword ptr [EAX]
00b49c6c  3b4e40  CMP ECX,dword ptr [ESI + 0x40]
00b49c6f  7518  JNZ 0x00b49c89
00b49c71  8b5008  MOV EDX,dword ptr [EAX + 0x8]
00b49c74  3b5648  CMP EDX,dword ptr [ESI + 0x48]
00b49c77  7510  JNZ 0x00b49c89
00b49c79  8b480c  MOV ECX,dword ptr [EAX + 0xc]
00b49c7c  3b4e4c  CMP ECX,dword ptr [ESI + 0x4c]
00b49c7f  7508  JNZ 0x00b49c89
00b49c81  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00b49c84  3b5644  CMP EDX,dword ptr [ESI + 0x44]
00b49c87  7426  JZ 0x00b49caf
00b49c89  50  PUSH EAX
00b49c8a  8d442408  LEA EAX,[ESP + 0x8]
00b49c8e  50  PUSH EAX
00b49c8f  8bce  MOV ECX,ESI
00b49c91  e84a3daaff  CALL 0x005ed9e0
00b49c96  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00b49c99  8b5604  MOV EDX,dword ptr [ESI + 0x4]
00b49c9c  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00b49ca0  3b048a  CMP EAX,dword ptr [EDX + ECX*0x4]
00b49ca3  740a  JZ 0x00b49caf
00b49ca5  8b4010  MOV EAX,dword ptr [EAX + 0x10]
00b49ca8  5e  POP ESI
00b49ca9  83c408  ADD ESP,0x8
00b49cac  c20400  RET 0x4
00b49caf  33c0  XOR EAX,EAX
00b49cb1  5e  POP ESI
00b49cb2  83c408  ADD ESP,0x8
00b49cb5  c20400  RET 0x4
Owned instructions=34 owned bytes=88 gap/nonowned bytes=0
