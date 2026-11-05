# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10536250 (LookAt_GetLookTowardsCurveRateImpl)
Paired Ghidra pseudocode: 10536250_LookAt_GetLookTowardsCurveRateImpl.c
Window: [0x10536250, 0x10536260) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10536260
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10536250: e9 6b fc ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10536250 <.text+0x535250>:
10536250:	e9 6b fc ff ff                                  	jmp    0x10535ec0
10536255:	cc                                              	int3
10536256:	cc                                              	int3
10536257:	cc                                              	int3
10536258:	cc                                              	int3
10536259:	cc                                              	int3
1053625a:	cc                                              	int3
1053625b:	cc                                              	int3
1053625c:	cc                                              	int3
1053625d:	cc                                              	int3
1053625e:	cc                                              	int3
1053625f:	cc                                              	int3
