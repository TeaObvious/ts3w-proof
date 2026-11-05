# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: ScriptHandle_FindPublishedPointer
Paired actual annotated Ghidra pseudocode: 0076A590_ScriptHandle_FindPublishedPointer.c
Owned ranges: [[0076a590, 0076a61c]]
Envelope bytes=141

GHIDRA LISTING (original bytes; nonowned alignment explicit)
0076a590  83ec14  SUB ESP,0x14
0076a593  56  PUSH ESI
0076a594  8bf1  MOV ESI,ECX
0076a596  57  PUSH EDI
0076a597  8dbef0090000  LEA EDI,[ESI + 0x9f0]
0076a59d  6844870001  PUSH 0x1008744
0076a5a2  8bcf  MOV ECX,EDI
0076a5a4  e85776d7ff  CALL 0x004e1c00
0076a5a9  8b442420  MOV EAX,dword ptr [ESP + 0x20]
0076a5ad  8d4c240b  LEA ECX,[ESP + 0xb]
0076a5b1  51  PUSH ECX
0076a5b2  8d542418  LEA EDX,[ESP + 0x18]
0076a5b6  c1e818  SHR EAX,0x18
0076a5b9  83c604  ADD ESI,0x4
0076a5bc  52  PUSH EDX
0076a5bd  8bce  MOV ECX,ESI
0076a5bf  88442413  MOV byte ptr [ESP + 0x13],AL
0076a5c3  e868ffffff  CALL 0x0076a530
0076a5c8  8b00  MOV EAX,dword ptr [EAX]
0076a5ca  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
0076a5cd  8b5604  MOV EDX,dword ptr [ESI + 0x4]
0076a5d0  3b048a  CMP EAX,dword ptr [EDX + ECX*0x4]
0076a5d3  7511  JNZ 0x0076a5e6
0076a5d5  8bcf  MOV ECX,EDI
0076a5d7  e8e476d7ff  CALL 0x004e1cc0
0076a5dc  5f  POP EDI
0076a5dd  33c0  XOR EAX,EAX
0076a5df  5e  POP ESI
0076a5e0  83c414  ADD ESP,0x14
0076a5e3  c20400  RET 0x4
0076a5e6  8d7004  LEA ESI,[EAX + 0x4]
0076a5e9  8d442420  LEA EAX,[ESP + 0x20]
0076a5ed  50  PUSH EAX
0076a5ee  8d4c2410  LEA ECX,[ESP + 0x10]
0076a5f2  51  PUSH ECX
0076a5f3  8bce  MOV ECX,ESI
0076a5f5  e816bc0a00  CALL 0x00816210
0076a5fa  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
0076a5fd  8b5608  MOV EDX,dword ptr [ESI + 0x8]
0076a600  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
0076a604  3b0491  CMP EAX,dword ptr [ECX + EDX*0x4]
0076a607  8bcf  MOV ECX,EDI
0076a609  74cc  JZ 0x0076a5d7
0076a60b  8b7004  MOV ESI,dword ptr [EAX + 0x4]
0076a60e  e8ad76d7ff  CALL 0x004e1cc0
0076a613  5f  POP EDI
0076a614  8bc6  MOV EAX,ESI
0076a616  5e  POP ESI
0076a617  83c414  ADD ESP,0x14
0076a61a  c20400  RET 0x4
Owned instructions=50 owned bytes=141 gap/nonowned bytes=0
