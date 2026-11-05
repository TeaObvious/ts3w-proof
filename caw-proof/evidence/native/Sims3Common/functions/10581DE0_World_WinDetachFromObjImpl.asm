# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581de0 (World_WinDetachFromObjImpl)
Paired Ghidra pseudocode: 10581DE0_World_WinDetachFromObjImpl.c
Window: [0x10581de0, 0x10581df0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581df0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581de0: e9 5b e0 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10581de0 <.text+0x580de0>:
10581de0:	e9 5b e0 ff ff                                  	jmp    0x1057fe40
10581de5:	cc                                              	int3
10581de6:	cc                                              	int3
10581de7:	cc                                              	int3
10581de8:	cc                                              	int3
10581de9:	cc                                              	int3
10581dea:	cc                                              	int3
10581deb:	cc                                              	int3
10581dec:	cc                                              	int3
10581ded:	cc                                              	int3
10581dee:	cc                                              	int3
10581def:	cc                                              	int3
