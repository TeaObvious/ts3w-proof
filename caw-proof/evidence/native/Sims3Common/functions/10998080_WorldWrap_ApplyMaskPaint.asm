# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10998080 (WorldWrap_ApplyMaskPaint)
Paired Ghidra pseudocode: 10998080_WorldWrap_ApplyMaskPaint.c
Window: [0x10998080, 0x10998090) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10998090
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10998080: e9 6b ba 86 ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10998080 <.text+0x997080>:
10998080:	e9 6b ba 86 ff                                  	jmp    0x10203af0
10998085:	cc                                              	int3
10998086:	cc                                              	int3
10998087:	cc                                              	int3
10998088:	cc                                              	int3
10998089:	cc                                              	int3
1099808a:	cc                                              	int3
1099808b:	cc                                              	int3
1099808c:	cc                                              	int3
1099808d:	cc                                              	int3
1099808e:	cc                                              	int3
1099808f:	cc                                              	int3
