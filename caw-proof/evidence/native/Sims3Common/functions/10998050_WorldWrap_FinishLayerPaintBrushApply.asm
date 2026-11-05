# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10998050 (WorldWrap_FinishLayerPaintBrushApply)
Paired Ghidra pseudocode: 10998050_WorldWrap_FinishLayerPaintBrushApply.c
Window: [0x10998050, 0x10998060) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10998060
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10998050: e9 2b ba 86 ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10998050 <.text+0x997050>:
10998050:	e9 2b ba 86 ff                                  	jmp    0x10203a80
10998055:	cc                                              	int3
10998056:	cc                                              	int3
10998057:	cc                                              	int3
10998058:	cc                                              	int3
10998059:	cc                                              	int3
1099805a:	cc                                              	int3
1099805b:	cc                                              	int3
1099805c:	cc                                              	int3
1099805d:	cc                                              	int3
1099805e:	cc                                              	int3
1099805f:	cc                                              	int3
