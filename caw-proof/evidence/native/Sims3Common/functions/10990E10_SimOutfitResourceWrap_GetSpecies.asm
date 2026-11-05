# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10990e10 (SimOutfitResourceWrap_GetSpecies)
Paired Ghidra pseudocode: 10990E10_SimOutfitResourceWrap_GetSpecies.c
Window: [0x10990e10, 0x10990e20) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10990e20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10990e10: 8b 44 24 04 8b 40 38 25 00 cf 00 00 c3 cc cc cc

LINEAR DISASSEMBLY
10990e10 <.text+0x98fe10>:
10990e10:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10990e14:	8b 40 38                                        	mov    eax,DWORD PTR [eax+0x38]
10990e17:	25 00 cf 00 00                                  	and    eax,0xcf00
10990e1c:	c3                                              	ret
10990e1d:	cc                                              	int3
10990e1e:	cc                                              	int3
10990e1f:	cc                                              	int3
