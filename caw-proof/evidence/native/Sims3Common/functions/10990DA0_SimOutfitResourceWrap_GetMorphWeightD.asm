# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10990da0 (SimOutfitResourceWrap_GetMorphWeightD)
Paired Ghidra pseudocode: 10990DA0_SimOutfitResourceWrap_GetMorphWeightD.c
Window: [0x10990da0, 0x10990db0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10990db0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10990da0: 8b 44 24 04 d9 40 74 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10990da0 <.text+0x98fda0>:
10990da0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10990da4:	d9 40 74                                        	fld    DWORD PTR [eax+0x74]
10990da7:	c3                                              	ret
10990da8:	cc                                              	int3
10990da9:	cc                                              	int3
10990daa:	cc                                              	int3
10990dab:	cc                                              	int3
10990dac:	cc                                              	int3
10990dad:	cc                                              	int3
10990dae:	cc                                              	int3
10990daf:	cc                                              	int3
