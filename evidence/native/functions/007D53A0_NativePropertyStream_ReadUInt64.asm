# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: NativePropertyStream_ReadUInt64
Paired actual annotated Ghidra pseudocode: 007D53A0_NativePropertyStream_ReadUInt64.c
Owned ranges: [[007d53a0, 007d53e7]]
Envelope bytes=72

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007d53a0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
007d53a4  57  PUSH EDI
007d53a5  354f8128ee  XOR EAX,0xee28814f
007d53aa  50  PUSH EAX
007d53ab  8bf9  MOV EDI,ECX
007d53ad  e8aefdffff  CALL 0x007d5160
007d53b2  84c0  TEST AL,AL
007d53b4  742c  JZ 0x007d53e2
007d53b6  8b54240c  MOV EDX,dword ptr [ESP + 0xc]
007d53ba  56  PUSH ESI
007d53bb  8b7708  MOV ESI,dword ptr [EDI + 0x8]
007d53be  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
007d53c1  8b4608  MOV EAX,dword ptr [ESI + 0x8]
007d53c4  51  PUSH ECX
007d53c5  52  PUSH EDX
007d53c6  50  PUSH EAX
007d53c7  e8e486d0ff  CALL 0x004ddab0
007d53cc  83c40c  ADD ESP,0xc
007d53cf  8bce  MOV ECX,ESI
007d53d1  50  PUSH EAX
007d53d2  e819260000  CALL 0x007d79f0
007d53d7  8b4f08  MOV ECX,dword ptr [EDI + 0x8]
007d53da  8a4114  MOV AL,byte ptr [ECX + 0x14]
007d53dd  5e  POP ESI
007d53de  5f  POP EDI
007d53df  c20800  RET 0x8
007d53e2  32c0  XOR AL,AL
007d53e4  5f  POP EDI
007d53e5  c20800  RET 0x8
Owned instructions=29 owned bytes=72 gap/nonowned bytes=0
