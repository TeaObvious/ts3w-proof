# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: StreamContext_WriteByte
Paired actual annotated Ghidra pseudocode: 0059FDB0_StreamContext_WriteByte.c
Owned ranges: [[0059fdb0, 0059fdcf]]
Envelope bytes=32

GHIDRA LISTING (original bytes; nonowned alignment explicit)
0059fdb0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
0059fdb4  56  PUSH ESI
0059fdb5  8bf1  MOV ESI,ECX
0059fdb7  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
0059fdba  50  PUSH EAX
0059fdbb  51  PUSH ECX
0059fdbc  e86fe0f3ff  CALL 0x004dde30
0059fdc1  83c408  ADD ESP,0x8
0059fdc4  8bce  MOV ECX,ESI
0059fdc6  50  PUSH EAX
0059fdc7  e8247c2300  CALL 0x007d79f0
0059fdcc  5e  POP ESI
0059fdcd  c20400  RET 0x4
Owned instructions=13 owned bytes=32 gap/nonowned bytes=0
