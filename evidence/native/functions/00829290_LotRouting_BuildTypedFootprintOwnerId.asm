# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Analyst name: LotRouting_BuildTypedFootprintOwnerId
Paired actual annotated Ghidra pseudocode: 00829290_LotRouting_BuildTypedFootprintOwnerId.c
Owned ranges: [[00829290, 008292fd]]
Envelope bytes=110

GHIDRA LISTING (original bytes; nonowned gaps explicit)
00829290  53  PUSH EBX
00829291  8b5c240c  MOV EBX,dword ptr [ESP + 0xc]
00829295  d94304  FLD float ptr [EBX + 0x4]
00829298  56  PUSH ESI
00829299  d9059c2bfa00  FLD float ptr [0x00fa2b9c]
0082929f  57  PUSH EDI
008292a0  dcc9  FMUL ST1
008292a2  d9c9  FXCH
008292a4  e8ad637500  CALL 0x00f7f656
008292a9  d80b  FMUL float ptr [EBX]
008292ab  8bc8  MOV ECX,EAX
008292ad  8b442418  MOV EAX,dword ptr [ESP + 0x18]
008292b1  8bf2  MOV ESI,EDX
008292b3  25ff000000  AND EAX,0xff
008292b8  99  CDQ
008292b9  0fa4c210  SHLD EDX,EAX,0x10
008292bd  81e1ffff0000  AND ECX,0xffff
008292c3  33f6  XOR ESI,ESI
008292c5  0bf2  OR ESI,EDX
008292c7  c1e010  SHL EAX,0x10
008292ca  0bc8  OR ECX,EAX
008292cc  8bd1  MOV EDX,ECX
008292ce  8bfe  MOV EDI,ESI
008292d0  0fa4d710  SHLD EDI,EDX,0x10
008292d4  c1e210  SHL EDX,0x10
008292d7  8bf2  MOV ESI,EDX
008292d9  e878637500  CALL 0x00f7f656
008292de  33d2  XOR EDX,EDX
008292e0  25ffff0000  AND EAX,0xffff
008292e5  0bfa  OR EDI,EDX
008292e7  0bf0  OR ESI,EAX
008292e9  8b442410  MOV EAX,dword ptr [ESP + 0x10]
008292ed  57  PUSH EDI
008292ee  56  PUSH ESI
008292ef  50  PUSH EAX
008292f0  6a02  PUSH 0x2
008292f2  e83969faff  CALL 0x007cfc30
008292f7  83c410  ADD ESP,0x10
008292fa  5f  POP EDI
008292fb  5e  POP ESI
008292fc  5b  POP EBX
008292fd  c3  RET
Owned instructions=42 owned bytes=110 nonowned bytes=0
