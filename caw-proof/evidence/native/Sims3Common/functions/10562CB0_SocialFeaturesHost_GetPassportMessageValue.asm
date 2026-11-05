# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562cb0 (SocialFeaturesHost_GetPassportMessageValue)
Paired Ghidra pseudocode: 10562CB0_SocialFeaturesHost_GetPassportMessageValue.c
Window: [0x10562cb0, 0x10562cc0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562cc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562cb0: e9 db d7 2a 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562cb0 <.text+0x561cb0>:
10562cb0:	e9 db d7 2a 00                                  	jmp    0x10810490
10562cb5:	cc                                              	int3
10562cb6:	cc                                              	int3
10562cb7:	cc                                              	int3
10562cb8:	cc                                              	int3
10562cb9:	cc                                              	int3
10562cba:	cc                                              	int3
10562cbb:	cc                                              	int3
10562cbc:	cc                                              	int3
10562cbd:	cc                                              	int3
10562cbe:	cc                                              	int3
10562cbf:	cc                                              	int3
