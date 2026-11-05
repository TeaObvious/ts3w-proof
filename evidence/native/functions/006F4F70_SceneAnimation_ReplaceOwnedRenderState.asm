# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Actual Ghidra function: SceneAnimation_ReplaceOwnedRenderState
Paired annotated actual pseudocode: 006F4F70_SceneAnimation_ReplaceOwnedRenderState.c
Owned ranges: [[006f4f70, 006f4fb1]]

GHIDRA LISTING (original bytes)
006f4f70  56  PUSH ESI
006f4f71  8bf1  MOV ESI,ECX
006f4f73  57  PUSH EDI
006f4f74  8bbe98020000  MOV EDI,dword ptr [ESI + 0x298]
006f4f7a  85ff  TEST EDI,EDI
006f4f7c  741a  JZ 0x006f4f98
006f4f7e  8bcf  MOV ECX,EDI
006f4f80  e8cbf0e7ff  CALL 0x00574050
006f4f85  57  PUSH EDI
006f4f86  e855f5deff  CALL 0x004e44e0
006f4f8b  83c404  ADD ESP,0x4
006f4f8e  c7869802000000000000  MOV dword ptr [ESI + 0x298],0x0
006f4f98  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
006f4f9c  85c0  TEST EAX,EAX
006f4f9e  898698020000  MOV dword ptr [ESI + 0x298],EAX
006f4fa4  7407  JZ 0x006f4fad
006f4fa6  8bce  MOV ECX,ESI
006f4fa8  e8c3770000  CALL 0x006fc770
006f4fad  5f  POP EDI
006f4fae  5e  POP ESI
006f4faf  c20400  RET 0x4
Owned instructions=21 owned bytes=66 envelope bytes=66
