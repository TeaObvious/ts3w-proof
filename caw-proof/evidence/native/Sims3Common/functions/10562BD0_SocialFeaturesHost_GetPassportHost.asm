# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562bd0 (SocialFeaturesHost_GetPassportHost)
Paired Ghidra pseudocode: 10562BD0_SocialFeaturesHost_GetPassportHost.c
Window: [0x10562bd0, 0x10562be0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562be0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562bd0: e9 eb d6 2a 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562bd0 <.text+0x561bd0>:
10562bd0:	e9 eb d6 2a 00                                  	jmp    0x108102c0
10562bd5:	cc                                              	int3
10562bd6:	cc                                              	int3
10562bd7:	cc                                              	int3
10562bd8:	cc                                              	int3
10562bd9:	cc                                              	int3
10562bda:	cc                                              	int3
10562bdb:	cc                                              	int3
10562bdc:	cc                                              	int3
10562bdd:	cc                                              	int3
10562bde:	cc                                              	int3
10562bdf:	cc                                              	int3
