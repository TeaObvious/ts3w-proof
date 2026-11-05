# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a2050 (CASUtils_ExtractHairColorImpl)
Paired Ghidra pseudocode: 103A2050_CASUtils_ExtractHairColorImpl.c
Window: [0x103a2050, 0x103a2060) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a2060
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a2050: e9 9b e9 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a2050 <.text+0x3a1050>:
103a2050:	e9 9b e9 ff ff                                  	jmp    0x103a09f0
103a2055:	cc                                              	int3
103a2056:	cc                                              	int3
103a2057:	cc                                              	int3
103a2058:	cc                                              	int3
103a2059:	cc                                              	int3
103a205a:	cc                                              	int3
103a205b:	cc                                              	int3
103a205c:	cc                                              	int3
103a205d:	cc                                              	int3
103a205e:	cc                                              	int3
103a205f:	cc                                              	int3
