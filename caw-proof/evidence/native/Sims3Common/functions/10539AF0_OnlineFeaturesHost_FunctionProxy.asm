# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10539af0 (OnlineFeaturesHost_FunctionProxy)
Paired Ghidra pseudocode: 10539AF0_OnlineFeaturesHost_FunctionProxy.c
Window: [0x10539af0, 0x10539b00) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10539b00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10539af0: e9 1b f4 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10539af0 <.text+0x538af0>:
10539af0:	e9 1b f4 ff ff                                  	jmp    0x10538f10
10539af5:	cc                                              	int3
10539af6:	cc                                              	int3
10539af7:	cc                                              	int3
10539af8:	cc                                              	int3
10539af9:	cc                                              	int3
10539afa:	cc                                              	int3
10539afb:	cc                                              	int3
10539afc:	cc                                              	int3
10539afd:	cc                                              	int3
10539afe:	cc                                              	int3
10539aff:	cc                                              	int3
