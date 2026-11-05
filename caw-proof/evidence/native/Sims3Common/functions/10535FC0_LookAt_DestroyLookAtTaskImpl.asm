# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10535fc0 (LookAt_DestroyLookAtTaskImpl)
Paired Ghidra pseudocode: 10535FC0_LookAt_DestroyLookAtTaskImpl.c
Window: [0x10535fc0, 0x10535fd0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10535fd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10535fc0: e9 db f1 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10535fc0 <.text+0x534fc0>:
10535fc0:	e9 db f1 ff ff                                  	jmp    0x105351a0
10535fc5:	cc                                              	int3
10535fc6:	cc                                              	int3
10535fc7:	cc                                              	int3
10535fc8:	cc                                              	int3
10535fc9:	cc                                              	int3
10535fca:	cc                                              	int3
10535fcb:	cc                                              	int3
10535fcc:	cc                                              	int3
10535fcd:	cc                                              	int3
10535fce:	cc                                              	int3
10535fcf:	cc                                              	int3
