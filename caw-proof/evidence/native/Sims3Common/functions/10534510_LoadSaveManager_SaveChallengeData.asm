# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10534510 (LoadSaveManager_SaveChallengeData)
Paired Ghidra pseudocode: 10534510_LoadSaveManager_SaveChallengeData.c
Window: [0x10534510, 0x10534520) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10534520
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10534510: e9 3b fe ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10534510 <.text+0x533510>:
10534510:	e9 3b fe ff ff                                  	jmp    0x10534350
10534515:	cc                                              	int3
10534516:	cc                                              	int3
10534517:	cc                                              	int3
10534518:	cc                                              	int3
10534519:	cc                                              	int3
1053451a:	cc                                              	int3
1053451b:	cc                                              	int3
1053451c:	cc                                              	int3
1053451d:	cc                                              	int3
1053451e:	cc                                              	int3
1053451f:	cc                                              	int3
