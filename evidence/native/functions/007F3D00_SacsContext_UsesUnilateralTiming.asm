# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SacsContext_UsesUnilateralTiming
Paired actual annotated Ghidra pseudocode: 007F3D00_SacsContext_UsesUnilateralTiming.c
Owned ranges: [[007f3d00, 007f3d1e]]
Envelope bytes=31

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007f3d00  8b01  MOV EAX,dword ptr [ECX]
007f3d02  8b480c  MOV ECX,dword ptr [EAX + 0xc]
007f3d05  8b513c  MOV EDX,dword ptr [ECX + 0x3c]
007f3d08  83e201  AND EDX,0x1
007f3d0b  80fa01  CMP DL,0x1
007f3d0e  7409  JZ 0x007f3d19
007f3d10  80783c00  CMP byte ptr [EAX + 0x3c],0x0
007f3d14  7503  JNZ 0x007f3d19
007f3d16  33c0  XOR EAX,EAX
007f3d18  c3  RET
007f3d19  b801000000  MOV EAX,0x1
007f3d1e  c3  RET
Owned instructions=12 owned bytes=31 gap/nonowned bytes=0
