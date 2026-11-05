# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109980c0 (WorldWrap_FinishRoutableSurfacePaint)
Paired Ghidra pseudocode: 109980C0_WorldWrap_FinishRoutableSurfacePaint.c
Window: [0x109980c0, 0x109980d0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x109980d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109980c0: e9 db bc 86 ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109980c0 <.text+0x9970c0>:
109980c0:	e9 db bc 86 ff                                  	jmp    0x10203da0
109980c5:	cc                                              	int3
109980c6:	cc                                              	int3
109980c7:	cc                                              	int3
109980c8:	cc                                              	int3
109980c9:	cc                                              	int3
109980ca:	cc                                              	int3
109980cb:	cc                                              	int3
109980cc:	cc                                              	int3
109980cd:	cc                                              	int3
109980ce:	cc                                              	int3
109980cf:	cc                                              	int3
