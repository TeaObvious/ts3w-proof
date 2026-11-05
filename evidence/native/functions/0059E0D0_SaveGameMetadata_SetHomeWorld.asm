# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SaveGameMetadata_SetHomeWorld
Paired actual annotated Ghidra pseudocode: 0059E0D0_SaveGameMetadata_SetHomeWorld.c
Owned ranges: [[0059e0d0, 0059e0fc]]
Envelope bytes=45

GHIDRA LISTING (original bytes; nonowned alignment explicit)
0059e0d0  8b542404  MOV EDX,dword ptr [ESP + 0x4]
0059e0d4  66833a00  CMP word ptr [EDX],0x0
0059e0d8  8bc2  MOV EAX,EDX
0059e0da  740d  JZ 0x0059e0e9
0059e0dc  8d642400  LEA ESP,[ESP]
0059e0e0  83c002  ADD EAX,0x2
0059e0e3  66833800  CMP word ptr [EAX],0x0
0059e0e7  75f7  JNZ 0x0059e0e0
0059e0e9  2bc2  SUB EAX,EDX
0059e0eb  d1f8  SAR EAX,0x1
0059e0ed  8d0442  LEA EAX,[EDX + EAX*0x2]
0059e0f0  50  PUSH EAX
0059e0f1  52  PUSH EDX
0059e0f2  83c150  ADD ECX,0x50
0059e0f5  e866ace6ff  CALL 0x00408d60
0059e0fa  c20400  RET 0x4
Owned instructions=16 owned bytes=45 gap/nonowned bytes=0
