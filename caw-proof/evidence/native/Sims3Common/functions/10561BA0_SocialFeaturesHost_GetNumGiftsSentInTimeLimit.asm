# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561ba0 (SocialFeaturesHost_GetNumGiftsSentInTimeLimit)
Paired Ghidra pseudocode: 10561BA0_SocialFeaturesHost_GetNumGiftsSentInTimeLimit.c
Window: [0x10561ba0, 0x10561bb0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561bb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561ba0: e9 bb b7 2a 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10561ba0 <.text+0x560ba0>:
10561ba0:	e9 bb b7 2a 00                                  	jmp    0x1080d360
10561ba5:	cc                                              	int3
10561ba6:	cc                                              	int3
10561ba7:	cc                                              	int3
10561ba8:	cc                                              	int3
10561ba9:	cc                                              	int3
10561baa:	cc                                              	int3
10561bab:	cc                                              	int3
10561bac:	cc                                              	int3
10561bad:	cc                                              	int3
10561bae:	cc                                              	int3
10561baf:	cc                                              	int3
