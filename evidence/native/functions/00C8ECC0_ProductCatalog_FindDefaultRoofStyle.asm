# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Analyst name: ProductCatalog_FindDefaultRoofStyle
Paired actual annotated Ghidra pseudocode: 00C8ECC0_ProductCatalog_FindDefaultRoofStyle.c
Owned ranges: [[00c8ecc0, 00c8ed07]]
Envelope bytes=72

GHIDRA LISTING (original bytes; nonowned gaps explicit)
00c8ecc0  83ec08  SUB ESP,0x8
00c8ecc3  56  PUSH ESI
00c8ecc4  57  PUSH EDI
00c8ecc5  8bf9  MOV EDI,ECX
00c8ecc7  68c0e11e01  PUSH 0x11ee1c0
00c8eccc  8d44240c  LEA EAX,[ESP + 0xc]
00c8ecd0  8db7e8000000  LEA ESI,[EDI + 0xe8]
00c8ecd6  50  PUSH EAX
00c8ecd7  8bce  MOV ECX,ESI
00c8ecd9  e842eeffff  CALL 0x00c8db20
00c8ecde  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00c8ece2  3b44240c  CMP EAX,dword ptr [ESP + 0xc]
00c8ece6  7404  JZ 0x00c8ecec
00c8ece8  8bf0  MOV ESI,EAX
00c8ecea  eb03  JMP 0x00c8ecef
00c8ecec  8b7604  MOV ESI,dword ptr [ESI + 0x4]
00c8ecef  3bb7ec000000  CMP ESI,dword ptr [EDI + 0xec]
00c8ecf5  7409  JZ 0x00c8ed00
00c8ecf7  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00c8ecfa  5f  POP EDI
00c8ecfb  5e  POP ESI
00c8ecfc  83c408  ADD ESP,0x8
00c8ecff  c3  RET
00c8ed00  5f  POP EDI
00c8ed01  33c0  XOR EAX,EAX
00c8ed03  5e  POP ESI
00c8ed04  83c408  ADD ESP,0x8
00c8ed07  c3  RET
Owned instructions=28 owned bytes=72 nonowned bytes=0
