# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057aee0 (World_SetTestingCheatsEnabledImpl)
Paired Ghidra pseudocode: 1057AEE0_World_SetTestingCheatsEnabledImpl.c
Window: [0x1057aee0, 0x1057aef0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057aef0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057aee0: e9 1b 7a b0 ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057aee0 <.text+0x579ee0>:
1057aee0:	e9 1b 7a b0 ff                                  	jmp    0x10082900
1057aee5:	cc                                              	int3
1057aee6:	cc                                              	int3
1057aee7:	cc                                              	int3
1057aee8:	cc                                              	int3
1057aee9:	cc                                              	int3
1057aeea:	cc                                              	int3
1057aeeb:	cc                                              	int3
1057aeec:	cc                                              	int3
1057aeed:	cc                                              	int3
1057aeee:	cc                                              	int3
1057aeef:	cc                                              	int3
