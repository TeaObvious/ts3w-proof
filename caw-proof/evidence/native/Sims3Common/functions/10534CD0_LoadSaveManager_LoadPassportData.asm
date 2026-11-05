# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10534cd0 (LoadSaveManager_LoadPassportData)
Paired Ghidra pseudocode: 10534CD0_LoadSaveManager_LoadPassportData.c
Window: [0x10534cd0, 0x10534ce0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10534ce0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10534cd0: e9 ab fe ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10534cd0 <.text+0x533cd0>:
10534cd0:	e9 ab fe ff ff                                  	jmp    0x10534b80
10534cd5:	cc                                              	int3
10534cd6:	cc                                              	int3
10534cd7:	cc                                              	int3
10534cd8:	cc                                              	int3
10534cd9:	cc                                              	int3
10534cda:	cc                                              	int3
10534cdb:	cc                                              	int3
10534cdc:	cc                                              	int3
10534cdd:	cc                                              	int3
10534cde:	cc                                              	int3
10534cdf:	cc                                              	int3
