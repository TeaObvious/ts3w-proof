# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Analyst name: ProductCatalog_LookupFenceProduct
Paired actual annotated Ghidra pseudocode: 00C8E760_ProductCatalog_LookupFenceProduct.c
Owned ranges: [[00c8e760, 00c8e7c1]]
Envelope bytes=98

GHIDRA LISTING (original bytes; nonowned gaps explicit)
00c8e760  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00c8e764  83ec08  SUB ESP,0x8
00c8e767  56  PUSH ESI
00c8e768  57  PUSH EDI
00c8e769  8bf9  MOV EDI,ECX
00c8e76b  50  PUSH EAX
00c8e76c  8d4c240c  LEA ECX,[ESP + 0xc]
00c8e770  8db710010000  LEA ESI,[EDI + 0x110]
00c8e776  51  PUSH ECX
00c8e777  8bce  MOV ECX,ESI
00c8e779  e8a2f3ffff  CALL 0x00c8db20
00c8e77e  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00c8e782  3b44240c  CMP EAX,dword ptr [ESP + 0xc]
00c8e786  7404  JZ 0x00c8e78c
00c8e788  8bf0  MOV ESI,EAX
00c8e78a  eb03  JMP 0x00c8e78f
00c8e78c  8b7604  MOV ESI,dword ptr [ESI + 0x4]
00c8e78f  3bb714010000  CMP ESI,dword ptr [EDI + 0x114]
00c8e795  740b  JZ 0x00c8e7a2
00c8e797  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00c8e79a  5f  POP EDI
00c8e79b  5e  POP ESI
00c8e79c  83c408  ADD ESP,0x8
00c8e79f  c20800  RET 0x8
00c8e7a2  807c241800  CMP byte ptr [ESP + 0x18],0x0
00c8e7a7  740f  JZ 0x00c8e7b8
00c8e7a9  8bcf  MOV ECX,EDI
00c8e7ab  e860ffffff  CALL 0x00c8e710
00c8e7b0  5f  POP EDI
00c8e7b1  5e  POP ESI
00c8e7b2  83c408  ADD ESP,0x8
00c8e7b5  c20800  RET 0x8
00c8e7b8  5f  POP EDI
00c8e7b9  33c0  XOR EAX,EAX
00c8e7bb  5e  POP ESI
00c8e7bc  83c408  ADD ESP,0x8
00c8e7bf  c20800  RET 0x8
Owned instructions=37 owned bytes=98 nonowned bytes=0
