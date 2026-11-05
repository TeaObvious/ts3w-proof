# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope.
Actual Ghidra function: ProductPresetCollection_GetRowByOrdinal
Paired actual annotated Ghidra pseudocode: 0060A2F0_ProductPresetCollection_GetRowByOrdinal.c
Owned ranges: [[0060a2f0, 0060a33d]]
Envelope bytes=78

GHIDRA LISTING (original bytes; nonowned gaps/data explicit)
0060a2f0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
0060a2f4  83f808  CMP EAX,0x8
0060a2f7  7c05  JL 0x0060a2fe
0060a2f9  33c0  XOR EAX,EAX
0060a2fb  c20800  RET 0x8
0060a2fe  c1e004  SHL EAX,0x4
0060a301  8d440828  LEA EAX,[EAX + ECX*0x1 + 0x28]
0060a305  8b4804  MOV ECX,dword ptr [EAX + 0x4]
0060a308  56  PUSH ESI
0060a309  8b30  MOV ESI,dword ptr [EAX]
0060a30b  2bce  SUB ECX,ESI
0060a30d  b893244992  MOV EAX,0x92492493
0060a312  f7e9  IMUL ECX
0060a314  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
0060a318  03d1  ADD EDX,ECX
0060a31a  c1fa04  SAR EDX,0x4
0060a31d  8bca  MOV ECX,EDX
0060a31f  c1e91f  SHR ECX,0x1f
0060a322  03ca  ADD ECX,EDX
0060a324  3bc8  CMP ECX,EAX
0060a326  7706  JA 0x0060a32e
0060a328  33c0  XOR EAX,EAX
0060a32a  5e  POP ESI
0060a32b  c20800  RET 0x8
0060a32e  8d14c500000000  LEA EDX,[EAX*0x8 + 0x0]
0060a335  2bd0  SUB EDX,EAX
0060a337  8d0496  LEA EAX,[ESI + EDX*0x4]
0060a33a  5e  POP ESI
0060a33b  c20800  RET 0x8
Owned instructions=29 owned bytes=78 nonowned bytes=0
