# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete actual Ghidra function envelope.
Actual Ghidra function: SceneObject_RefreshWorldBoundsAndSpatialOwner
Paired annotated actual pseudocode: 006FC960_SceneObject_RefreshWorldBoundsAndSpatialOwner.c
Owned ranges: [[006fc960, 006fc9dc]]

GHIDRA LISTING (original bytes; non-owned alignment explicit)
006fc960  55  PUSH EBP
006fc961  8bec  MOV EBP,ESP
006fc963  83e4f0  AND ESP,0xfffffff0
006fc966  83ec4c  SUB ESP,0x4c
006fc969  56  PUSH ESI
006fc96a  8d442430  LEA EAX,[ESP + 0x30]
006fc96e  50  PUSH EAX
006fc96f  8bf1  MOV ESI,ECX
006fc971  e8cae8ffff  CALL 0x006fb240
006fc976  0f28442430  MOVAPS XMM0,xmmword ptr [ESP + 0x30]
006fc97b  0fc6c000  SHUFPS XMM0,XMM0,0x0
006fc97f  f30f11442420  MOVSS dword ptr [ESP + 0x20],XMM0
006fc985  0f28442440  MOVAPS XMM0,xmmword ptr [ESP + 0x40]
006fc98a  0fc6c000  SHUFPS XMM0,XMM0,0x0
006fc98e  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
006fc994  f30f10442410  MOVSS XMM0,dword ptr [ESP + 0x10]
006fc99a  0f2f442420  COMISS XMM0,dword ptr [ESP + 0x20]
006fc99f  7215  JC 0x006fc9b6
006fc9a1  8d4c2430  LEA ECX,[ESP + 0x30]
006fc9a5  51  PUSH ECX
006fc9a6  8d4c2424  LEA ECX,[ESP + 0x24]
006fc9aa  e8810dfaff  CALL 0x0069d730
006fc9af  0f28442420  MOVAPS XMM0,xmmword ptr [ESP + 0x20]
006fc9b4  eb03  JMP 0x006fc9b9
006fc9b6  0f57c0  XORPS XMM0,XMM0
006fc9b9  0f294670  MOVAPS xmmword ptr [ESI + 0x70],XMM0
006fc9bd  8b4630  MOV EAX,dword ptr [ESI + 0x30]
006fc9c0  85c0  TEST EAX,EAX
006fc9c2  7414  JZ 0x006fc9d8
006fc9c4  8b402c  MOV EAX,dword ptr [EAX + 0x2c]
006fc9c7  85c0  TEST EAX,EAX
006fc9c9  740d  JZ 0x006fc9d8
006fc9cb  8d542430  LEA EDX,[ESP + 0x30]
006fc9cf  52  PUSH EDX
006fc9d0  56  PUSH ESI
006fc9d1  8bc8  MOV ECX,EAX
006fc9d3  e878900000  CALL 0x00705a50
006fc9d8  5e  POP ESI
006fc9d9  8be5  MOV ESP,EBP
006fc9db  5d  POP EBP
006fc9dc  c3  RET
Owned instructions=41 owned bytes=125 envelope bytes=125
