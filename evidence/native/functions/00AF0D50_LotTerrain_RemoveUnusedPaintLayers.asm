# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: LotTerrain_RemoveUnusedPaintLayers
Paired actual annotated Ghidra pseudocode: 00AF0D50_LotTerrain_RemoveUnusedPaintLayers.c
Owned ranges: [[00af0d50, 00af0dc9]]
Envelope bytes=122

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00af0d50  56  PUSH ESI
00af0d51  8bf1  MOV ESI,ECX
00af0d53  8b4e34  MOV ECX,dword ptr [ESI + 0x34]
00af0d56  2b4e30  SUB ECX,dword ptr [ESI + 0x30]
00af0d59  b8abaaaa2a  MOV EAX,0x2aaaaaab
00af0d5e  f7e9  IMUL ECX
00af0d60  c1fa02  SAR EDX,0x2
00af0d63  8bc2  MOV EAX,EDX
00af0d65  57  PUSH EDI
00af0d66  c1e81f  SHR EAX,0x1f
00af0d69  33ff  XOR EDI,EDI
00af0d6b  03c2  ADD EAX,EDX
00af0d6d  7439  JZ 0x00af0da8
00af0d6f  53  PUSH EBX
00af0d70  33db  XOR EBX,EBX
00af0d72  8b4e30  MOV ECX,dword ptr [ESI + 0x30]
00af0d75  837c0b1000  CMP dword ptr [EBX + ECX*0x1 + 0x10],0x0
00af0d7a  750a  JNZ 0x00af0d86
00af0d7c  57  PUSH EDI
00af0d7d  8bce  MOV ECX,ESI
00af0d7f  e8acfbffff  CALL 0x00af0930
00af0d84  eb06  JMP 0x00af0d8c
00af0d86  83c701  ADD EDI,0x1
00af0d89  83c318  ADD EBX,0x18
00af0d8c  8b4e34  MOV ECX,dword ptr [ESI + 0x34]
00af0d8f  2b4e30  SUB ECX,dword ptr [ESI + 0x30]
00af0d92  b8abaaaa2a  MOV EAX,0x2aaaaaab
00af0d97  f7e9  IMUL ECX
00af0d99  c1fa02  SAR EDX,0x2
00af0d9c  8bc2  MOV EAX,EDX
00af0d9e  c1e81f  SHR EAX,0x1f
00af0da1  03c2  ADD EAX,EDX
00af0da3  3bf8  CMP EDI,EAX
00af0da5  72cb  JC 0x00af0d72
00af0da7  5b  POP EBX
00af0da8  8b4e30  MOV ECX,dword ptr [ESI + 0x30]
00af0dab  3b4e34  CMP ECX,dword ptr [ESI + 0x34]
00af0dae  7517  JNZ 0x00af0dc7
00af0db0  8b5674  MOV EDX,dword ptr [ESI + 0x74]
00af0db3  0faf5670  IMUL EDX,dword ptr [ESI + 0x70]
00af0db7  85d2  TEST EDX,EDX
00af0db9  8d4e70  LEA ECX,[ESI + 0x70]
00af0dbc  7409  JZ 0x00af0dc7
00af0dbe  6a00  PUSH 0x0
00af0dc0  6a00  PUSH 0x0
00af0dc2  e879d9ffff  CALL 0x00aee740
00af0dc7  5f  POP EDI
00af0dc8  5e  POP ESI
00af0dc9  c3  RET
Owned instructions=49 owned bytes=122 gap/nonowned bytes=0
