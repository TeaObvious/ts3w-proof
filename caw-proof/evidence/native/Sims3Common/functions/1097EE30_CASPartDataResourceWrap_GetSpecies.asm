# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097ee30 (CASPartDataResourceWrap_GetSpecies)
Paired Ghidra pseudocode: 1097EE30_CASPartDataResourceWrap_GetSpecies.c
Window: [0x1097ee30, 0x1097ee40) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097ee40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097ee30: 8b 44 24 04 8b 40 3c 25 00 cf 00 00 c3 cc cc cc

LINEAR DISASSEMBLY
1097ee30 <.text+0x97de30>:
1097ee30:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1097ee34:	8b 40 3c                                        	mov    eax,DWORD PTR [eax+0x3c]
1097ee37:	25 00 cf 00 00                                  	and    eax,0xcf00
1097ee3c:	c3                                              	ret
1097ee3d:	cc                                              	int3
1097ee3e:	cc                                              	int3
1097ee3f:	cc                                              	int3
