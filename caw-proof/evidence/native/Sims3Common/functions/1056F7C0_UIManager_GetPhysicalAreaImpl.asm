# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056f7c0 (UIManager_GetPhysicalAreaImpl)
Paired Ghidra pseudocode: 1056F7C0_UIManager_GetPhysicalAreaImpl.c
Window: [0x1056f7c0, 0x1056f7d0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056f7d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056f7c0: e9 3b d9 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056f7c0 <.text+0x56e7c0>:
1056f7c0:	e9 3b d9 ff ff                                  	jmp    0x1056d100
1056f7c5:	cc                                              	int3
1056f7c6:	cc                                              	int3
1056f7c7:	cc                                              	int3
1056f7c8:	cc                                              	int3
1056f7c9:	cc                                              	int3
1056f7ca:	cc                                              	int3
1056f7cb:	cc                                              	int3
1056f7cc:	cc                                              	int3
1056f7cd:	cc                                              	int3
1056f7ce:	cc                                              	int3
1056f7cf:	cc                                              	int3
