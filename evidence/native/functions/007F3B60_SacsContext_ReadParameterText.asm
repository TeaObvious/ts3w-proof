# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SacsContext_ReadParameterText
Paired actual annotated Ghidra pseudocode: 007F3B60_SacsContext_ReadParameterText.c
Owned ranges: [[007f3b60, 007f3b70]]
Envelope bytes=17

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007f3b60  8b442404  MOV EAX,dword ptr [ESP + 0x4]
007f3b64  8b09  MOV ECX,dword ptr [ECX]
007f3b66  6a00  PUSH 0x0
007f3b68  50  PUSH EAX
007f3b69  e8d2c40000  CALL 0x00800040
007f3b6e  c20400  RET 0x4
Owned instructions=6 owned bytes=17 gap/nonowned bytes=0
