# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Actual Ghidra function: AnimationPoseCache_Clear
Paired annotated actual pseudocode: 00573F80_AnimationPoseCache_Clear.c
Owned ranges: [[00573f80, 00573fc6]]

GHIDRA LISTING (original bytes)
00573f80  56  PUSH ESI
00573f81  57  PUSH EDI
00573f82  8d7110  LEA ESI,[ECX + 0x10]
00573f85  8d7920  LEA EDI,[ECX + 0x20]
00573f88  3bf7  CMP ESI,EDI
00573f8a  7438  JZ 0x00573fc4
00573f8c  8d642400  LEA ESP,[ESP]
00573f90  8b0e  MOV ECX,dword ptr [ESI]
00573f92  85c9  TEST ECX,ECX
00573f94  c7460400000000  MOV dword ptr [ESI + 0x4],0x0
00573f9b  c70600000000  MOV dword ptr [ESI],0x0
00573fa1  741a  JZ 0x00573fbd
00573fa3  8b4104  MOV EAX,dword ptr [ECX + 0x4]
00573fa6  83c0ff  ADD EAX,-0x1
00573fa9  894104  MOV dword ptr [ECX + 0x4],EAX
00573fac  750f  JNZ 0x00573fbd
00573fae  c7410401000000  MOV dword ptr [ECX + 0x4],0x1
00573fb5  8b01  MOV EAX,dword ptr [ECX]
00573fb7  8b10  MOV EDX,dword ptr [EAX]
00573fb9  6a01  PUSH 0x1
00573fbb  ffd2  CALL EDX
00573fbd  83c608  ADD ESI,0x8
00573fc0  3bf7  CMP ESI,EDI
00573fc2  75cc  JNZ 0x00573f90
00573fc4  5f  POP EDI
00573fc5  5e  POP ESI
00573fc6  c3  RET
Owned instructions=27 owned bytes=71 envelope bytes=71
