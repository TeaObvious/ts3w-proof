# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Actual Ghidra function: CasModelBuilder_BuildMissingMaterials
Paired annotated actual pseudocode: 005D30D0_CasModelBuilder_BuildMissingMaterials.c
Owned ranges: [[005d30d0, 005d3118]]

GHIDRA LISTING (original bytes)
005d30d0  55  PUSH EBP
005d30d1  56  PUSH ESI
005d30d2  57  PUSH EDI
005d30d3  8bf9  MOV EDI,ECX
005d30d5  8bb734010000  MOV ESI,dword ptr [EDI + 0x134]
005d30db  8baf38010000  MOV EBP,dword ptr [EDI + 0x138]
005d30e1  3bf5  CMP ESI,EBP
005d30e3  742e  JZ 0x005d3113
005d30e5  53  PUSH EBX
005d30e6  8b5c2418  MOV EBX,dword ptr [ESP + 0x18]
005d30ea  8d9b00000000  LEA EBX,[EBX]
005d30f0  837e7000  CMP dword ptr [ESI + 0x70],0x0
005d30f4  750e  JNZ 0x005d3104
005d30f6  8b442414  MOV EAX,dword ptr [ESP + 0x14]
005d30fa  53  PUSH EBX
005d30fb  50  PUSH EAX
005d30fc  56  PUSH ESI
005d30fd  8bcf  MOV ECX,EDI
005d30ff  e8acd4ffff  CALL 0x005d05b0
005d3104  c6467401  MOV byte ptr [ESI + 0x74],0x1
005d3108  81c6d0000000  ADD ESI,0xd0
005d310e  3bf5  CMP ESI,EBP
005d3110  75de  JNZ 0x005d30f0
005d3112  5b  POP EBX
005d3113  5f  POP EDI
005d3114  5e  POP ESI
005d3115  5d  POP EBP
005d3116  c20800  RET 0x8
Owned instructions=28 owned bytes=73 envelope bytes=73
