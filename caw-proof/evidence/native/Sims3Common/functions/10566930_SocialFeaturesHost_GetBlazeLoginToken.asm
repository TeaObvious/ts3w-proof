# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566930 (SocialFeaturesHost_GetBlazeLoginToken)
Paired Ghidra pseudocode: 10566930_SocialFeaturesHost_GetBlazeLoginToken.c
Window: [0x10566930, 0x10566940) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566940
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566930: e9 2b d7 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10566930 <.text+0x565930>:
10566930:	e9 2b d7 ff ff                                  	jmp    0x10564060
10566935:	cc                                              	int3
10566936:	cc                                              	int3
10566937:	cc                                              	int3
10566938:	cc                                              	int3
10566939:	cc                                              	int3
1056693a:	cc                                              	int3
1056693b:	cc                                              	int3
1056693c:	cc                                              	int3
1056693d:	cc                                              	int3
1056693e:	cc                                              	int3
1056693f:	cc                                              	int3
