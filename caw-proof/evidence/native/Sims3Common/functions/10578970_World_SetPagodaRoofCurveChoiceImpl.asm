# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10578970 (World_SetPagodaRoofCurveChoiceImpl)
Paired Ghidra pseudocode: 10578970_World_SetPagodaRoofCurveChoiceImpl.c
Window: [0x10578970, 0x10578980) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10578980
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10578970: e9 eb 73 b5 ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10578970 <.text+0x577970>:
10578970:	e9 eb 73 b5 ff                                  	jmp    0x100cfd60
10578975:	cc                                              	int3
10578976:	cc                                              	int3
10578977:	cc                                              	int3
10578978:	cc                                              	int3
10578979:	cc                                              	int3
1057897a:	cc                                              	int3
1057897b:	cc                                              	int3
1057897c:	cc                                              	int3
1057897d:	cc                                              	int3
1057897e:	cc                                              	int3
1057897f:	cc                                              	int3
