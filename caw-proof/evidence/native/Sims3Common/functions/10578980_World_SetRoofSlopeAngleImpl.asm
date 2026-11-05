# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10578980 (World_SetRoofSlopeAngleImpl)
Paired Ghidra pseudocode: 10578980_World_SetRoofSlopeAngleImpl.c
Window: [0x10578980, 0x10578990) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10578990
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10578980: e9 8b 74 b5 ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10578980 <.text+0x577980>:
10578980:	e9 8b 74 b5 ff                                  	jmp    0x100cfe10
10578985:	cc                                              	int3
10578986:	cc                                              	int3
10578987:	cc                                              	int3
10578988:	cc                                              	int3
10578989:	cc                                              	int3
1057898a:	cc                                              	int3
1057898b:	cc                                              	int3
1057898c:	cc                                              	int3
1057898d:	cc                                              	int3
1057898e:	cc                                              	int3
1057898f:	cc                                              	int3
