# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562b40 (SocialFeaturesHost_CancelPassport)
Paired Ghidra pseudocode: 10562B40_SocialFeaturesHost_CancelPassport.c
Window: [0x10562b40, 0x10562b50) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562b50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562b40: e9 fb d5 2a 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562b40 <.text+0x561b40>:
10562b40:	e9 fb d5 2a 00                                  	jmp    0x10810140
10562b45:	cc                                              	int3
10562b46:	cc                                              	int3
10562b47:	cc                                              	int3
10562b48:	cc                                              	int3
10562b49:	cc                                              	int3
10562b4a:	cc                                              	int3
10562b4b:	cc                                              	int3
10562b4c:	cc                                              	int3
10562b4d:	cc                                              	int3
10562b4e:	cc                                              	int3
10562b4f:	cc                                              	int3
