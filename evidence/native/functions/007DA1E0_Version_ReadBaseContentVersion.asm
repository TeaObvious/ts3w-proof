# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: Version_ReadBaseContentVersion
Paired actual annotated Ghidra pseudocode: 007DA1E0_Version_ReadBaseContentVersion.c
Owned ranges: [[007da1e0, 007da1ef]]
Envelope bytes=16

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007da1e0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
007da1e4  6a01  PUSH 0x1
007da1e6  50  PUSH EAX
007da1e7  e894feffff  CALL 0x007da080
007da1ec  83c408  ADD ESP,0x8
007da1ef  c3  RET
Owned instructions=6 owned bytes=16 gap/nonowned bytes=0
