# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Analyst name: UserToolHost_QueueRetainedTool
Paired actual annotated Ghidra pseudocode: 00CEFD10_UserToolHost_QueueRetainedTool.c
Owned ranges: [[00cefd10, 00cefd59]]
Envelope bytes=74

GHIDRA LISTING (original bytes; nonowned gaps explicit)
00cefd10  56  PUSH ESI
00cefd11  68e7000000  PUSH 0xe7
00cefd16  688899f900  PUSH 0xf99988
00cefd1b  6a00  PUSH 0x0
00cefd1d  8bf1  MOV ESI,ECX
00cefd1f  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00cefd22  6a00  PUSH 0x0
00cefd24  50  PUSH EAX
00cefd25  6a0c  PUSH 0xc
00cefd27  e8d4477fff  CALL 0x004e4500
00cefd2c  8d5008  LEA EDX,[EAX + 0x8]
00cefd2f  83c418  ADD ESP,0x18
00cefd32  85d2  TEST EDX,EDX
00cefd34  7410  JZ 0x00cefd46
00cefd36  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
00cefd3a  8b09  MOV ECX,dword ptr [ECX]
00cefd3c  85c9  TEST ECX,ECX
00cefd3e  890a  MOV dword ptr [EDX],ECX
00cefd40  7404  JZ 0x00cefd46
00cefd42  83410401  ADD dword ptr [ECX + 0x4],0x1
00cefd46  8930  MOV dword ptr [EAX],ESI
00cefd48  8b5604  MOV EDX,dword ptr [ESI + 0x4]
00cefd4b  895004  MOV dword ptr [EAX + 0x4],EDX
00cefd4e  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
00cefd51  8901  MOV dword ptr [ECX],EAX
00cefd53  894604  MOV dword ptr [ESI + 0x4],EAX
00cefd56  5e  POP ESI
00cefd57  c20400  RET 0x4
Owned instructions=28 owned bytes=74 nonowned bytes=0
