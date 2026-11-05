# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Actual Ghidra function: AnimationPoseCache_DestroyEntries
Paired annotated actual pseudocode: 00574010_AnimationPoseCache_DestroyEntries.c
Owned ranges: [[00574010, 0057404b]]

GHIDRA LISTING (original bytes)
00574010  56  PUSH ESI
00574011  57  PUSH EDI
00574012  8d7110  LEA ESI,[ECX + 0x10]
00574015  bf01000000  MOV EDI,0x1
0057401a  8d9b00000000  LEA EBX,[EBX]
00574020  8b4ef8  MOV ECX,dword ptr [ESI + -0x8]
00574023  83ee08  SUB ESI,0x8
00574026  85c9  TEST ECX,ECX
00574028  741a  JZ 0x00574044
0057402a  8b4104  MOV EAX,dword ptr [ECX + 0x4]
0057402d  83c0ff  ADD EAX,-0x1
00574030  894104  MOV dword ptr [ECX + 0x4],EAX
00574033  750f  JNZ 0x00574044
00574035  c7410401000000  MOV dword ptr [ECX + 0x4],0x1
0057403c  8b01  MOV EAX,dword ptr [ECX]
0057403e  8b10  MOV EDX,dword ptr [EAX]
00574040  6a01  PUSH 0x1
00574042  ffd2  CALL EDX
00574044  83ef01  SUB EDI,0x1
00574047  79d7  JNS 0x00574020
00574049  5f  POP EDI
0057404a  5e  POP ESI
0057404b  c3  RET
Owned instructions=23 owned bytes=60 envelope bytes=60
