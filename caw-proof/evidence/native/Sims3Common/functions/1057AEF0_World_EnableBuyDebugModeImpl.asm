# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057aef0 (World_EnableBuyDebugModeImpl)
Paired Ghidra pseudocode: 1057AEF0_World_EnableBuyDebugModeImpl.c
Window: [0x1057aef0, 0x1057af00) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057af00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057aef0: e9 2b 3b b0 ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057aef0 <.text+0x579ef0>:
1057aef0:	e9 2b 3b b0 ff                                  	jmp    0x1007ea20
1057aef5:	cc                                              	int3
1057aef6:	cc                                              	int3
1057aef7:	cc                                              	int3
1057aef8:	cc                                              	int3
1057aef9:	cc                                              	int3
1057aefa:	cc                                              	int3
1057aefb:	cc                                              	int3
1057aefc:	cc                                              	int3
1057aefd:	cc                                              	int3
1057aefe:	cc                                              	int3
1057aeff:	cc                                              	int3
