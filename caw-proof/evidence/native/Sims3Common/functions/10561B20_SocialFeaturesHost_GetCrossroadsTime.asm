# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561b20 (SocialFeaturesHost_GetCrossroadsTime)
Paired Ghidra pseudocode: 10561B20_SocialFeaturesHost_GetCrossroadsTime.c
Window: [0x10561b20, 0x10561b30) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561b30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561b20: e9 8b b9 2a 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10561b20 <.text+0x560b20>:
10561b20:	e9 8b b9 2a 00                                  	jmp    0x1080d4b0
10561b25:	cc                                              	int3
10561b26:	cc                                              	int3
10561b27:	cc                                              	int3
10561b28:	cc                                              	int3
10561b29:	cc                                              	int3
10561b2a:	cc                                              	int3
10561b2b:	cc                                              	int3
10561b2c:	cc                                              	int3
10561b2d:	cc                                              	int3
10561b2e:	cc                                              	int3
10561b2f:	cc                                              	int3
