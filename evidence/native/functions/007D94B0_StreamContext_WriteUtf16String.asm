# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: StreamContext_WriteUtf16String
Paired actual annotated Ghidra pseudocode: 007D94B0_StreamContext_WriteUtf16String.c
Owned ranges: [[007d94b0, 007d94f2]]
Envelope bytes=67

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007d94b0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
007d94b4  53  PUSH EBX
007d94b5  8b18  MOV EBX,dword ptr [EAX]
007d94b7  56  PUSH ESI
007d94b8  57  PUSH EDI
007d94b9  8b7804  MOV EDI,dword ptr [EAX + 0x4]
007d94bc  8bf1  MOV ESI,ECX
007d94be  8b4610  MOV EAX,dword ptr [ESI + 0x10]
007d94c1  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
007d94c4  2bfb  SUB EDI,EBX
007d94c6  50  PUSH EAX
007d94c7  d1ff  SAR EDI,0x1
007d94c9  57  PUSH EDI
007d94ca  51  PUSH ECX
007d94cb  e8a04ad0ff  CALL 0x004ddf70
007d94d0  83c40c  ADD ESP,0xc
007d94d3  204614  AND byte ptr [ESI + 0x14],AL
007d94d6  7415  JZ 0x007d94ed
007d94d8  8b5610  MOV EDX,dword ptr [ESI + 0x10]
007d94db  8b4608  MOV EAX,dword ptr [ESI + 0x8]
007d94de  52  PUSH EDX
007d94df  57  PUSH EDI
007d94e0  53  PUSH EBX
007d94e1  50  PUSH EAX
007d94e2  e8b949d0ff  CALL 0x004ddea0
007d94e7  83c410  ADD ESP,0x10
007d94ea  204614  AND byte ptr [ESI + 0x14],AL
007d94ed  5f  POP EDI
007d94ee  5e  POP ESI
007d94ef  5b  POP EBX
007d94f0  c20400  RET 0x4
Owned instructions=31 owned bytes=67 gap/nonowned bytes=0
