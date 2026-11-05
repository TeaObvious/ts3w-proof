# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10539b60 (OnlineFeaturesHost_GetBlazeServerURL)
Paired Ghidra pseudocode: 10539B60_OnlineFeaturesHost_GetBlazeServerURL.c
Window: [0x10539b60, 0x10539b70) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10539b70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10539b60: e9 8b fd ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10539b60 <.text+0x538b60>:
10539b60:	e9 8b fd ff ff                                  	jmp    0x105398f0
10539b65:	cc                                              	int3
10539b66:	cc                                              	int3
10539b67:	cc                                              	int3
10539b68:	cc                                              	int3
10539b69:	cc                                              	int3
10539b6a:	cc                                              	int3
10539b6b:	cc                                              	int3
10539b6c:	cc                                              	int3
10539b6d:	cc                                              	int3
10539b6e:	cc                                              	int3
10539b6f:	cc                                              	int3
