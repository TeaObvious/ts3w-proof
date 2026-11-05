# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete actual Ghidra function envelope.
Actual Ghidra function: Scene_AppendDirtyObject
Paired annotated actual pseudocode: 006E3F00_Scene_AppendDirtyObject.c
Owned ranges: [[006e3f00, 006e3f24]]

GHIDRA LISTING (original bytes; non-owned alignment explicit)
006e3f00  8b442404  MOV EAX,dword ptr [ESP + 0x4]
006e3f04  85c0  TEST EAX,EAX
006e3f06  7405  JZ 0x006e3f0d
006e3f08  83c018  ADD EAX,0x18
006e3f0b  eb02  JMP 0x006e3f0f
006e3f0d  33c0  XOR EAX,EAX
006e3f0f  8b5124  MOV EDX,dword ptr [ECX + 0x24]
006e3f12  83c120  ADD ECX,0x20
006e3f15  895004  MOV dword ptr [EAX + 0x4],EDX
006e3f18  8908  MOV dword ptr [EAX],ECX
006e3f1a  894104  MOV dword ptr [ECX + 0x4],EAX
006e3f1d  8b4804  MOV ECX,dword ptr [EAX + 0x4]
006e3f20  8901  MOV dword ptr [ECX],EAX
006e3f22  c20400  RET 0x4
Owned instructions=14 owned bytes=37 envelope bytes=37
