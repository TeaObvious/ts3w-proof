# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10998070 (WorldWrap_StartMaskPaint)
Paired Ghidra pseudocode: 10998070_WorldWrap_StartMaskPaint.c
Window: [0x10998070, 0x10998080) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10998080
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10998070: e9 4b ba 86 ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10998070 <.text+0x997070>:
10998070:	e9 4b ba 86 ff                                  	jmp    0x10203ac0
10998075:	cc                                              	int3
10998076:	cc                                              	int3
10998077:	cc                                              	int3
10998078:	cc                                              	int3
10998079:	cc                                              	int3
1099807a:	cc                                              	int3
1099807b:	cc                                              	int3
1099807c:	cc                                              	int3
1099807d:	cc                                              	int3
1099807e:	cc                                              	int3
1099807f:	cc                                              	int3
