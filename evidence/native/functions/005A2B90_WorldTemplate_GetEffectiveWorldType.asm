# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope.
Actual Ghidra function: WorldTemplate_GetEffectiveWorldType
Paired actual annotated Ghidra pseudocode: 005A2B90_WorldTemplate_GetEffectiveWorldType.c
Owned ranges: [[005a2b90, 005a2bd5]]
Envelope bytes=70

GHIDRA LISTING (original bytes; nonowned gaps/data explicit)
005a2b90  8b4164  MOV EAX,dword ptr [ECX + 0x64]
005a2b93  83f8ff  CMP EAX,-0x1
005a2b96  751c  JNZ 0x005a2bb4
005a2b98  e863feffff  CALL 0x005a2a00
005a2b9d  3d50db5908  CMP EAX,0x859db50
005a2ba2  7f11  JG 0x005a2bb5
005a2ba4  7424  JZ 0x005a2bca
005a2ba6  2d48db5908  SUB EAX,0x859db48
005a2bab  741d  JZ 0x005a2bca
005a2bad  83e804  SUB EAX,0x4
005a2bb0  7418  JZ 0x005a2bca
005a2bb2  33c0  XOR EAX,EAX
005a2bb4  c3  RET
005a2bb5  3dd7e3ff09  CMP EAX,0x9ffe3d7
005a2bba  7cf6  JL 0x005a2bb2
005a2bbc  3dd9e3ff09  CMP EAX,0x9ffe3d9
005a2bc1  7e0d  JLE 0x005a2bd0
005a2bc3  3d7262080c  CMP EAX,0xc086272
005a2bc8  75e8  JNZ 0x005a2bb2
005a2bca  b801000000  MOV EAX,0x1
005a2bcf  c3  RET
005a2bd0  b802000000  MOV EAX,0x2
005a2bd5  c3  RET
Owned instructions=23 owned bytes=70 nonowned bytes=0
