# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056f5a0 (UIManager_DestroyLayoutImpl)
Paired Ghidra pseudocode: 1056F5A0_UIManager_DestroyLayoutImpl.c
Window: [0x1056f5a0, 0x1056f5b0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056f5b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056f5a0: e9 6b d3 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056f5a0 <.text+0x56e5a0>:
1056f5a0:	e9 6b d3 ff ff                                  	jmp    0x1056c910
1056f5a5:	cc                                              	int3
1056f5a6:	cc                                              	int3
1056f5a7:	cc                                              	int3
1056f5a8:	cc                                              	int3
1056f5a9:	cc                                              	int3
1056f5aa:	cc                                              	int3
1056f5ab:	cc                                              	int3
1056f5ac:	cc                                              	int3
1056f5ad:	cc                                              	int3
1056f5ae:	cc                                              	int3
1056f5af:	cc                                              	int3
