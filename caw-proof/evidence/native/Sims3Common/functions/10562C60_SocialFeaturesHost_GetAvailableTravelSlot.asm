# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562c60 (SocialFeaturesHost_GetAvailableTravelSlot)
Paired Ghidra pseudocode: 10562C60_SocialFeaturesHost_GetAvailableTravelSlot.c
Window: [0x10562c60, 0x10562c70) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562c70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562c60: e9 5b d7 2a 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562c60 <.text+0x561c60>:
10562c60:	e9 5b d7 2a 00                                  	jmp    0x108103c0
10562c65:	cc                                              	int3
10562c66:	cc                                              	int3
10562c67:	cc                                              	int3
10562c68:	cc                                              	int3
10562c69:	cc                                              	int3
10562c6a:	cc                                              	int3
10562c6b:	cc                                              	int3
10562c6c:	cc                                              	int3
10562c6d:	cc                                              	int3
10562c6e:	cc                                              	int3
10562c6f:	cc                                              	int3
