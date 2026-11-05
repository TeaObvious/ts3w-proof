# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562cd0 (SocialFeaturesHost_DebugClearAllPassportState)
Paired Ghidra pseudocode: 10562CD0_SocialFeaturesHost_DebugClearAllPassportState.c
Window: [0x10562cd0, 0x10562ce0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562ce0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562cd0: e9 1b d8 2a 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562cd0 <.text+0x561cd0>:
10562cd0:	e9 1b d8 2a 00                                  	jmp    0x108104f0
10562cd5:	cc                                              	int3
10562cd6:	cc                                              	int3
10562cd7:	cc                                              	int3
10562cd8:	cc                                              	int3
10562cd9:	cc                                              	int3
10562cda:	cc                                              	int3
10562cdb:	cc                                              	int3
10562cdc:	cc                                              	int3
10562cdd:	cc                                              	int3
10562cde:	cc                                              	int3
10562cdf:	cc                                              	int3
