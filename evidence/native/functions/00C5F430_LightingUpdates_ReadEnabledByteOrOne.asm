# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Actual Ghidra function: LightingUpdates_ReadEnabledByteOrOne
Paired annotated actual pseudocode: 00C5F430_LightingUpdates_ReadEnabledByteOrOne.c
Owned ranges: [[00c5f430, 00c5f449]]

GHIDRA LISTING (original bytes)
00c5f430  e83b8da8ff  CALL 0x006e8170
00c5f435  85c0  TEST EAX,EAX
00c5f437  740e  JZ 0x00c5f447
00c5f439  8bc8  MOV ECX,EAX
00c5f43b  e8e08da8ff  CALL 0x006e8220
00c5f440  8a8000010000  MOV AL,byte ptr [EAX + 0x100]
00c5f446  c3  RET
00c5f447  b001  MOV AL,0x1
00c5f449  c3  RET
Owned instructions=9 owned bytes=26
