# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1055a9c0 (SACS_GetParamNameImpl)
Paired Ghidra pseudocode: 1055A9C0_SACS_GetParamNameImpl.c
Window: [0x1055a9c0, 0x1055a9d0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1055a9d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1055a9c0: e9 5b fb ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1055a9c0 <.text+0x5599c0>:
1055a9c0:	e9 5b fb ff ff                                  	jmp    0x1055a520
1055a9c5:	cc                                              	int3
1055a9c6:	cc                                              	int3
1055a9c7:	cc                                              	int3
1055a9c8:	cc                                              	int3
1055a9c9:	cc                                              	int3
1055a9ca:	cc                                              	int3
1055a9cb:	cc                                              	int3
1055a9cc:	cc                                              	int3
1055a9cd:	cc                                              	int3
1055a9ce:	cc                                              	int3
1055a9cf:	cc                                              	int3
