# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: GameVersion_ReadRuntimeAndMergeCompatibility
Paired actual annotated Ghidra pseudocode: 009AF0E0_GameVersion_ReadRuntimeAndMergeCompatibility.c
Owned ranges: [[009af0e0, 009af1ac]]
Envelope bytes=205

GHIDRA LISTING (original bytes; nonowned alignment explicit)
009af0e0  83ec10  SUB ESP,0x10
009af0e3  56  PUSH ESI
009af0e4  57  PUSH EDI
009af0e5  68f4d40401  PUSH 0x104d4f4
009af0ea  68b0d40401  PUSH 0x104d4b0
009af0ef  68a0d40401  PUSH 0x104d4a0
009af0f4  e867bbbdff  CALL 0x0058ac60
009af0f9  6a00  PUSH 0x0
009af0fb  6aff  PUSH -0x1
009af0fd  50  PUSH EAX
009af0fe  8d442420  LEA EAX,[ESP + 0x20]
009af102  50  PUSH EAX
009af103  e8b84bb4ff  CALL 0x004f3cc0
009af108  8b08  MOV ECX,dword ptr [EAX]
009af10a  8b742438  MOV ESI,dword ptr [ESP + 0x38]
009af10e  83c41c  ADD ESP,0x1c
009af111  51  PUSH ECX
009af112  8bce  MOV ECX,ESI
009af114  e887f8ffff  CALL 0x009ae9a0
009af119  8b542410  MOV EDX,dword ptr [ESP + 0x10]
009af11d  8b442408  MOV EAX,dword ptr [ESP + 0x8]
009af121  2bd0  SUB EDX,EAX
009af123  83fa01  CMP EDX,0x1
009af126  7e0d  JLE 0x009af135
009af128  85c0  TEST EAX,EAX
009af12a  7409  JZ 0x009af135
009af12c  50  PUSH EAX
009af12d  e8ae53b3ff  CALL 0x004e44e0
009af132  83c404  ADD ESP,0x4
009af135  e8c6fbffff  CALL 0x009aed00
009af13a  84c0  TEST AL,AL
009af13c  7435  JZ 0x009af173
009af13e  6a00  PUSH 0x0
009af140  6834d50401  PUSH 0x104d534
009af145  68a0d40401  PUSH 0x104d4a0
009af14a  e8b1bdbdff  CALL 0x0058af00
009af14f  8bc8  MOV ECX,EAX
009af151  8b460c  MOV EAX,dword ptr [ESI + 0xc]
009af154  69c9e8030000  IMUL ECX,ECX,0x3e8
009af15a  33d2  XOR EDX,EDX
009af15c  bfe8030000  MOV EDI,0x3e8
009af161  f7f7  DIV EDI
009af163  83c40c  ADD ESP,0xc
009af166  5f  POP EDI
009af167  8bc6  MOV EAX,ESI
009af169  03d1  ADD EDX,ECX
009af16b  89560c  MOV dword ptr [ESI + 0xc],EDX
009af16e  5e  POP ESI
009af16f  83c410  ADD ESP,0x10
009af172  c3  RET
009af173  8d442408  LEA EAX,[ESP + 0x8]
009af177  50  PUSH EAX
009af178  e8f3fbffff  CALL 0x009aed70
009af17d  b8d34d6210  MOV EAX,0x10624dd3
009af182  f7642418  MUL dword ptr [ESP + 0x18]
009af186  8b460c  MOV EAX,dword ptr [ESI + 0xc]
009af189  c1ea06  SHR EDX,0x6
009af18c  8bca  MOV ECX,EDX
009af18e  33d2  XOR EDX,EDX
009af190  69c9e8030000  IMUL ECX,ECX,0x3e8
009af196  bfe8030000  MOV EDI,0x3e8
009af19b  f7f7  DIV EDI
009af19d  83c404  ADD ESP,0x4
009af1a0  5f  POP EDI
009af1a1  8bc6  MOV EAX,ESI
009af1a3  03ca  ADD ECX,EDX
009af1a5  894e0c  MOV dword ptr [ESI + 0xc],ECX
009af1a8  5e  POP ESI
009af1a9  83c410  ADD ESP,0x10
009af1ac  c3  RET
Owned instructions=70 owned bytes=205 gap/nonowned bytes=0
