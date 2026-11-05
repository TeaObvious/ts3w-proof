# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097ef10 (CASPartResourceWrap_GetUniqueTextureSpace)
Paired Ghidra pseudocode: 1097EF10_CASPartResourceWrap_GetUniqueTextureSpace.c
Window: [0x1097ef10, 0x1097ef20) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097ef20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097ef10: 8b 44 24 04 8a 40 48 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097ef10 <.text+0x97df10>:
1097ef10:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1097ef14:	8a 40 48                                        	mov    al,BYTE PTR [eax+0x48]
1097ef17:	c3                                              	ret
1097ef18:	cc                                              	int3
1097ef19:	cc                                              	int3
1097ef1a:	cc                                              	int3
1097ef1b:	cc                                              	int3
1097ef1c:	cc                                              	int3
1097ef1d:	cc                                              	int3
1097ef1e:	cc                                              	int3
1097ef1f:	cc                                              	int3
