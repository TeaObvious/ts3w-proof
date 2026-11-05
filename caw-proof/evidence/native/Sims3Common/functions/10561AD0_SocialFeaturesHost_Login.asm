# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561ad0 (SocialFeaturesHost_Login)
Paired Ghidra pseudocode: 10561AD0_SocialFeaturesHost_Login.c
Window: [0x10561ad0, 0x10561ae0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561ae0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561ad0: e9 4b b7 2a 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10561ad0 <.text+0x560ad0>:
10561ad0:	e9 4b b7 2a 00                                  	jmp    0x1080d220
10561ad5:	cc                                              	int3
10561ad6:	cc                                              	int3
10561ad7:	cc                                              	int3
10561ad8:	cc                                              	int3
10561ad9:	cc                                              	int3
10561ada:	cc                                              	int3
10561adb:	cc                                              	int3
10561adc:	cc                                              	int3
10561add:	cc                                              	int3
10561ade:	cc                                              	int3
10561adf:	cc                                              	int3
