# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete actual Ghidra function envelope.
Actual Ghidra function: SceneObject_TestShadowMatrixSource
Paired annotated actual pseudocode: 006FA970_SceneObject_TestShadowMatrixSource.c
Owned ranges: [[006fa970, 006fa988]]

GHIDRA LISTING (original bytes; non-owned alignment explicit)
006fa970  8b4938  MOV ECX,dword ptr [ECX + 0x38]
006fa973  85c9  TEST ECX,ECX
006fa975  740f  JZ 0x006fa986
006fa977  e844fcffff  CALL 0x006fa5c0
006fa97c  84c0  TEST AL,AL
006fa97e  7406  JZ 0x006fa986
006fa980  b801000000  MOV EAX,0x1
006fa985  c3  RET
006fa986  33c0  XOR EAX,EAX
006fa988  c3  RET
Owned instructions=10 owned bytes=25 envelope bytes=25
