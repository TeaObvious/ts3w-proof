# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10539ae0 (OnlineFeaturesHost_StartLauncher)
Paired Ghidra pseudocode: 10539AE0_OnlineFeaturesHost_StartLauncher.c
Window: [0x10539ae0, 0x10539af0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10539af0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10539ae0: e9 bb f1 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10539ae0 <.text+0x538ae0>:
10539ae0:	e9 bb f1 ff ff                                  	jmp    0x10538ca0
10539ae5:	cc                                              	int3
10539ae6:	cc                                              	int3
10539ae7:	cc                                              	int3
10539ae8:	cc                                              	int3
10539ae9:	cc                                              	int3
10539aea:	cc                                              	int3
10539aeb:	cc                                              	int3
10539aec:	cc                                              	int3
10539aed:	cc                                              	int3
10539aee:	cc                                              	int3
10539aef:	cc                                              	int3
