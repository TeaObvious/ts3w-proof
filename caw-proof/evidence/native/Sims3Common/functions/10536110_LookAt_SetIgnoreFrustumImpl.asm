# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10536110 (LookAt_SetIgnoreFrustumImpl)
Paired Ghidra pseudocode: 10536110_LookAt_SetIgnoreFrustumImpl.c
Window: [0x10536110, 0x10536120) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10536120
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10536110: e9 5b f7 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10536110 <.text+0x535110>:
10536110:	e9 5b f7 ff ff                                  	jmp    0x10535870
10536115:	cc                                              	int3
10536116:	cc                                              	int3
10536117:	cc                                              	int3
10536118:	cc                                              	int3
10536119:	cc                                              	int3
1053611a:	cc                                              	int3
1053611b:	cc                                              	int3
1053611c:	cc                                              	int3
1053611d:	cc                                              	int3
1053611e:	cc                                              	int3
1053611f:	cc                                              	int3
