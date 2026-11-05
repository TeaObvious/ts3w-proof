# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10539b40 (OnlineFeaturesHost_GetCookieValueByKey)
Paired Ghidra pseudocode: 10539B40_OnlineFeaturesHost_GetCookieValueByKey.c
Window: [0x10539b40, 0x10539b50) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10539b50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10539b40: e9 6b f9 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10539b40 <.text+0x538b40>:
10539b40:	e9 6b f9 ff ff                                  	jmp    0x105394b0
10539b45:	cc                                              	int3
10539b46:	cc                                              	int3
10539b47:	cc                                              	int3
10539b48:	cc                                              	int3
10539b49:	cc                                              	int3
10539b4a:	cc                                              	int3
10539b4b:	cc                                              	int3
10539b4c:	cc                                              	int3
10539b4d:	cc                                              	int3
10539b4e:	cc                                              	int3
10539b4f:	cc                                              	int3
