# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561b90 (SocialFeaturesHost_ResetAllGiftingValues)
Paired Ghidra pseudocode: 10561B90_SocialFeaturesHost_ResetAllGiftingValues.c
Window: [0x10561b90, 0x10561ba0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561ba0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561b90: e9 ab b7 2a 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10561b90 <.text+0x560b90>:
10561b90:	e9 ab b7 2a 00                                  	jmp    0x1080d340
10561b95:	cc                                              	int3
10561b96:	cc                                              	int3
10561b97:	cc                                              	int3
10561b98:	cc                                              	int3
10561b99:	cc                                              	int3
10561b9a:	cc                                              	int3
10561b9b:	cc                                              	int3
10561b9c:	cc                                              	int3
10561b9d:	cc                                              	int3
10561b9e:	cc                                              	int3
10561b9f:	cc                                              	int3
