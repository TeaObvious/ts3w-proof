# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105350a0 (LocalizedStringService_GetLocalizedLogoSuffixEP)
Paired Ghidra pseudocode: 105350A0_LocalizedStringService_GetLocalizedLogoSuffixEP.c
Window: [0x105350a0, 0x105350b0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x105350b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105350a0: e9 eb 1d e6 ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105350a0 <.text+0x5340a0>:
105350a0:	e9 eb 1d e6 ff                                  	jmp    0x10396e90
105350a5:	cc                                              	int3
105350a6:	cc                                              	int3
105350a7:	cc                                              	int3
105350a8:	cc                                              	int3
105350a9:	cc                                              	int3
105350aa:	cc                                              	int3
105350ab:	cc                                              	int3
105350ac:	cc                                              	int3
105350ad:	cc                                              	int3
105350ae:	cc                                              	int3
105350af:	cc                                              	int3
