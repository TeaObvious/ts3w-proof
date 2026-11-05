# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: LibraryBin_IsContentMetadataKey
Paired actual annotated Ghidra pseudocode: 009A1690_LibraryBin_IsContentMetadataKey.c
Owned ranges: [[009a1690, 009a16a2]]
Envelope bytes=19

GHIDRA LISTING (original bytes; nonowned alignment explicit)
009a1690  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
009a1694  33c0  XOR EAX,EAX
009a1696  817908b8b97906  CMP dword ptr [ECX + 0x8],0x679b9b8
009a169d  0f94c0  SETZ AL
009a16a0  c20400  RET 0x4
Owned instructions=5 owned bytes=19 gap/nonowned bytes=0
