# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102bfad0 (UserToolUtils_InitUserToolManagerImpl)
Paired Ghidra pseudocode: 102BFAD0_UserToolUtils_InitUserToolManagerImpl.c
Window: [0x102bfad0, 0x102bfae0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x102bfae0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102bfad0: e9 eb ec ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102bfad0 <.text+0x2bead0>:
102bfad0:	e9 eb ec ff ff                                  	jmp    0x102be7c0
102bfad5:	cc                                              	int3
102bfad6:	cc                                              	int3
102bfad7:	cc                                              	int3
102bfad8:	cc                                              	int3
102bfad9:	cc                                              	int3
102bfada:	cc                                              	int3
102bfadb:	cc                                              	int3
102bfadc:	cc                                              	int3
102bfadd:	cc                                              	int3
102bfade:	cc                                              	int3
102bfadf:	cc                                              	int3
