# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566dc0 (SocialFeaturesHost_GetPassportInviteeName)
Paired Ghidra pseudocode: 10566DC0_SocialFeaturesHost_GetPassportInviteeName.c
Window: [0x10566dc0, 0x10566dd0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566dd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566dc0: e9 ab f9 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10566dc0 <.text+0x565dc0>:
10566dc0:	e9 ab f9 ff ff                                  	jmp    0x10566770
10566dc5:	cc                                              	int3
10566dc6:	cc                                              	int3
10566dc7:	cc                                              	int3
10566dc8:	cc                                              	int3
10566dc9:	cc                                              	int3
10566dca:	cc                                              	int3
10566dcb:	cc                                              	int3
10566dcc:	cc                                              	int3
10566dcd:	cc                                              	int3
10566dce:	cc                                              	int3
10566dcf:	cc                                              	int3
