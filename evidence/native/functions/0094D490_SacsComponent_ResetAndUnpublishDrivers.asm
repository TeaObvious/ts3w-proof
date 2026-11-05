# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SacsComponent_ResetAndUnpublishDrivers
Paired actual annotated Ghidra pseudocode: 0094D490_SacsComponent_ResetAndUnpublishDrivers.c
Owned ranges: [[0094d490, 0094d4be]]
Envelope bytes=47

GHIDRA LISTING (original bytes; nonowned alignment explicit)
0094d490  53  PUSH EBX
0094d491  56  PUSH ESI
0094d492  8bd9  MOV EBX,ECX
0094d494  8b7308  MOV ESI,dword ptr [EBX + 0x8]
0094d497  57  PUSH EDI
0094d498  8b7b0c  MOV EDI,dword ptr [EBX + 0xc]
0094d49b  3bf7  CMP ESI,EDI
0094d49d  7413  JZ 0x0094d4b2
0094d49f  90  NOP
0094d4a0  8b0e  MOV ECX,dword ptr [ESI]
0094d4a2  85c9  TEST ECX,ECX
0094d4a4  7415  JZ 0x0094d4bb
0094d4a6  e8053bebff  CALL 0x00800fb0
0094d4ab  83c604  ADD ESI,0x4
0094d4ae  3bf7  CMP ESI,EDI
0094d4b0  75ee  JNZ 0x0094d4a0
0094d4b2  6a00  PUSH 0x0
0094d4b4  8bcb  MOV ECX,EBX
0094d4b6  e865feffff  CALL 0x0094d320
0094d4bb  5f  POP EDI
0094d4bc  5e  POP ESI
0094d4bd  5b  POP EBX
0094d4be  c3  RET
Owned instructions=23 owned bytes=47 gap/nonowned bytes=0
