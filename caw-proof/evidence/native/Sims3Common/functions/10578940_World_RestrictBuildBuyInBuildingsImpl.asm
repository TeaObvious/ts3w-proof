# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10578940 (World_RestrictBuildBuyInBuildingsImpl)
Paired Ghidra pseudocode: 10578940_World_RestrictBuildBuyInBuildingsImpl.c
Window: [0x10578940, 0x10578950) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10578950
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10578940: e9 1b 61 b0 ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10578940 <.text+0x577940>:
10578940:	e9 1b 61 b0 ff                                  	jmp    0x1007ea60
10578945:	cc                                              	int3
10578946:	cc                                              	int3
10578947:	cc                                              	int3
10578948:	cc                                              	int3
10578949:	cc                                              	int3
1057894a:	cc                                              	int3
1057894b:	cc                                              	int3
1057894c:	cc                                              	int3
1057894d:	cc                                              	int3
1057894e:	cc                                              	int3
1057894f:	cc                                              	int3
