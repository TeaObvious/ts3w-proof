# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102c3480 (UserToolUtils_DeleteBlueprintsOnLotImpl)
Paired Ghidra pseudocode: 102C3480_UserToolUtils_DeleteBlueprintsOnLotImpl.c
Window: [0x102c3480, 0x102c3490) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x102c3490
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102c3480: e9 8b fd ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102c3480 <.text+0x2c2480>:
102c3480:	e9 8b fd ff ff                                  	jmp    0x102c3210
102c3485:	cc                                              	int3
102c3486:	cc                                              	int3
102c3487:	cc                                              	int3
102c3488:	cc                                              	int3
102c3489:	cc                                              	int3
102c348a:	cc                                              	int3
102c348b:	cc                                              	int3
102c348c:	cc                                              	int3
102c348d:	cc                                              	int3
102c348e:	cc                                              	int3
102c348f:	cc                                              	int3
