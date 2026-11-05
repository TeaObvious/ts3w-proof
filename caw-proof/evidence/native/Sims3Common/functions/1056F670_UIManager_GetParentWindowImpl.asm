# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056f670 (UIManager_GetParentWindowImpl)
Paired Ghidra pseudocode: 1056F670_UIManager_GetParentWindowImpl.c
Window: [0x1056f670, 0x1056f680) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056f680
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056f670: e9 eb d3 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056f670 <.text+0x56e670>:
1056f670:	e9 eb d3 ff ff                                  	jmp    0x1056ca60
1056f675:	cc                                              	int3
1056f676:	cc                                              	int3
1056f677:	cc                                              	int3
1056f678:	cc                                              	int3
1056f679:	cc                                              	int3
1056f67a:	cc                                              	int3
1056f67b:	cc                                              	int3
1056f67c:	cc                                              	int3
1056f67d:	cc                                              	int3
1056f67e:	cc                                              	int3
1056f67f:	cc                                              	int3
