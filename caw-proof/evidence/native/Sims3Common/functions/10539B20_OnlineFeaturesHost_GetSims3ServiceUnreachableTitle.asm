# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10539b20 (OnlineFeaturesHost_GetSims3ServiceUnreachableTitle)
Paired Ghidra pseudocode: 10539B20_OnlineFeaturesHost_GetSims3ServiceUnreachableTitle.c
Window: [0x10539b20, 0x10539b30) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10539b30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10539b20: e9 4b f7 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10539b20 <.text+0x538b20>:
10539b20:	e9 4b f7 ff ff                                  	jmp    0x10539270
10539b25:	cc                                              	int3
10539b26:	cc                                              	int3
10539b27:	cc                                              	int3
10539b28:	cc                                              	int3
10539b29:	cc                                              	int3
10539b2a:	cc                                              	int3
10539b2b:	cc                                              	int3
10539b2c:	cc                                              	int3
10539b2d:	cc                                              	int3
10539b2e:	cc                                              	int3
10539b2f:	cc                                              	int3
