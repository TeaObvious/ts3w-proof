# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10535ff0 (LookAt_GetTargetObjectIdImpl)
Paired Ghidra pseudocode: 10535FF0_LookAt_GetTargetObjectIdImpl.c
Window: [0x10535ff0, 0x10536000) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10536000
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10535ff0: e9 0b f3 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10535ff0 <.text+0x534ff0>:
10535ff0:	e9 0b f3 ff ff                                  	jmp    0x10535300
10535ff5:	cc                                              	int3
10535ff6:	cc                                              	int3
10535ff7:	cc                                              	int3
10535ff8:	cc                                              	int3
10535ff9:	cc                                              	int3
10535ffa:	cc                                              	int3
10535ffb:	cc                                              	int3
10535ffc:	cc                                              	int3
10535ffd:	cc                                              	int3
10535ffe:	cc                                              	int3
10535fff:	cc                                              	int3
