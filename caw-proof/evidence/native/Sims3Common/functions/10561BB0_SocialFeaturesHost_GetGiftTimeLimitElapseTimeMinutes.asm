# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561bb0 (SocialFeaturesHost_GetGiftTimeLimitElapseTimeMinutes)
Paired Ghidra pseudocode: 10561BB0_SocialFeaturesHost_GetGiftTimeLimitElapseTimeMinutes.c
Window: [0x10561bb0, 0x10561bc0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561bc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561bb0: e9 cb b7 2a 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10561bb0 <.text+0x560bb0>:
10561bb0:	e9 cb b7 2a 00                                  	jmp    0x1080d380
10561bb5:	cc                                              	int3
10561bb6:	cc                                              	int3
10561bb7:	cc                                              	int3
10561bb8:	cc                                              	int3
10561bb9:	cc                                              	int3
10561bba:	cc                                              	int3
10561bbb:	cc                                              	int3
10561bbc:	cc                                              	int3
10561bbd:	cc                                              	int3
10561bbe:	cc                                              	int3
10561bbf:	cc                                              	int3
