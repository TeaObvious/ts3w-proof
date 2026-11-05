# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10998060 (WorldWrap_ApplyLayerPaintBrush)
Paired Ghidra pseudocode: 10998060_WorldWrap_ApplyLayerPaintBrush.c
Window: [0x10998060, 0x10998070) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10998070
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10998060: e9 7b b8 86 ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10998060 <.text+0x997060>:
10998060:	e9 7b b8 86 ff                                  	jmp    0x102038e0
10998065:	cc                                              	int3
10998066:	cc                                              	int3
10998067:	cc                                              	int3
10998068:	cc                                              	int3
10998069:	cc                                              	int3
1099806a:	cc                                              	int3
1099806b:	cc                                              	int3
1099806c:	cc                                              	int3
1099806d:	cc                                              	int3
1099806e:	cc                                              	int3
1099806f:	cc                                              	int3
