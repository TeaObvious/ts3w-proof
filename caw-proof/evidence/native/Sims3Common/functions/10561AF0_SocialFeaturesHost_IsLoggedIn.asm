# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561af0 (SocialFeaturesHost_IsLoggedIn)
Paired Ghidra pseudocode: 10561AF0_SocialFeaturesHost_IsLoggedIn.c
Window: [0x10561af0, 0x10561b00) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561b00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561af0: e9 8b b7 2a 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10561af0 <.text+0x560af0>:
10561af0:	e9 8b b7 2a 00                                  	jmp    0x1080d280
10561af5:	cc                                              	int3
10561af6:	cc                                              	int3
10561af7:	cc                                              	int3
10561af8:	cc                                              	int3
10561af9:	cc                                              	int3
10561afa:	cc                                              	int3
10561afb:	cc                                              	int3
10561afc:	cc                                              	int3
10561afd:	cc                                              	int3
10561afe:	cc                                              	int3
10561aff:	cc                                              	int3
