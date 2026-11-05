# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete original owned function listing.
Analyst name: RenderDevice_SetCullModeFromIndex
Paired actual annotated Ghidra pseudocode: 0060FDC0_RenderDevice_SetCullModeFromIndex.c
Owned ranges: [[0060fdc0, 0060fdd5]]
Owned bytes=22; instructions=6. Nonowned holes are excluded.

GHIDRA LISTING (original bytes)
0060fdc0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
0060fdc4  8b1485e889fe00  MOV EDX,dword ptr [EAX*0x4 + 0xfe89e8]
0060fdcb  52  PUSH EDX
0060fdcc  6a16  PUSH 0x16
0060fdce  e8ddf0ffff  CALL 0x0060eeb0
0060fdd3  c20400  RET 0x4
