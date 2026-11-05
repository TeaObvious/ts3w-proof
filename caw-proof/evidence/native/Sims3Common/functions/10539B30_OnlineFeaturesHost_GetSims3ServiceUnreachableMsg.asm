# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10539b30 (OnlineFeaturesHost_GetSims3ServiceUnreachableMsg)
Paired Ghidra pseudocode: 10539B30_OnlineFeaturesHost_GetSims3ServiceUnreachableMsg.c
Window: [0x10539b30, 0x10539b40) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10539b40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10539b30: e9 5b f8 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10539b30 <.text+0x538b30>:
10539b30:	e9 5b f8 ff ff                                  	jmp    0x10539390
10539b35:	cc                                              	int3
10539b36:	cc                                              	int3
10539b37:	cc                                              	int3
10539b38:	cc                                              	int3
10539b39:	cc                                              	int3
10539b3a:	cc                                              	int3
10539b3b:	cc                                              	int3
10539b3c:	cc                                              	int3
10539b3d:	cc                                              	int3
10539b3e:	cc                                              	int3
10539b3f:	cc                                              	int3
