# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SacsContext_FindActorByHash
Paired actual annotated Ghidra pseudocode: 007F3D50_SacsContext_FindActorByHash.c
Owned ranges: [[007f3d50, 007f3d6e]]
Envelope bytes=31

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007f3d50  8b442404  MOV EAX,dword ptr [ESP + 0x4]
007f3d54  85c0  TEST EAX,EAX
007f3d56  7412  JZ 0x007f3d6a
007f3d58  8b09  MOV ECX,dword ptr [ECX]
007f3d5a  50  PUSH EAX
007f3d5b  e880c20000  CALL 0x007fffe0
007f3d60  85c0  TEST EAX,EAX
007f3d62  7406  JZ 0x007f3d6a
007f3d64  8b4008  MOV EAX,dword ptr [EAX + 0x8]
007f3d67  c20400  RET 0x4
007f3d6a  33c0  XOR EAX,EAX
007f3d6c  c20400  RET 0x4
Owned instructions=12 owned bytes=31 gap/nonowned bytes=0
