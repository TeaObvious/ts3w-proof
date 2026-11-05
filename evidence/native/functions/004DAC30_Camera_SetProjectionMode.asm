# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: Camera_SetProjectionMode
Paired actual annotated Ghidra pseudocode: 004DAC30_Camera_SetProjectionMode.c
Owned ranges: [[004dac30, 004dac39]]
Envelope bytes=10

GHIDRA LISTING (original bytes; nonowned alignment explicit)
004dac30  8b442404  MOV EAX,dword ptr [ESP + 0x4]
004dac34  894108  MOV dword ptr [ECX + 0x8],EAX
004dac37  c20400  RET 0x4
Owned instructions=3 owned bytes=10 gap/nonowned bytes=0
