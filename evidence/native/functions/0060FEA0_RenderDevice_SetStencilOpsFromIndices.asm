# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete original owned function listing.
Analyst name: RenderDevice_SetStencilOpsFromIndices
Paired actual annotated Ghidra pseudocode: 0060FEA0_RenderDevice_SetStencilOpsFromIndices.c
Owned ranges: [[0060fea0, 0060fee5]]
Owned bytes=70; instructions=22. Nonowned holes are excluded.

GHIDRA LISTING (original bytes)
0060fea0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
0060fea4  56  PUSH ESI
0060fea5  8bf1  MOV ESI,ECX
0060fea7  8b0c85b88afe00  MOV ECX,dword ptr [EAX*0x4 + 0xfe8ab8]
0060feae  51  PUSH ECX
0060feaf  6a35  PUSH 0x35
0060feb1  8bce  MOV ECX,ESI
0060feb3  e8f8efffff  CALL 0x0060eeb0
0060feb8  8b54240c  MOV EDX,dword ptr [ESP + 0xc]
0060febc  8b0495b88afe00  MOV EAX,dword ptr [EDX*0x4 + 0xfe8ab8]
0060fec3  50  PUSH EAX
0060fec4  6a36  PUSH 0x36
0060fec6  8bce  MOV ECX,ESI
0060fec8  e8e3efffff  CALL 0x0060eeb0
0060fecd  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
0060fed1  8b148db88afe00  MOV EDX,dword ptr [ECX*0x4 + 0xfe8ab8]
0060fed8  52  PUSH EDX
0060fed9  6a37  PUSH 0x37
0060fedb  8bce  MOV ECX,ESI
0060fedd  e8ceefffff  CALL 0x0060eeb0
0060fee2  5e  POP ESI
0060fee3  c20c00  RET 0xc
