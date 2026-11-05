# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105623a0 (SocialFeaturesHost_GetOfflineTNSMessageId)
Paired Ghidra pseudocode: 105623A0_SocialFeaturesHost_GetOfflineTNSMessageId.c
Window: [0x105623a0, 0x105623b0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x105623b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105623a0: e9 0b c4 2a 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105623a0 <.text+0x5613a0>:
105623a0:	e9 0b c4 2a 00                                  	jmp    0x1080e7b0
105623a5:	cc                                              	int3
105623a6:	cc                                              	int3
105623a7:	cc                                              	int3
105623a8:	cc                                              	int3
105623a9:	cc                                              	int3
105623aa:	cc                                              	int3
105623ab:	cc                                              	int3
105623ac:	cc                                              	int3
105623ad:	cc                                              	int3
105623ae:	cc                                              	int3
105623af:	cc                                              	int3
