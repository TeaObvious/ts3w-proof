# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SacsDriver_DetachControllerListeners
Paired actual annotated Ghidra pseudocode: 007FFF70_SacsDriver_DetachControllerListeners.c
Owned ranges: [[007fff70, 007fff95]]
Envelope bytes=38

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007fff70  56  PUSH ESI
007fff71  57  PUSH EDI
007fff72  8bf9  MOV EDI,ECX
007fff74  8b7710  MOV ESI,dword ptr [EDI + 0x10]
007fff77  3b7714  CMP ESI,dword ptr [EDI + 0x14]
007fff7a  7417  JZ 0x007fff93
007fff7c  8d642400  LEA ESP,[ESP]
007fff80  8b4604  MOV EAX,dword ptr [ESI + 0x4]
007fff83  8b4864  MOV ECX,dword ptr [EAX + 0x64]
007fff86  e8e5570000  CALL 0x00805770
007fff8b  83c608  ADD ESI,0x8
007fff8e  3b7714  CMP ESI,dword ptr [EDI + 0x14]
007fff91  75ed  JNZ 0x007fff80
007fff93  5f  POP EDI
007fff94  5e  POP ESI
007fff95  c3  RET
Owned instructions=16 owned bytes=38 gap/nonowned bytes=0
