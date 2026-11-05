# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102c31e0 (UserToolUtils_GetFloorPatternPresetListByTypeImpl)
Paired Ghidra pseudocode: 102C31E0_UserToolUtils_GetFloorPatternPresetListByTypeImpl.c
Window: [0x102c31e0, 0x102c31f0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x102c31f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102c31e0: e9 ab fc ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102c31e0 <.text+0x2c21e0>:
102c31e0:	e9 ab fc ff ff                                  	jmp    0x102c2e90
102c31e5:	cc                                              	int3
102c31e6:	cc                                              	int3
102c31e7:	cc                                              	int3
102c31e8:	cc                                              	int3
102c31e9:	cc                                              	int3
102c31ea:	cc                                              	int3
102c31eb:	cc                                              	int3
102c31ec:	cc                                              	int3
102c31ed:	cc                                              	int3
102c31ee:	cc                                              	int3
102c31ef:	cc                                              	int3
