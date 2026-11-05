# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10998090 (WorldWrap_FinishMaskPaint)
Paired Ghidra pseudocode: 10998090_WorldWrap_FinishMaskPaint.c
Window: [0x10998090, 0x109980a0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x109980a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10998090: e9 5b bb 86 ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10998090 <.text+0x997090>:
10998090:	e9 5b bb 86 ff                                  	jmp    0x10203bf0
10998095:	cc                                              	int3
10998096:	cc                                              	int3
10998097:	cc                                              	int3
10998098:	cc                                              	int3
10998099:	cc                                              	int3
1099809a:	cc                                              	int3
1099809b:	cc                                              	int3
1099809c:	cc                                              	int3
1099809d:	cc                                              	int3
1099809e:	cc                                              	int3
1099809f:	cc                                              	int3
