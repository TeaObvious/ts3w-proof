# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: Stream_BeginSizedBlock
Paired actual annotated Ghidra pseudocode: 005A3040_Stream_BeginSizedBlock.c
Owned ranges: [[005a3040, 005a3070]]
Envelope bytes=49

GHIDRA LISTING (original bytes; nonowned alignment explicit)
005a3040  56  PUSH ESI
005a3041  8bf1  MOV ESI,ECX
005a3043  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
005a3046  8b01  MOV EAX,dword ptr [ECX]
005a3048  8b5024  MOV EDX,dword ptr [EAX + 0x24]
005a304b  57  PUSH EDI
005a304c  6a00  PUSH 0x0
005a304e  ffd2  CALL EDX
005a3050  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
005a3053  8bf8  MOV EDI,EAX
005a3055  8b4610  MOV EAX,dword ptr [ESI + 0x10]
005a3058  50  PUSH EAX
005a3059  6a00  PUSH 0x0
005a305b  51  PUSH ECX
005a305c  e80faff3ff  CALL 0x004ddf70
005a3061  83c40c  ADD ESP,0xc
005a3064  8bce  MOV ECX,ESI
005a3066  50  PUSH EAX
005a3067  e884492300  CALL 0x007d79f0
005a306c  8bc7  MOV EAX,EDI
005a306e  5f  POP EDI
005a306f  5e  POP ESI
005a3070  c3  RET
Owned instructions=23 owned bytes=49 gap/nonowned bytes=0
