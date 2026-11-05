# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SaveGameMetadata_SetHouseholdBiography
Paired actual annotated Ghidra pseudocode: 0059E130_SaveGameMetadata_SetHouseholdBiography.c
Owned ranges: [[0059e130, 0059e15c]]
Envelope bytes=45

GHIDRA LISTING (original bytes; nonowned alignment explicit)
0059e130  8b542404  MOV EDX,dword ptr [ESP + 0x4]
0059e134  66833a00  CMP word ptr [EDX],0x0
0059e138  8bc2  MOV EAX,EDX
0059e13a  740d  JZ 0x0059e149
0059e13c  8d642400  LEA ESP,[ESP]
0059e140  83c002  ADD EAX,0x2
0059e143  66833800  CMP word ptr [EAX],0x0
0059e147  75f7  JNZ 0x0059e140
0059e149  2bc2  SUB EAX,EDX
0059e14b  d1f8  SAR EAX,0x1
0059e14d  8d0442  LEA EAX,[EDX + EAX*0x2]
0059e150  50  PUSH EAX
0059e151  52  PUSH EDX
0059e152  83c170  ADD ECX,0x70
0059e155  e806ace6ff  CALL 0x00408d60
0059e15a  c20400  RET 0x4
Owned instructions=16 owned bytes=45 gap/nonowned bytes=0
