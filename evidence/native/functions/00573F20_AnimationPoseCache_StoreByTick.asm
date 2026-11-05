# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Actual Ghidra function: AnimationPoseCache_StoreByTick
Paired annotated actual pseudocode: 00573F20_AnimationPoseCache_StoreByTick.c
Owned ranges: [[00573f20, 00573f7f]]

GHIDRA LISTING (original bytes)
00573f20  56  PUSH ESI
00573f21  8d5110  LEA EDX,[ECX + 0x10]
00573f24  57  PUSH EDI
00573f25  8bc2  MOV EAX,EDX
00573f27  8d7920  LEA EDI,[ECX + 0x20]
00573f2a  83ceff  OR ESI,0xffffffff
00573f2d  3bc7  CMP EAX,EDI
00573f2f  7412  JZ 0x00573f43
00573f31  8b4804  MOV ECX,dword ptr [EAX + 0x4]
00573f34  3bce  CMP ECX,ESI
00573f36  7704  JA 0x00573f3c
00573f38  8bd0  MOV EDX,EAX
00573f3a  8bf1  MOV ESI,ECX
00573f3c  83c008  ADD EAX,0x8
00573f3f  3bc7  CMP EAX,EDI
00573f41  75ee  JNZ 0x00573f31
00573f43  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00573f47  8b0a  MOV ECX,dword ptr [EDX]
00573f49  894204  MOV dword ptr [EDX + 0x4],EAX
00573f4c  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
00573f50  3bc1  CMP EAX,ECX
00573f52  7427  JZ 0x00573f7b
00573f54  85c0  TEST EAX,EAX
00573f56  be01000000  MOV ESI,0x1
00573f5b  7403  JZ 0x00573f60
00573f5d  017004  ADD dword ptr [EAX + 0x4],ESI
00573f60  85c9  TEST ECX,ECX
00573f62  8902  MOV dword ptr [EDX],EAX
00573f64  7415  JZ 0x00573f7b
00573f66  8b4104  MOV EAX,dword ptr [ECX + 0x4]
00573f69  83c0ff  ADD EAX,-0x1
00573f6c  894104  MOV dword ptr [ECX + 0x4],EAX
00573f6f  750a  JNZ 0x00573f7b
00573f71  897104  MOV dword ptr [ECX + 0x4],ESI
00573f74  8b11  MOV EDX,dword ptr [ECX]
00573f76  8b02  MOV EAX,dword ptr [EDX]
00573f78  56  PUSH ESI
00573f79  ffd0  CALL EAX
00573f7b  5f  POP EDI
00573f7c  5e  POP ESI
00573f7d  c20800  RET 0x8
Owned instructions=41 owned bytes=96 envelope bytes=96
