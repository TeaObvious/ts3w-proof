# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Analyst name: ProductCatalog_LookupRoofStyle
Paired actual annotated Ghidra pseudocode: 00C8ED10_ProductCatalog_LookupRoofStyle.c
Owned ranges: [[00c8ed10, 00c8ed71]]
Envelope bytes=98

GHIDRA LISTING (original bytes; nonowned gaps explicit)
00c8ed10  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00c8ed14  83ec08  SUB ESP,0x8
00c8ed17  56  PUSH ESI
00c8ed18  57  PUSH EDI
00c8ed19  8bf9  MOV EDI,ECX
00c8ed1b  50  PUSH EAX
00c8ed1c  8d4c240c  LEA ECX,[ESP + 0xc]
00c8ed20  8db7e8000000  LEA ESI,[EDI + 0xe8]
00c8ed26  51  PUSH ECX
00c8ed27  8bce  MOV ECX,ESI
00c8ed29  e8f2edffff  CALL 0x00c8db20
00c8ed2e  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00c8ed32  3b44240c  CMP EAX,dword ptr [ESP + 0xc]
00c8ed36  7404  JZ 0x00c8ed3c
00c8ed38  8bf0  MOV ESI,EAX
00c8ed3a  eb03  JMP 0x00c8ed3f
00c8ed3c  8b7604  MOV ESI,dword ptr [ESI + 0x4]
00c8ed3f  3bb7ec000000  CMP ESI,dword ptr [EDI + 0xec]
00c8ed45  740b  JZ 0x00c8ed52
00c8ed47  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00c8ed4a  5f  POP EDI
00c8ed4b  5e  POP ESI
00c8ed4c  83c408  ADD ESP,0x8
00c8ed4f  c20800  RET 0x8
00c8ed52  807c241800  CMP byte ptr [ESP + 0x18],0x0
00c8ed57  740f  JZ 0x00c8ed68
00c8ed59  8bcf  MOV ECX,EDI
00c8ed5b  e860ffffff  CALL 0x00c8ecc0
00c8ed60  5f  POP EDI
00c8ed61  5e  POP ESI
00c8ed62  83c408  ADD ESP,0x8
00c8ed65  c20800  RET 0x8
00c8ed68  5f  POP EDI
00c8ed69  33c0  XOR EAX,EAX
00c8ed6b  5e  POP ESI
00c8ed6c  83c408  ADD ESP,0x8
00c8ed6f  c20800  RET 0x8
Owned instructions=37 owned bytes=98 nonowned bytes=0
