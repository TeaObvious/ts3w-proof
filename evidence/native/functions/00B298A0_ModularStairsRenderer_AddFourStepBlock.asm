# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Analyst name: ModularStairsRenderer_AddFourStepBlock
Paired actual annotated Ghidra pseudocode: 00B298A0_ModularStairsRenderer_AddFourStepBlock.c
Owned ranges: [[00b298a0, 00b2992b]]
Envelope bytes=140

GHIDRA LISTING (original bytes; nonowned gaps explicit)
00b298a0  55  PUSH EBP
00b298a1  8bec  MOV EBP,ESP
00b298a3  83e4f0  AND ESP,0xfffffff0
00b298a6  8b5520  MOV EDX,dword ptr [EBP + 0x20]
00b298a9  d9e8  FLD1
00b298ab  83ec28  SUB ESP,0x28
00b298ae  56  PUSH ESI
00b298af  57  PUSH EDI
00b298b0  6a01  PUSH 0x1
00b298b2  8bf1  MOV ESI,ECX
00b298b4  8d442414  LEA EAX,[ESP + 0x14]
00b298b8  50  PUSH EAX
00b298b9  8b4518  MOV EAX,dword ptr [EBP + 0x18]
00b298bc  8d4c2428  LEA ECX,[ESP + 0x28]
00b298c0  51  PUSH ECX
00b298c1  8b4d1c  MOV ECX,dword ptr [EBP + 0x1c]
00b298c4  52  PUSH EDX
00b298c5  50  PUSH EAX
00b298c6  83ec08  SUB ESP,0x8
00b298c9  d95c2404  FSTP float ptr [ESP + 0x4]
00b298cd  d90590c20601  FLD float ptr [0x0106c290]
00b298d3  d91c24  FSTP float ptr [ESP]
00b298d6  51  PUSH ECX
00b298d7  8bce  MOV ECX,ESI
00b298d9  e8e297ffff  CALL 0x00b230c0
00b298de  8b7d14  MOV EDI,dword ptr [EBP + 0x14]
00b298e1  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00b298e7  6a01  PUSH 0x1
00b298e9  57  PUSH EDI
00b298ea  e8e14e1600  CALL 0x00c8e7d0
00b298ef  8b5528  MOV EDX,dword ptr [EBP + 0x28]
00b298f2  8b4d24  MOV ECX,dword ptr [EBP + 0x24]
00b298f5  6a01  PUSH 0x1
00b298f7  52  PUSH EDX
00b298f8  8b5510  MOV EDX,dword ptr [EBP + 0x10]
00b298fb  51  PUSH ECX
00b298fc  8b4d0c  MOV ECX,dword ptr [EBP + 0xc]
00b298ff  6a00  PUSH 0x0
00b29901  52  PUSH EDX
00b29902  8b5508  MOV EDX,dword ptr [EBP + 0x8]
00b29905  51  PUSH ECX
00b29906  52  PUSH EDX
00b29907  8d4c242c  LEA ECX,[ESP + 0x2c]
00b2990b  51  PUSH ECX
00b2990c  8d542440  LEA EDX,[ESP + 0x40]
00b29910  52  PUSH EDX
00b29911  83c710  ADD EDI,0x10
00b29914  57  PUSH EDI
00b29915  8bc8  MOV ECX,EAX
00b29917  e8a4d01600  CALL 0x00c969c0
00b2991c  50  PUSH EAX
00b2991d  8bce  MOV ECX,ESI
00b2991f  e8acf2ffff  CALL 0x00b28bd0
00b29924  5f  POP EDI
00b29925  5e  POP ESI
00b29926  8be5  MOV ESP,EBP
00b29928  5d  POP EBP
00b29929  c22400  RET 0x24
Owned instructions=58 owned bytes=140 nonowned bytes=0
