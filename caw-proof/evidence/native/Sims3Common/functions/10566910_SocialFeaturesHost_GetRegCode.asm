# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566910 (SocialFeaturesHost_GetRegCode)
Paired Ghidra pseudocode: 10566910_SocialFeaturesHost_GetRegCode.c
Window: [0x10566910, 0x10566920) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566920
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566910: e9 bb d5 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10566910 <.text+0x565910>:
10566910:	e9 bb d5 ff ff                                  	jmp    0x10563ed0
10566915:	cc                                              	int3
10566916:	cc                                              	int3
10566917:	cc                                              	int3
10566918:	cc                                              	int3
10566919:	cc                                              	int3
1056691a:	cc                                              	int3
1056691b:	cc                                              	int3
1056691c:	cc                                              	int3
1056691d:	cc                                              	int3
1056691e:	cc                                              	int3
1056691f:	cc                                              	int3
