# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a2060 (CASUtils_ExtractEyebrowColorImpl)
Paired Ghidra pseudocode: 103A2060_CASUtils_ExtractEyebrowColorImpl.c
Window: [0x103a2060, 0x103a2070) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a2070
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a2060: e9 3b ea ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a2060 <.text+0x3a1060>:
103a2060:	e9 3b ea ff ff                                  	jmp    0x103a0aa0
103a2065:	cc                                              	int3
103a2066:	cc                                              	int3
103a2067:	cc                                              	int3
103a2068:	cc                                              	int3
103a2069:	cc                                              	int3
103a206a:	cc                                              	int3
103a206b:	cc                                              	int3
103a206c:	cc                                              	int3
103a206d:	cc                                              	int3
103a206e:	cc                                              	int3
103a206f:	cc                                              	int3
