# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Analyst name: ProductCatalog_LookupRoofPattern
Paired actual annotated Ghidra pseudocode: 00C8ED80_ProductCatalog_LookupRoofPattern.c
Owned ranges: [[00c8ed80, 00c8edd7]]
Envelope bytes=88

GHIDRA LISTING (original bytes; nonowned gaps explicit)
00c8ed80  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00c8ed84  83ec08  SUB ESP,0x8
00c8ed87  56  PUSH ESI
00c8ed88  57  PUSH EDI
00c8ed89  8bf9  MOV EDI,ECX
00c8ed8b  50  PUSH EAX
00c8ed8c  8d4c240c  LEA ECX,[ESP + 0xc]
00c8ed90  8db7fc000000  LEA ESI,[EDI + 0xfc]
00c8ed96  51  PUSH ECX
00c8ed97  8bce  MOV ECX,ESI
00c8ed99  e882edffff  CALL 0x00c8db20
00c8ed9e  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00c8eda2  3b44240c  CMP EAX,dword ptr [ESP + 0xc]
00c8eda6  7503  JNZ 0x00c8edab
00c8eda8  8b4604  MOV EAX,dword ptr [ESI + 0x4]
00c8edab  3b8700010000  CMP EAX,dword ptr [EDI + 0x100]
00c8edb1  7510  JNZ 0x00c8edc3
00c8edb3  807c241800  CMP byte ptr [ESP + 0x18],0x0
00c8edb8  7414  JZ 0x00c8edce
00c8edba  8b16  MOV EDX,dword ptr [ESI]
00c8edbc  3b5604  CMP EDX,dword ptr [ESI + 0x4]
00c8edbf  740d  JZ 0x00c8edce
00c8edc1  8bc2  MOV EAX,EDX
00c8edc3  8b4010  MOV EAX,dword ptr [EAX + 0x10]
00c8edc6  5f  POP EDI
00c8edc7  5e  POP ESI
00c8edc8  83c408  ADD ESP,0x8
00c8edcb  c20800  RET 0x8
00c8edce  5f  POP EDI
00c8edcf  33c0  XOR EAX,EAX
00c8edd1  5e  POP ESI
00c8edd2  83c408  ADD ESP,0x8
00c8edd5  c20800  RET 0x8
Owned instructions=33 owned bytes=88 nonowned bytes=0
