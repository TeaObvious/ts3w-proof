# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10535fd0 (LookAt_EnableLookAtTaskImpl)
Paired Ghidra pseudocode: 10535FD0_LookAt_EnableLookAtTaskImpl.c
Window: [0x10535fd0, 0x10535fe0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10535fe0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10535fd0: e9 6b f2 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10535fd0 <.text+0x534fd0>:
10535fd0:	e9 6b f2 ff ff                                  	jmp    0x10535240
10535fd5:	cc                                              	int3
10535fd6:	cc                                              	int3
10535fd7:	cc                                              	int3
10535fd8:	cc                                              	int3
10535fd9:	cc                                              	int3
10535fda:	cc                                              	int3
10535fdb:	cc                                              	int3
10535fdc:	cc                                              	int3
10535fdd:	cc                                              	int3
10535fde:	cc                                              	int3
10535fdf:	cc                                              	int3
