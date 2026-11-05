# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10998040 (WorldWrap_StartLayerPaintBrushApply)
Paired Ghidra pseudocode: 10998040_WorldWrap_StartLayerPaintBrushApply.c
Window: [0x10998040, 0x10998050) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10998050
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10998040: e9 5b b8 86 ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10998040 <.text+0x997040>:
10998040:	e9 5b b8 86 ff                                  	jmp    0x102038a0
10998045:	cc                                              	int3
10998046:	cc                                              	int3
10998047:	cc                                              	int3
10998048:	cc                                              	int3
10998049:	cc                                              	int3
1099804a:	cc                                              	int3
1099804b:	cc                                              	int3
1099804c:	cc                                              	int3
1099804d:	cc                                              	int3
1099804e:	cc                                              	int3
1099804f:	cc                                              	int3
