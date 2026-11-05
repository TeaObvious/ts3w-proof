# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SaveGameMetadata_SetHouseholdName
Paired actual annotated Ghidra pseudocode: 0059E100_SaveGameMetadata_SetHouseholdName.c
Owned ranges: [[0059e100, 0059e12c]]
Envelope bytes=45

GHIDRA LISTING (original bytes; nonowned alignment explicit)
0059e100  8b542404  MOV EDX,dword ptr [ESP + 0x4]
0059e104  66833a00  CMP word ptr [EDX],0x0
0059e108  8bc2  MOV EAX,EDX
0059e10a  740d  JZ 0x0059e119
0059e10c  8d642400  LEA ESP,[ESP]
0059e110  83c002  ADD EAX,0x2
0059e113  66833800  CMP word ptr [EAX],0x0
0059e117  75f7  JNZ 0x0059e110
0059e119  2bc2  SUB EAX,EDX
0059e11b  d1f8  SAR EAX,0x1
0059e11d  8d0442  LEA EAX,[EDX + EAX*0x2]
0059e120  50  PUSH EAX
0059e121  52  PUSH EDX
0059e122  83c160  ADD ECX,0x60
0059e125  e836ace6ff  CALL 0x00408d60
0059e12a  c20400  RET 0x4
Owned instructions=16 owned bytes=45 gap/nonowned bytes=0
