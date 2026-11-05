# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete actual Ghidra function envelope.
Actual Ghidra function: SceneObject_WriteWorldBounds
Paired annotated actual pseudocode: 006FB240_SceneObject_WriteWorldBounds.c
Owned ranges: [[006fb240, 006fb2d6]]

GHIDRA LISTING (original bytes; non-owned alignment explicit)
006fb240  55  PUSH EBP
006fb241  8bec  MOV EBP,ESP
006fb243  83e4f0  AND ESP,0xfffffff0
006fb246  81ec8c000000  SUB ESP,0x8c
006fb24c  56  PUSH ESI
006fb24d  8bf1  MOV ESI,ECX
006fb24f  8a4640  MOV AL,byte ptr [ESI + 0x40]
006fb252  f6d0  NOT AL
006fb254  a801  TEST AL,0x1
006fb256  7536  JNZ 0x006fb28e
006fb258  8b4630  MOV EAX,dword ptr [ESI + 0x30]
006fb25b  85c0  TEST EAX,EAX
006fb25d  742f  JZ 0x006fb28e
006fb25f  83782c00  CMP dword ptr [EAX + 0x2c],0x0
006fb263  7429  JZ 0x006fb28e
006fb265  8b402c  MOV EAX,dword ptr [EAX + 0x2c]
006fb268  8d4c2410  LEA ECX,[ESP + 0x10]
006fb26c  51  PUSH ECX
006fb26d  8bc8  MOV ECX,EAX
006fb26f  e85ca10000  CALL 0x007053d0
006fb274  0f2800  MOVAPS XMM0,xmmword ptr [EAX]
006fb277  8b4d08  MOV ECX,dword ptr [EBP + 0x8]
006fb27a  0f2901  MOVAPS xmmword ptr [ECX],XMM0
006fb27d  0f284010  MOVAPS XMM0,xmmword ptr [EAX + 0x10]
006fb281  0f294110  MOVAPS xmmword ptr [ECX + 0x10],XMM0
006fb285  8bc1  MOV EAX,ECX
006fb287  5e  POP ESI
006fb288  8be5  MOV ESP,EBP
006fb28a  5d  POP EBP
006fb28b  c20400  RET 0x4
006fb28e  8d542450  LEA EDX,[ESP + 0x50]
006fb292  52  PUSH EDX
006fb293  e838faffff  CALL 0x006facd0
006fb298  0f2800  MOVAPS XMM0,xmmword ptr [EAX]
006fb29b  0f29442410  MOVAPS xmmword ptr [ESP + 0x10],XMM0
006fb2a0  0f284010  MOVAPS XMM0,xmmword ptr [EAX + 0x10]
006fb2a4  0f29442420  MOVAPS xmmword ptr [ESP + 0x20],XMM0
006fb2a9  0f284020  MOVAPS XMM0,xmmword ptr [EAX + 0x20]
006fb2ad  0f29442430  MOVAPS xmmword ptr [ESP + 0x30],XMM0
006fb2b2  0f284030  MOVAPS XMM0,xmmword ptr [EAX + 0x30]
006fb2b6  8d442410  LEA EAX,[ESP + 0x10]
006fb2ba  83c650  ADD ESI,0x50
006fb2bd  50  PUSH EAX
006fb2be  56  PUSH ESI
006fb2bf  8b7508  MOV ESI,dword ptr [EBP + 0x8]
006fb2c2  8bce  MOV ECX,ESI
006fb2c4  0f29442448  MOVAPS xmmword ptr [ESP + 0x48],XMM0
006fb2c9  e8a210f9ff  CALL 0x0068c370
006fb2ce  8bc6  MOV EAX,ESI
006fb2d0  5e  POP ESI
006fb2d1  8be5  MOV ESP,EBP
006fb2d3  5d  POP EBP
006fb2d4  c20400  RET 0x4
Owned instructions=53 owned bytes=151 envelope bytes=151
