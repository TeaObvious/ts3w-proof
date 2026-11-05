# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562ca0 (SocialFeaturesHost_GetPassportMessageType)
Paired Ghidra pseudocode: 10562CA0_SocialFeaturesHost_GetPassportMessageType.c
Window: [0x10562ca0, 0x10562cb0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562cb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562ca0: e9 cb d7 2a 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562ca0 <.text+0x561ca0>:
10562ca0:	e9 cb d7 2a 00                                  	jmp    0x10810470
10562ca5:	cc                                              	int3
10562ca6:	cc                                              	int3
10562ca7:	cc                                              	int3
10562ca8:	cc                                              	int3
10562ca9:	cc                                              	int3
10562caa:	cc                                              	int3
10562cab:	cc                                              	int3
10562cac:	cc                                              	int3
10562cad:	cc                                              	int3
10562cae:	cc                                              	int3
10562caf:	cc                                              	int3
