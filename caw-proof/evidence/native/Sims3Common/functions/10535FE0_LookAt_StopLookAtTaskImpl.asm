# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10535fe0 (LookAt_StopLookAtTaskImpl)
Paired Ghidra pseudocode: 10535FE0_LookAt_StopLookAtTaskImpl.c
Window: [0x10535fe0, 0x10535ff0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10535ff0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10535fe0: e9 bb f2 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10535fe0 <.text+0x534fe0>:
10535fe0:	e9 bb f2 ff ff                                  	jmp    0x105352a0
10535fe5:	cc                                              	int3
10535fe6:	cc                                              	int3
10535fe7:	cc                                              	int3
10535fe8:	cc                                              	int3
10535fe9:	cc                                              	int3
10535fea:	cc                                              	int3
10535feb:	cc                                              	int3
10535fec:	cc                                              	int3
10535fed:	cc                                              	int3
10535fee:	cc                                              	int3
10535fef:	cc                                              	int3
