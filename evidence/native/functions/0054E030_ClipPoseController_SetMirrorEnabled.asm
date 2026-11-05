# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: ClipPoseController_SetMirrorEnabled
Paired actual annotated Ghidra pseudocode: 0054E030_ClipPoseController_SetMirrorEnabled.c
Owned ranges: [[0054e030, 0054e03c]]
Envelope bytes=13

GHIDRA LISTING (original bytes; nonowned alignment explicit)
0054e030  8a442404  MOV AL,byte ptr [ESP + 0x4]
0054e034  8881c8030000  MOV byte ptr [ECX + 0x3c8],AL
0054e03a  c20400  RET 0x4
Owned instructions=3 owned bytes=13 gap/nonowned bytes=0
