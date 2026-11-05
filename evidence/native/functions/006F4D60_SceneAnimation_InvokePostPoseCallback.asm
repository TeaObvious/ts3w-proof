# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete actual Ghidra function envelope.
Actual Ghidra function: SceneAnimation_InvokePostPoseCallback
Paired annotated actual pseudocode: 006F4D60_SceneAnimation_InvokePostPoseCallback.c
Owned ranges: [[006f4d60, 006f4d6e]]

GHIDRA LISTING (original bytes; non-owned alignment explicit)
006f4d60  8b81b4020000  MOV EAX,dword ptr [ECX + 0x2b4]
006f4d66  85c0  TEST EAX,EAX
006f4d68  7404  JZ 0x006f4d6e
006f4d6a  51  PUSH ECX
006f4d6b  ffd0  CALL EAX
006f4d6d  59  POP ECX
006f4d6e  c3  RET
Owned instructions=7 owned bytes=15 envelope bytes=15
