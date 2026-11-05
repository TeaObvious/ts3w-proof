# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete original owned function listing.
Analyst name: RenderDevice_SetStencilCompareReferenceMask
Paired actual annotated Ghidra pseudocode: 0060FE40_RenderDevice_SetStencilCompareReferenceMask.c
Owned ranges: [[0060fe40, 0060fe77]]
Owned bytes=56; instructions=20. Nonowned holes are excluded.

GHIDRA LISTING (original bytes)
0060fe40  8b442404  MOV EAX,dword ptr [ESP + 0x4]
0060fe44  56  PUSH ESI
0060fe45  8bf1  MOV ESI,ECX
0060fe47  8b0c85f489fe00  MOV ECX,dword ptr [EAX*0x4 + 0xfe89f4]
0060fe4e  51  PUSH ECX
0060fe4f  6a38  PUSH 0x38
0060fe51  8bce  MOV ECX,ESI
0060fe53  e858f0ffff  CALL 0x0060eeb0
0060fe58  8b54240c  MOV EDX,dword ptr [ESP + 0xc]
0060fe5c  52  PUSH EDX
0060fe5d  6a39  PUSH 0x39
0060fe5f  8bce  MOV ECX,ESI
0060fe61  e84af0ffff  CALL 0x0060eeb0
0060fe66  8b442410  MOV EAX,dword ptr [ESP + 0x10]
0060fe6a  50  PUSH EAX
0060fe6b  6a3a  PUSH 0x3a
0060fe6d  8bce  MOV ECX,ESI
0060fe6f  e83cf0ffff  CALL 0x0060eeb0
0060fe74  5e  POP ESI
0060fe75  c20c00  RET 0xc
