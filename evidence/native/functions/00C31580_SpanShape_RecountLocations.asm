# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Analyst name: SpanShape_RecountLocations
Paired actual annotated Ghidra pseudocode: 00C31580_SpanShape_RecountLocations.c
Owned ranges: [[00c31580, 00c31637]]
Envelope bytes=184

GHIDRA LISTING (original bytes; nonowned gaps explicit)
00c31580  83ec40  SUB ESP,0x40
00c31583  c7413000000000  MOV dword ptr [ECX + 0x30],0x0
00c3158a  8b4114  MOV EAX,dword ptr [ECX + 0x14]
00c3158d  8b5118  MOV EDX,dword ptr [ECX + 0x18]
00c31590  56  PUSH ESI
00c31591  8b710c  MOV ESI,dword ptr [ECX + 0xc]
00c31594  8944240c  MOV dword ptr [ESP + 0xc],EAX
00c31598  8b411c  MOV EAX,dword ptr [ECX + 0x1c]
00c3159b  3bf0  CMP ESI,EAX
00c3159d  89542410  MOV dword ptr [ESP + 0x10],EDX
00c315a1  89442434  MOV dword ptr [ESP + 0x34],EAX
00c315a5  0f8488000000  JZ 0x00c31633
00c315ab  53  PUSH EBX
00c315ac  55  PUSH EBP
00c315ad  57  PUSH EDI
00c315ae  8bff  MOV EDI,EDI
00c315b0  8b7e10  MOV EDI,dword ptr [ESI + 0x10]
00c315b3  8b5e18  MOV EBX,dword ptr [ESI + 0x18]
00c315b6  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00c315b9  3bd3  CMP EDX,EBX
00c315bb  897c2428  MOV dword ptr [ESP + 0x28],EDI
00c315bf  8b7e14  MOV EDI,dword ptr [ESI + 0x14]
00c315c2  895c2430  MOV dword ptr [ESP + 0x30],EBX
00c315c6  7443  JZ 0x00c3160b
00c315c8  8b02  MOV EAX,dword ptr [EDX]
00c315ca  85c0  TEST EAX,EAX
00c315cc  741c  JZ 0x00c315ea
00c315ce  8bff  MOV EDI,EDI
00c315d0  0fbe5805  MOVSX EBX,byte ptr [EAX + 0x5]
00c315d4  0fbe6804  MOVSX EBP,byte ptr [EAX + 0x4]
00c315d8  2bdd  SUB EBX,EBP
00c315da  83c301  ADD EBX,0x1
00c315dd  015930  ADD dword ptr [ECX + 0x30],EBX
00c315e0  8b00  MOV EAX,dword ptr [EAX]
00c315e2  85c0  TEST EAX,EAX
00c315e4  75ea  JNZ 0x00c315d0
00c315e6  8b5c2430  MOV EBX,dword ptr [ESP + 0x30]
00c315ea  83c208  ADD EDX,0x8
00c315ed  3b542428  CMP EDX,dword ptr [ESP + 0x28]
00c315f1  7510  JNZ 0x00c31603
00c315f3  8b5704  MOV EDX,dword ptr [EDI + 0x4]
00c315f6  83c704  ADD EDI,0x4
00c315f9  8d8200010000  LEA EAX,[EDX + 0x100]
00c315ff  89442428  MOV dword ptr [ESP + 0x28],EAX
00c31603  3bd3  CMP EDX,EBX
00c31605  75c1  JNZ 0x00c315c8
00c31607  8b442440  MOV EAX,dword ptr [ESP + 0x40]
00c3160b  83c630  ADD ESI,0x30
00c3160e  3b742418  CMP ESI,dword ptr [ESP + 0x18]
00c31612  7518  JNZ 0x00c3162c
00c31614  8b54241c  MOV EDX,dword ptr [ESP + 0x1c]
00c31618  8b7204  MOV ESI,dword ptr [EDX + 0x4]
00c3161b  83c204  ADD EDX,0x4
00c3161e  8954241c  MOV dword ptr [ESP + 0x1c],EDX
00c31622  8d96c0000000  LEA EDX,[ESI + 0xc0]
00c31628  89542418  MOV dword ptr [ESP + 0x18],EDX
00c3162c  3bf0  CMP ESI,EAX
00c3162e  7580  JNZ 0x00c315b0
00c31630  5f  POP EDI
00c31631  5d  POP EBP
00c31632  5b  POP EBX
00c31633  5e  POP ESI
00c31634  83c440  ADD ESP,0x40
00c31637  c3  RET
Owned instructions=64 owned bytes=184 nonowned bytes=0
