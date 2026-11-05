# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561b10 (SocialFeaturesHost_GetHighestRegCode)
Paired Ghidra pseudocode: 10561B10_SocialFeaturesHost_GetHighestRegCode.c
Window: [0x10561b10, 0x10561b20) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561b20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561b10: e9 1b b9 2a 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10561b10 <.text+0x560b10>:
10561b10:	e9 1b b9 2a 00                                  	jmp    0x1080d430
10561b15:	cc                                              	int3
10561b16:	cc                                              	int3
10561b17:	cc                                              	int3
10561b18:	cc                                              	int3
10561b19:	cc                                              	int3
10561b1a:	cc                                              	int3
10561b1b:	cc                                              	int3
10561b1c:	cc                                              	int3
10561b1d:	cc                                              	int3
10561b1e:	cc                                              	int3
10561b1f:	cc                                              	int3
