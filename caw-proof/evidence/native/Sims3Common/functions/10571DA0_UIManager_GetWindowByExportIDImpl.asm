# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10571da0 (UIManager_GetWindowByExportIDImpl)
Paired Ghidra pseudocode: 10571DA0_UIManager_GetWindowByExportIDImpl.c
Window: [0x10571da0, 0x10571db0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10571db0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10571da0: e9 bb fe ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10571da0 <.text+0x570da0>:
10571da0:	e9 bb fe ff ff                                  	jmp    0x10571c60
10571da5:	cc                                              	int3
10571da6:	cc                                              	int3
10571da7:	cc                                              	int3
10571da8:	cc                                              	int3
10571da9:	cc                                              	int3
10571daa:	cc                                              	int3
10571dab:	cc                                              	int3
10571dac:	cc                                              	int3
10571dad:	cc                                              	int3
10571dae:	cc                                              	int3
10571daf:	cc                                              	int3
