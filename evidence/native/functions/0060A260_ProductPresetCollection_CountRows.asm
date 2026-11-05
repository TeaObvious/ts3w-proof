# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope.
Actual Ghidra function: ProductPresetCollection_CountRows
Paired actual annotated Ghidra pseudocode: 0060A260_ProductPresetCollection_CountRows.c
Owned ranges: [[0060a260, 0060a28f]]
Envelope bytes=48

GHIDRA LISTING (original bytes; nonowned gaps/data explicit)
0060a260  8b442404  MOV EAX,dword ptr [ESP + 0x4]
0060a264  83f808  CMP EAX,0x8
0060a267  7c05  JL 0x0060a26e
0060a269  33c0  XOR EAX,EAX
0060a26b  c20400  RET 0x4
0060a26e  c1e004  SHL EAX,0x4
0060a271  8d440828  LEA EAX,[EAX + ECX*0x1 + 0x28]
0060a275  8b4804  MOV ECX,dword ptr [EAX + 0x4]
0060a278  2b08  SUB ECX,dword ptr [EAX]
0060a27a  b893244992  MOV EAX,0x92492493
0060a27f  f7e9  IMUL ECX
0060a281  03d1  ADD EDX,ECX
0060a283  c1fa04  SAR EDX,0x4
0060a286  8bc2  MOV EAX,EDX
0060a288  c1e81f  SHR EAX,0x1f
0060a28b  03c2  ADD EAX,EDX
0060a28d  c20400  RET 0x4
Owned instructions=17 owned bytes=48 nonowned bytes=0
