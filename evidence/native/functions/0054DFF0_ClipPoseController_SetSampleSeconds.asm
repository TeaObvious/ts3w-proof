# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: ClipPoseController_SetSampleSeconds
Paired actual annotated Ghidra pseudocode: 0054DFF0_ClipPoseController_SetSampleSeconds.c
Owned ranges: [[0054dff0, 0054e000]]
Envelope bytes=17

GHIDRA LISTING (original bytes; nonowned alignment explicit)
0054dff0  f30f10442404  MOVSS XMM0,dword ptr [ESP + 0x4]
0054dff6  f30f1181c0030000  MOVSS dword ptr [ECX + 0x3c0],XMM0
0054dffe  c20400  RET 0x4
Owned instructions=3 owned bytes=17 gap/nonowned bytes=0
