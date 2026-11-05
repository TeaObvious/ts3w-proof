# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098fdd0 (SimBuilderWrap_GetAgeGenderSpecies)
Paired Ghidra pseudocode: 1098FDD0_SimBuilderWrap_GetAgeGenderSpecies.c
Window: [0x1098fdd0, 0x1098fde0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098fde0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098fdd0: 8b 44 24 04 8b 40 24 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098fdd0 <.text+0x98edd0>:
1098fdd0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098fdd4:	8b 40 24                                        	mov    eax,DWORD PTR [eax+0x24]
1098fdd7:	c3                                              	ret
1098fdd8:	cc                                              	int3
1098fdd9:	cc                                              	int3
1098fdda:	cc                                              	int3
1098fddb:	cc                                              	int3
1098fddc:	cc                                              	int3
1098fddd:	cc                                              	int3
1098fdde:	cc                                              	int3
1098fddf:	cc                                              	int3
