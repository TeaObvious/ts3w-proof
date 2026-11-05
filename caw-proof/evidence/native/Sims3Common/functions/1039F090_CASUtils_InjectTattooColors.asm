# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1039f090 (CASUtils_InjectTattooColors)
Paired Ghidra pseudocode: 1039F090_CASUtils_InjectTattooColors.c
Window: [0x1039f090, 0x1039f0a0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1039f0a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1039f090: e9 6b 1f 05 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1039f090 <.text+0x39e090>:
1039f090:	e9 6b 1f 05 00                                  	jmp    0x103f1000
1039f095:	cc                                              	int3
1039f096:	cc                                              	int3
1039f097:	cc                                              	int3
1039f098:	cc                                              	int3
1039f099:	cc                                              	int3
1039f09a:	cc                                              	int3
1039f09b:	cc                                              	int3
1039f09c:	cc                                              	int3
1039f09d:	cc                                              	int3
1039f09e:	cc                                              	int3
1039f09f:	cc                                              	int3
