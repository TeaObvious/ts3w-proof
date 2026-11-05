# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete actual Ghidra function envelope.
Actual Ghidra function: SceneObject_QueueDirtyOnce
Paired annotated actual pseudocode: 006FA9F0_SceneObject_QueueDirtyOnce.c
Owned ranges: [[006fa9f0, 006faa14]]

GHIDRA LISTING (original bytes; non-owned alignment explicit)
006fa9f0  85c9  TEST ECX,ECX
006fa9f2  7405  JZ 0x006fa9f9
006fa9f4  8d4118  LEA EAX,[ECX + 0x18]
006fa9f7  eb02  JMP 0x006fa9fb
006fa9f9  33c0  XOR EAX,EAX
006fa9fb  833800  CMP dword ptr [EAX],0x0
006fa9fe  7514  JNZ 0x006faa14
006faa00  8900  MOV dword ptr [EAX],EAX
006faa02  894004  MOV dword ptr [EAX + 0x4],EAX
006faa05  8b4130  MOV EAX,dword ptr [ECX + 0x30]
006faa08  85c0  TEST EAX,EAX
006faa0a  7408  JZ 0x006faa14
006faa0c  51  PUSH ECX
006faa0d  8bc8  MOV ECX,EAX
006faa0f  e8ec94feff  CALL 0x006e3f00
006faa14  c3  RET
Owned instructions=16 owned bytes=37 envelope bytes=37
