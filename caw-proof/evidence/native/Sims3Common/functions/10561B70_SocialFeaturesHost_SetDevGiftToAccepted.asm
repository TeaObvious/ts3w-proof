# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561b70 (SocialFeaturesHost_SetDevGiftToAccepted)
Paired Ghidra pseudocode: 10561B70_SocialFeaturesHost_SetDevGiftToAccepted.c
Window: [0x10561b70, 0x10561b80) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561b80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561b70: e9 8b b7 2a 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10561b70 <.text+0x560b70>:
10561b70:	e9 8b b7 2a 00                                  	jmp    0x1080d300
10561b75:	cc                                              	int3
10561b76:	cc                                              	int3
10561b77:	cc                                              	int3
10561b78:	cc                                              	int3
10561b79:	cc                                              	int3
10561b7a:	cc                                              	int3
10561b7b:	cc                                              	int3
10561b7c:	cc                                              	int3
10561b7d:	cc                                              	int3
10561b7e:	cc                                              	int3
10561b7f:	cc                                              	int3
