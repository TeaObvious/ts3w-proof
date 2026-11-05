# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566920 (SocialFeaturesHost_GetLoginToken)
Paired Ghidra pseudocode: 10566920_SocialFeaturesHost_GetLoginToken.c
Window: [0x10566920, 0x10566930) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566930
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566920: e9 7b d6 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10566920 <.text+0x565920>:
10566920:	e9 7b d6 ff ff                                  	jmp    0x10563fa0
10566925:	cc                                              	int3
10566926:	cc                                              	int3
10566927:	cc                                              	int3
10566928:	cc                                              	int3
10566929:	cc                                              	int3
1056692a:	cc                                              	int3
1056692b:	cc                                              	int3
1056692c:	cc                                              	int3
1056692d:	cc                                              	int3
1056692e:	cc                                              	int3
1056692f:	cc                                              	int3
