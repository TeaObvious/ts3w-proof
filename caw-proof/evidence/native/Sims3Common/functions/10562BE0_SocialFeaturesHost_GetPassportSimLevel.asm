# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562be0 (SocialFeaturesHost_GetPassportSimLevel)
Paired Ghidra pseudocode: 10562BE0_SocialFeaturesHost_GetPassportSimLevel.c
Window: [0x10562be0, 0x10562bf0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562bf0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562be0: e9 fb d6 2a 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562be0 <.text+0x561be0>:
10562be0:	e9 fb d6 2a 00                                  	jmp    0x108102e0
10562be5:	cc                                              	int3
10562be6:	cc                                              	int3
10562be7:	cc                                              	int3
10562be8:	cc                                              	int3
10562be9:	cc                                              	int3
10562bea:	cc                                              	int3
10562beb:	cc                                              	int3
10562bec:	cc                                              	int3
10562bed:	cc                                              	int3
10562bee:	cc                                              	int3
10562bef:	cc                                              	int3
