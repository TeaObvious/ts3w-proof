# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete original owned function listing.
Analyst name: RenderDevice_SetStencilWriteMask
Paired actual annotated Ghidra pseudocode: 0060FE90_RenderDevice_SetStencilWriteMask.c
Owned ranges: [[0060fe90, 0060fe9e]]
Owned bytes=15; instructions=5. Nonowned holes are excluded.

GHIDRA LISTING (original bytes)
0060fe90  8b442404  MOV EAX,dword ptr [ESP + 0x4]
0060fe94  50  PUSH EAX
0060fe95  6a3b  PUSH 0x3b
0060fe97  e814f0ffff  CALL 0x0060eeb0
0060fe9c  c20400  RET 0x4
