# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SACS_AttachWalkerCallback_801150
Paired actual annotated Ghidra pseudocode: 00801150_SACS_AttachWalkerCallback_801150.c
Owned ranges: [[00801150, 008011a1]]
Envelope bytes=82

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00801150  56  PUSH ESI
00801151  57  PUSH EDI
00801152  8b7c240c  MOV EDI,dword ptr [ESP + 0xc]
00801156  85ff  TEST EDI,EDI
00801158  8bf1  MOV ESI,ECX
0080115a  7441  JZ 0x0080119d
0080115c  8b07  MOV EAX,dword ptr [EDI]
0080115e  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00801161  8bcf  MOV ECX,EDI
00801163  ffd2  CALL EDX
00801165  8b4660  MOV EAX,dword ptr [ESI + 0x60]
00801168  68e7000000  PUSH 0xe7
0080116d  688899f900  PUSH 0xf99988
00801172  6a00  PUSH 0x0
00801174  83c658  ADD ESI,0x58
00801177  6a00  PUSH 0x0
00801179  50  PUSH EAX
0080117a  6a0c  PUSH 0xc
0080117c  e87f33ceff  CALL 0x004e4500
00801181  8d4808  LEA ECX,[EAX + 0x8]
00801184  83c418  ADD ESP,0x18
00801187  85c9  TEST ECX,ECX
00801189  7402  JZ 0x0080118d
0080118b  8939  MOV dword ptr [ECX],EDI
0080118d  8930  MOV dword ptr [EAX],ESI
0080118f  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
00801192  894804  MOV dword ptr [EAX + 0x4],ECX
00801195  8b5604  MOV EDX,dword ptr [ESI + 0x4]
00801198  8902  MOV dword ptr [EDX],EAX
0080119a  894604  MOV dword ptr [ESI + 0x4],EAX
0080119d  5f  POP EDI
0080119e  5e  POP ESI
0080119f  c20400  RET 0x4
Owned instructions=33 owned bytes=82 gap/nonowned bytes=0
