# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10534cc0 (LoadSaveManager_LoadChallengeData)
Paired Ghidra pseudocode: 10534CC0_LoadSaveManager_LoadChallengeData.c
Window: [0x10534cc0, 0x10534cd0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10534cd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10534cc0: e9 8b fd ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10534cc0 <.text+0x533cc0>:
10534cc0:	e9 8b fd ff ff                                  	jmp    0x10534a50
10534cc5:	cc                                              	int3
10534cc6:	cc                                              	int3
10534cc7:	cc                                              	int3
10534cc8:	cc                                              	int3
10534cc9:	cc                                              	int3
10534cca:	cc                                              	int3
10534ccb:	cc                                              	int3
10534ccc:	cc                                              	int3
10534ccd:	cc                                              	int3
10534cce:	cc                                              	int3
10534ccf:	cc                                              	int3
