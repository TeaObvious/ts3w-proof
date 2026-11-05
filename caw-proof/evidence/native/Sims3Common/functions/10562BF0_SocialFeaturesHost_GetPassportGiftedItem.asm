# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562bf0 (SocialFeaturesHost_GetPassportGiftedItem)
Paired Ghidra pseudocode: 10562BF0_SocialFeaturesHost_GetPassportGiftedItem.c
Window: [0x10562bf0, 0x10562c00) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562c00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562bf0: e9 0b d7 2a 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562bf0 <.text+0x561bf0>:
10562bf0:	e9 0b d7 2a 00                                  	jmp    0x10810300
10562bf5:	cc                                              	int3
10562bf6:	cc                                              	int3
10562bf7:	cc                                              	int3
10562bf8:	cc                                              	int3
10562bf9:	cc                                              	int3
10562bfa:	cc                                              	int3
10562bfb:	cc                                              	int3
10562bfc:	cc                                              	int3
10562bfd:	cc                                              	int3
10562bfe:	cc                                              	int3
10562bff:	cc                                              	int3
