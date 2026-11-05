# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: GameVersion_ReadBaseInstallation
Paired actual annotated Ghidra pseudocode: 009AED70_GameVersion_ReadBaseInstallation.c
Owned ranges: [[009aed70, 009aeee0]]
Envelope bytes=369

GHIDRA LISTING (original bytes; nonowned alignment explicit)
009aed70  81ecbc080000  SUB ESP,0x8bc
009aed76  56  PUSH ESI
009aed77  8bb424c4080000  MOV ESI,dword ptr [ESP + 0x8c4]
009aed7e  57  PUSH EDI
009aed7f  bf548e1c01  MOV EDI,0x11c8e54
009aed84  c70600000000  MOV dword ptr [ESI],0x0
009aed8a  c7460400000000  MOV dword ptr [ESI + 0x4],0x0
009aed91  c7460800000000  MOV dword ptr [ESI + 0x8],0x0
009aed98  c7460c00000000  MOV dword ptr [ESI + 0xc],0x0
009aed9f  c7442414e0d40401  MOV dword ptr [ESP + 0x14],0x104d4e0
009aeda7  897c2408  MOV dword ptr [ESP + 0x8],EDI
009aedab  897c240c  MOV dword ptr [ESP + 0xc],EDI
009aedaf  c7442410568e1c01  MOV dword ptr [ESP + 0x10],0x11c8e56
009aedb7  e844ffffff  CALL 0x009aed00
009aedbc  84c0  TEST AL,AL
009aedbe  0f85f3000000  JNZ 0x009aeeb7
009aedc4  8d442408  LEA EAX,[ESP + 0x8]
009aedc8  50  PUSH EAX
009aedc9  6a01  PUSH 0x1
009aedcb  e81022e2ff  CALL 0x007d0fe0
009aedd0  83c408  ADD ESP,0x8
009aedd3  84c0  TEST AL,AL
009aedd5  0f84dc000000  JZ 0x009aeeb7
009aeddb  b8208c0101  MOV EAX,0x1018c20
009aede0  83c002  ADD EAX,0x2
009aede3  66833800  CMP word ptr [EAX],0x0
009aede7  75f7  JNZ 0x009aede0
009aede9  2d208c0101  SUB EAX,0x1018c20
009aedee  d1f8  SAR EAX,0x1
009aedf0  8d0c45208c0101  LEA ECX,[EAX*0x2 + 0x1018c20]
009aedf7  51  PUSH ECX
009aedf8  68208c0101  PUSH 0x1018c20
009aedfd  8d4c2410  LEA ECX,[ESP + 0x10]
009aee01  e88a9da5ff  CALL 0x00408b90
009aee06  8d4c2428  LEA ECX,[ESP + 0x28]
009aee0a  e8d1d9b3ff  CALL 0x004ec7e0
009aee0f  6a00  PUSH 0x0
009aee11  6890910101  PUSH 0x1019190
009aee16  8d4c2430  LEA ECX,[ESP + 0x30]
009aee1a  e8e1f5b3ff  CALL 0x004ee400
009aee1f  8b542408  MOV EDX,dword ptr [ESP + 0x8]
009aee23  6a00  PUSH 0x0
009aee25  52  PUSH EDX
009aee26  8d4c2430  LEA ECX,[ESP + 0x30]
009aee2a  e8b1f5b3ff  CALL 0x004ee3e0
009aee2f  6a00  PUSH 0x0
009aee31  6a01  PUSH 0x1
009aee33  8d4c2430  LEA ECX,[ESP + 0x30]
009aee37  e86463e3ff  CALL 0x007e51a0
009aee3c  50  PUSH EAX
009aee3d  8d8c2444040000  LEA ECX,[ESP + 0x444]
009aee44  e8872fb4ff  CALL 0x004f1dd0
009aee49  8d442418  LEA EAX,[ESP + 0x18]
009aee4d  50  PUSH EAX
009aee4e  68b0d40401  PUSH 0x104d4b0
009aee53  68a0d40401  PUSH 0x104d4a0
009aee58  8d8c2444040000  LEA ECX,[ESP + 0x444]
009aee5f  c7442430c8d40401  MOV dword ptr [ESP + 0x30],0x104d4c8
009aee67  897c2424  MOV dword ptr [ESP + 0x24],EDI
009aee6b  897c2428  MOV dword ptr [ESP + 0x28],EDI
009aee6f  c744242c568e1c01  MOV dword ptr [ESP + 0x2c],0x11c8e56
009aee77  e8e416b4ff  CALL 0x004f0560
009aee7c  85c0  TEST EAX,EAX
009aee7e  740c  JZ 0x009aee8c
009aee80  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
009aee84  51  PUSH ECX
009aee85  8bce  MOV ECX,ESI
009aee87  e8c4fcffff  CALL 0x009aeb50
009aee8c  8b542420  MOV EDX,dword ptr [ESP + 0x20]
009aee90  8b442418  MOV EAX,dword ptr [ESP + 0x18]
009aee94  2bd0  SUB EDX,EAX
009aee96  83e2fe  AND EDX,0xfffffffe
009aee99  83fa02  CMP EDX,0x2
009aee9c  7e0d  JLE 0x009aeeab
009aee9e  85c0  TEST EAX,EAX
009aeea0  7409  JZ 0x009aeeab
009aeea2  50  PUSH EAX
009aeea3  e83856b3ff  CALL 0x004e44e0
009aeea8  83c404  ADD ESP,0x4
009aeeab  8d8c2438040000  LEA ECX,[ESP + 0x438]
009aeeb2  e8691eb4ff  CALL 0x004f0d20
009aeeb7  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
009aeebb  8b442408  MOV EAX,dword ptr [ESP + 0x8]
009aeebf  2bc8  SUB ECX,EAX
009aeec1  83e1fe  AND ECX,0xfffffffe
009aeec4  83f902  CMP ECX,0x2
009aeec7  7e0d  JLE 0x009aeed6
009aeec9  85c0  TEST EAX,EAX
009aeecb  7409  JZ 0x009aeed6
009aeecd  50  PUSH EAX
009aeece  e80d56b3ff  CALL 0x004e44e0
009aeed3  83c404  ADD ESP,0x4
009aeed6  5f  POP EDI
009aeed7  8bc6  MOV EAX,ESI
009aeed9  5e  POP ESI
009aeeda  81c4bc080000  ADD ESP,0x8bc
009aeee0  c3  RET
Owned instructions=97 owned bytes=369 gap/nonowned bytes=0
