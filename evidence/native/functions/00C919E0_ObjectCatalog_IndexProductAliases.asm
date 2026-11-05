# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope.
Actual Ghidra function: ObjectCatalog_IndexProductAliases
Paired actual annotated Ghidra pseudocode: 00C919E0_ObjectCatalog_IndexProductAliases.c
Owned ranges: [[00c919e0, 00c91a57]]
Envelope bytes=120

GHIDRA LISTING (original bytes; nonowned gaps/data explicit)
00c919e0  53  PUSH EBX
00c919e1  55  PUSH EBP
00c919e2  56  PUSH ESI
00c919e3  8b742410  MOV ESI,dword ptr [ESP + 0x10]
00c919e7  57  PUSH EDI
00c919e8  8be9  MOV EBP,ECX
00c919ea  8d4608  LEA EAX,[ESI + 0x8]
00c919ed  50  PUSH EAX
00c919ee  8d8dc0000000  LEA ECX,[EBP + 0xc0]
00c919f4  e847feffff  CALL 0x00c91840
00c919f9  8bd8  MOV EBX,EAX
00c919fb  8b3b  MOV EDI,dword ptr [EBX]
00c919fd  3bf7  CMP ESI,EDI
00c919ff  741b  JZ 0x00c91a1c
00c91a01  85f6  TEST ESI,ESI
00c91a03  7408  JZ 0x00c91a0d
00c91a05  8b16  MOV EDX,dword ptr [ESI]
00c91a07  8b02  MOV EAX,dword ptr [EDX]
00c91a09  8bce  MOV ECX,ESI
00c91a0b  ffd0  CALL EAX
00c91a0d  85ff  TEST EDI,EDI
00c91a0f  8933  MOV dword ptr [EBX],ESI
00c91a11  7409  JZ 0x00c91a1c
00c91a13  8b17  MOV EDX,dword ptr [EDI]
00c91a15  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00c91a18  8bcf  MOV ECX,EDI
00c91a1a  ffd0  CALL EAX
00c91a1c  8d8e88000000  LEA ECX,[ESI + 0x88]
00c91a22  51  PUSH ECX
00c91a23  8d8dd4000000  LEA ECX,[EBP + 0xd4]
00c91a29  e812feffff  CALL 0x00c91840
00c91a2e  8bd8  MOV EBX,EAX
00c91a30  8b3b  MOV EDI,dword ptr [EBX]
00c91a32  3bf7  CMP ESI,EDI
00c91a34  741b  JZ 0x00c91a51
00c91a36  85f6  TEST ESI,ESI
00c91a38  7408  JZ 0x00c91a42
00c91a3a  8b16  MOV EDX,dword ptr [ESI]
00c91a3c  8b02  MOV EAX,dword ptr [EDX]
00c91a3e  8bce  MOV ECX,ESI
00c91a40  ffd0  CALL EAX
00c91a42  85ff  TEST EDI,EDI
00c91a44  8933  MOV dword ptr [EBX],ESI
00c91a46  7409  JZ 0x00c91a51
00c91a48  8b17  MOV EDX,dword ptr [EDI]
00c91a4a  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00c91a4d  8bcf  MOV ECX,EDI
00c91a4f  ffd0  CALL EAX
00c91a51  5f  POP EDI
00c91a52  5e  POP ESI
00c91a53  5d  POP EBP
00c91a54  5b  POP EBX
00c91a55  c20400  RET 0x4
Owned instructions=53 owned bytes=120 nonowned bytes=0
