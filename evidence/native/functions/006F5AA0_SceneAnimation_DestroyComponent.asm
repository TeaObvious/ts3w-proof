# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Actual Ghidra function: SceneAnimation_DestroyComponent
Paired annotated actual pseudocode: 006F5AA0_SceneAnimation_DestroyComponent.c
Owned ranges: [[006f5aa0, 006f5afe]]

GHIDRA LISTING (original bytes)
006f5aa0  56  PUSH ESI
006f5aa1  8bf1  MOV ESI,ECX
006f5aa3  57  PUSH EDI
006f5aa4  8bbe98020000  MOV EDI,dword ptr [ESI + 0x298]
006f5aaa  85ff  TEST EDI,EDI
006f5aac  c70640a8ff00  MOV dword ptr [ESI],0xffa840
006f5ab2  741a  JZ 0x006f5ace
006f5ab4  8bcf  MOV ECX,EDI
006f5ab6  e895e5e7ff  CALL 0x00574050
006f5abb  57  PUSH EDI
006f5abc  e81feadeff  CALL 0x004e44e0
006f5ac1  83c404  ADD ESP,0x4
006f5ac4  c7869802000000000000  MOV dword ptr [ESI + 0x298],0x0
006f5ace  c7869802000000000000  MOV dword ptr [ESI + 0x298],0x0
006f5ad8  8b8688020000  MOV EAX,dword ptr [ESI + 0x288]
006f5ade  85c0  TEST EAX,EAX
006f5ae0  7409  JZ 0x006f5aeb
006f5ae2  50  PUSH EAX
006f5ae3  e8f8e9deff  CALL 0x004e44e0
006f5ae8  83c404  ADD ESP,0x4
006f5aeb  8d8e10020000  LEA ECX,[ESI + 0x210]
006f5af1  e88a75feff  CALL 0x006dd080
006f5af6  5f  POP EDI
006f5af7  8bce  MOV ECX,ESI
006f5af9  5e  POP ESI
006f5afa  e9017c0000  JMP 0x006fd700
Owned instructions=26 owned bytes=95 envelope bytes=95
