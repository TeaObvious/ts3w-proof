# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10990d80 (SimOutfitResourceWrap_GetMorphWeightC)
Paired Ghidra pseudocode: 10990D80_SimOutfitResourceWrap_GetMorphWeightC.c
Window: [0x10990d80, 0x10990d90) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10990d90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10990d80: 8b 44 24 04 d9 40 70 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10990d80 <.text+0x98fd80>:
10990d80:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10990d84:	d9 40 70                                        	fld    DWORD PTR [eax+0x70]
10990d87:	c3                                              	ret
10990d88:	cc                                              	int3
10990d89:	cc                                              	int3
10990d8a:	cc                                              	int3
10990d8b:	cc                                              	int3
10990d8c:	cc                                              	int3
10990d8d:	cc                                              	int3
10990d8e:	cc                                              	int3
10990d8f:	cc                                              	int3
