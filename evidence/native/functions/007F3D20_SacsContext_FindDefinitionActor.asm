# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SacsContext_FindDefinitionActor
Paired actual annotated Ghidra pseudocode: 007F3D20_SacsContext_FindDefinitionActor.c
Owned ranges: [[007f3d20, 007f3d41]]
Envelope bytes=34

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007f3d20  8b442404  MOV EAX,dword ptr [ESP + 0x4]
007f3d24  85c0  TEST EAX,EAX
007f3d26  7415  JZ 0x007f3d3d
007f3d28  8b402c  MOV EAX,dword ptr [EAX + 0x2c]
007f3d2b  8b09  MOV ECX,dword ptr [ECX]
007f3d2d  50  PUSH EAX
007f3d2e  e8adc20000  CALL 0x007fffe0
007f3d33  85c0  TEST EAX,EAX
007f3d35  7406  JZ 0x007f3d3d
007f3d37  8b4008  MOV EAX,dword ptr [EAX + 0x8]
007f3d3a  c20400  RET 0x4
007f3d3d  33c0  XOR EAX,EAX
007f3d3f  c20400  RET 0x4
Owned instructions=13 owned bytes=34 gap/nonowned bytes=0
