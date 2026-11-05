# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562ba0 (SocialFeaturesHost_GetPassportGuid)
Paired Ghidra pseudocode: 10562BA0_SocialFeaturesHost_GetPassportGuid.c
Window: [0x10562ba0, 0x10562bb0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562bb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562ba0: e9 bb d6 2a 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562ba0 <.text+0x561ba0>:
10562ba0:	e9 bb d6 2a 00                                  	jmp    0x10810260
10562ba5:	cc                                              	int3
10562ba6:	cc                                              	int3
10562ba7:	cc                                              	int3
10562ba8:	cc                                              	int3
10562ba9:	cc                                              	int3
10562baa:	cc                                              	int3
10562bab:	cc                                              	int3
10562bac:	cc                                              	int3
10562bad:	cc                                              	int3
10562bae:	cc                                              	int3
10562baf:	cc                                              	int3
