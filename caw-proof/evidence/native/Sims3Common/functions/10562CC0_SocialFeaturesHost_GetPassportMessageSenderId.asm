# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562cc0 (SocialFeaturesHost_GetPassportMessageSenderId)
Paired Ghidra pseudocode: 10562CC0_SocialFeaturesHost_GetPassportMessageSenderId.c
Window: [0x10562cc0, 0x10562cd0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562cd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562cc0: e9 0b d8 2a 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562cc0 <.text+0x561cc0>:
10562cc0:	e9 0b d8 2a 00                                  	jmp    0x108104d0
10562cc5:	cc                                              	int3
10562cc6:	cc                                              	int3
10562cc7:	cc                                              	int3
10562cc8:	cc                                              	int3
10562cc9:	cc                                              	int3
10562cca:	cc                                              	int3
10562ccb:	cc                                              	int3
10562ccc:	cc                                              	int3
10562ccd:	cc                                              	int3
10562cce:	cc                                              	int3
10562ccf:	cc                                              	int3
