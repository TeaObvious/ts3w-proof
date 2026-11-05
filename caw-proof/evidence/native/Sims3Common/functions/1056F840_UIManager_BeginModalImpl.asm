# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056f840 (UIManager_BeginModalImpl)
Paired Ghidra pseudocode: 1056F840_UIManager_BeginModalImpl.c
Window: [0x1056f840, 0x1056f850) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056f850
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056f840: e9 1b da ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056f840 <.text+0x56e840>:
1056f840:	e9 1b da ff ff                                  	jmp    0x1056d260
1056f845:	cc                                              	int3
1056f846:	cc                                              	int3
1056f847:	cc                                              	int3
1056f848:	cc                                              	int3
1056f849:	cc                                              	int3
1056f84a:	cc                                              	int3
1056f84b:	cc                                              	int3
1056f84c:	cc                                              	int3
1056f84d:	cc                                              	int3
1056f84e:	cc                                              	int3
1056f84f:	cc                                              	int3
