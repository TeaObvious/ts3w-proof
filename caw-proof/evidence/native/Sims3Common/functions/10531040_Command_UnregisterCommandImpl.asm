# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10531040 (Command_UnregisterCommandImpl)
Paired Ghidra pseudocode: 10531040_Command_UnregisterCommandImpl.c
Window: [0x10531040, 0x10531050) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10531050
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10531040: e9 0b ff ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10531040 <.text+0x530040>:
10531040:	e9 0b ff ff ff                                  	jmp    0x10530f50
10531045:	cc                                              	int3
10531046:	cc                                              	int3
10531047:	cc                                              	int3
10531048:	cc                                              	int3
10531049:	cc                                              	int3
1053104a:	cc                                              	int3
1053104b:	cc                                              	int3
1053104c:	cc                                              	int3
1053104d:	cc                                              	int3
1053104e:	cc                                              	int3
1053104f:	cc                                              	int3
