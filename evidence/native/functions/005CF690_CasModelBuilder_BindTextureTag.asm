# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Actual Ghidra function: CasModelBuilder_BindTextureTag
Paired annotated actual pseudocode: 005CF690_CasModelBuilder_BindTextureTag.c
Owned ranges: [[005cf690, 005cf732]]

GHIDRA LISTING (original bytes)
005cf690  83ec18  SUB ESP,0x18
005cf693  53  PUSH EBX
005cf694  8b5c242c  MOV EBX,dword ptr [ESP + 0x2c]
005cf698  55  PUSH EBP
005cf699  8b6c242c  MOV EBP,dword ptr [ESP + 0x2c]
005cf69d  56  PUSH ESI
005cf69e  57  PUSH EDI
005cf69f  8bf9  MOV EDI,ECX
005cf6a1  8bc3  MOV EAX,EBX
005cf6a3  8d4c2438  LEA ECX,[ESP + 0x38]
005cf6a7  c1e010  SHL EAX,0x10
005cf6aa  51  PUSH ECX
005cf6ab  8d542414  LEA EDX,[ESP + 0x14]
005cf6af  0bc5  OR EAX,EBP
005cf6b1  8db78c000000  LEA ESI,[EDI + 0x8c]
005cf6b7  52  PUSH EDX
005cf6b8  8bce  MOV ECX,ESI
005cf6ba  89442440  MOV dword ptr [ESP + 0x40],EAX
005cf6be  e84d830400  CALL 0x00617a10
005cf6c3  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
005cf6c6  8b5604  MOV EDX,dword ptr [ESI + 0x4]
005cf6c9  8b442410  MOV EAX,dword ptr [ESP + 0x10]
005cf6cd  3b048a  CMP EAX,dword ptr [EDX + ECX*0x4]
005cf6d0  7420  JZ 0x005cf6f2
005cf6d2  8b4008  MOV EAX,dword ptr [EAX + 0x8]
005cf6d5  85c0  TEST EAX,EAX
005cf6d7  7419  JZ 0x005cf6f2
005cf6d9  8b4c242c  MOV ECX,dword ptr [ESP + 0x2c]
005cf6dd  50  PUSH EAX
005cf6de  8b442434  MOV EAX,dword ptr [ESP + 0x34]
005cf6e2  50  PUSH EAX
005cf6e3  e8989c1c00  CALL 0x00799380
005cf6e8  5f  POP EDI
005cf6e9  5e  POP ESI
005cf6ea  5d  POP EBP
005cf6eb  5b  POP EBX
005cf6ec  83c418  ADD ESP,0x18
005cf6ef  c21000  RET 0x10
005cf6f2  53  PUSH EBX
005cf6f3  55  PUSH EBP
005cf6f4  8bcf  MOV ECX,EDI
005cf6f6  e8b5fdffff  CALL 0x005cf4b0
005cf6fb  8b08  MOV ECX,dword ptr [EAX]
005cf6fd  894c2418  MOV dword ptr [ESP + 0x18],ECX
005cf701  8b5004  MOV EDX,dword ptr [EAX + 0x4]
005cf704  8954241c  MOV dword ptr [ESP + 0x1c],EDX
005cf708  8b4808  MOV ECX,dword ptr [EAX + 0x8]
005cf70b  894c2420  MOV dword ptr [ESP + 0x20],ECX
005cf70f  8b500c  MOV EDX,dword ptr [EAX + 0xc]
005cf712  8b4c2430  MOV ECX,dword ptr [ESP + 0x30]
005cf716  8d442418  LEA EAX,[ESP + 0x18]
005cf71a  50  PUSH EAX
005cf71b  51  PUSH ECX
005cf71c  8b4c2434  MOV ECX,dword ptr [ESP + 0x34]
005cf720  8954242c  MOV dword ptr [ESP + 0x2c],EDX
005cf724  e8f79b1c00  CALL 0x00799320
005cf729  5f  POP EDI
005cf72a  5e  POP ESI
005cf72b  5d  POP EBP
005cf72c  5b  POP EBX
005cf72d  83c418  ADD ESP,0x18
005cf730  c21000  RET 0x10
Owned instructions=62 owned bytes=163 envelope bytes=163
