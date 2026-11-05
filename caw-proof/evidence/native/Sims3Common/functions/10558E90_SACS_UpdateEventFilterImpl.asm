# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10558e90 (SACS_UpdateEventFilterImpl)
Paired Ghidra pseudocode: 10558E90_SACS_UpdateEventFilterImpl.c
Window: [0x10558e90, 0x10558ea0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10558ea0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10558e90: e9 5b fe ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10558e90 <.text+0x557e90>:
10558e90:	e9 5b fe ff ff                                  	jmp    0x10558cf0
10558e95:	cc                                              	int3
10558e96:	cc                                              	int3
10558e97:	cc                                              	int3
10558e98:	cc                                              	int3
10558e99:	cc                                              	int3
10558e9a:	cc                                              	int3
10558e9b:	cc                                              	int3
10558e9c:	cc                                              	int3
10558e9d:	cc                                              	int3
10558e9e:	cc                                              	int3
10558e9f:	cc                                              	int3
