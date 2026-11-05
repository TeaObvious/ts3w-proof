# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: Stream_FinishSizedBlock
Paired actual annotated Ghidra pseudocode: 005BF070_Stream_FinishSizedBlock.c
Owned ranges: [[005bf070, 005bf0a1]]
Envelope bytes=50

GHIDRA LISTING (original bytes; nonowned alignment explicit)
005bf070  56  PUSH ESI
005bf071  8bf1  MOV ESI,ECX
005bf073  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
005bf076  8b01  MOV EAX,dword ptr [ECX]
005bf078  8b5024  MOV EDX,dword ptr [EAX + 0x24]
005bf07b  6a00  PUSH 0x0
005bf07d  ffd2  CALL EDX
005bf07f  83f8ff  CMP EAX,-0x1
005bf082  7508  JNZ 0x005bf08c
005bf084  c6461400  MOV byte ptr [ESI + 0x14],0x0
005bf088  5e  POP ESI
005bf089  c20400  RET 0x4
005bf08c  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
005bf090  2bc1  SUB EAX,ECX
005bf092  83e804  SUB EAX,0x4
005bf095  50  PUSH EAX
005bf096  51  PUSH ECX
005bf097  8bce  MOV ECX,ESI
005bf099  e8a2fdffff  CALL 0x005bee40
005bf09e  5e  POP ESI
005bf09f  c20400  RET 0x4
Owned instructions=21 owned bytes=50 gap/nonowned bytes=0
