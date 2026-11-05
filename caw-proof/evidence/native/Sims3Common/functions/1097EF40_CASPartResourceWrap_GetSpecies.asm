# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097ef40 (CASPartResourceWrap_GetSpecies)
Paired Ghidra pseudocode: 1097EF40_CASPartResourceWrap_GetSpecies.c
Window: [0x1097ef40, 0x1097ef50) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097ef50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097ef40: 8b 44 24 04 8b 40 58 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097ef40 <.text+0x97df40>:
1097ef40:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1097ef44:	8b 40 58                                        	mov    eax,DWORD PTR [eax+0x58]
1097ef47:	c3                                              	ret
1097ef48:	cc                                              	int3
1097ef49:	cc                                              	int3
1097ef4a:	cc                                              	int3
1097ef4b:	cc                                              	int3
1097ef4c:	cc                                              	int3
1097ef4d:	cc                                              	int3
1097ef4e:	cc                                              	int3
1097ef4f:	cc                                              	int3
