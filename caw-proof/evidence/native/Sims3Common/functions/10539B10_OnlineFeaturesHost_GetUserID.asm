# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10539b10 (OnlineFeaturesHost_GetUserID)
Paired Ghidra pseudocode: 10539B10_OnlineFeaturesHost_GetUserID.c
Window: [0x10539b10, 0x10539b20) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10539b20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10539b10: e9 5b f6 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10539b10 <.text+0x538b10>:
10539b10:	e9 5b f6 ff ff                                  	jmp    0x10539170
10539b15:	cc                                              	int3
10539b16:	cc                                              	int3
10539b17:	cc                                              	int3
10539b18:	cc                                              	int3
10539b19:	cc                                              	int3
10539b1a:	cc                                              	int3
10539b1b:	cc                                              	int3
10539b1c:	cc                                              	int3
10539b1d:	cc                                              	int3
10539b1e:	cc                                              	int3
10539b1f:	cc                                              	int3
