# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10536160 (LookAt_GetRightTiltnessImpl)
Paired Ghidra pseudocode: 10536160_LookAt_GetRightTiltnessImpl.c
Window: [0x10536160, 0x10536170) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10536170
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10536160: e9 fb f8 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10536160 <.text+0x535160>:
10536160:	e9 fb f8 ff ff                                  	jmp    0x10535a60
10536165:	cc                                              	int3
10536166:	cc                                              	int3
10536167:	cc                                              	int3
10536168:	cc                                              	int3
10536169:	cc                                              	int3
1053616a:	cc                                              	int3
1053616b:	cc                                              	int3
1053616c:	cc                                              	int3
1053616d:	cc                                              	int3
1053616e:	cc                                              	int3
1053616f:	cc                                              	int3
