# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105312c0 (Command_RegisterCommandImpl)
Paired Ghidra pseudocode: 105312C0_Command_RegisterCommandImpl.c
Window: [0x105312c0, 0x105312d0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x105312d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105312c0: e9 8b fd ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105312c0 <.text+0x5302c0>:
105312c0:	e9 8b fd ff ff                                  	jmp    0x10531050
105312c5:	cc                                              	int3
105312c6:	cc                                              	int3
105312c7:	cc                                              	int3
105312c8:	cc                                              	int3
105312c9:	cc                                              	int3
105312ca:	cc                                              	int3
105312cb:	cc                                              	int3
105312cc:	cc                                              	int3
105312cd:	cc                                              	int3
105312ce:	cc                                              	int3
105312cf:	cc                                              	int3
