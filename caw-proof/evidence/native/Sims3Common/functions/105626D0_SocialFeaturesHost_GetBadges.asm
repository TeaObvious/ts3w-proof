# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105626d0 (SocialFeaturesHost_GetBadges)
Paired Ghidra pseudocode: 105626D0_SocialFeaturesHost_GetBadges.c
Window: [0x105626d0, 0x105626e0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x105626e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105626d0: e9 db d0 2a 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105626d0 <.text+0x5616d0>:
105626d0:	e9 db d0 2a 00                                  	jmp    0x1080f7b0
105626d5:	cc                                              	int3
105626d6:	cc                                              	int3
105626d7:	cc                                              	int3
105626d8:	cc                                              	int3
105626d9:	cc                                              	int3
105626da:	cc                                              	int3
105626db:	cc                                              	int3
105626dc:	cc                                              	int3
105626dd:	cc                                              	int3
105626de:	cc                                              	int3
105626df:	cc                                              	int3
