# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: AnimationActor_GetSexParameterHash
Paired actual annotated Ghidra pseudocode: 005C97D0_AnimationActor_GetSexParameterHash.c
Owned ranges: [[005c97d0, 005c97fd]]
Envelope bytes=46

GHIDRA LISTING (original bytes; nonowned alignment explicit)
005c97d0  8b81f0020000  MOV EAX,dword ptr [ECX + 0x2f0]
005c97d6  2500300000  AND EAX,0x3000
005c97db  3d00100000  CMP EAX,0x1000
005c97e0  7416  JZ 0x005c97f8
005c97e2  33c9  XOR ECX,ECX
005c97e4  3d00200000  CMP EAX,0x2000
005c97e9  0f95c1  SETNZ CL
005c97ec  83e901  SUB ECX,0x1
005c97ef  81e1d51c6583  AND ECX,0x83651cd5
005c97f5  8bc1  MOV EAX,ECX
005c97f7  c3  RET
005c97f8  b87ee276b9  MOV EAX,0xb976e27e
005c97fd  c3  RET
Owned instructions=13 owned bytes=46 gap/nonowned bytes=0
