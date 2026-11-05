# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097d8e0 (App3D_GetBuildTimeStamp)
Paired Ghidra pseudocode: 1097D8E0_App3D_GetBuildTimeStamp.c
Window: [0x1097d8e0, 0x1097d8f0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097d8f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097d8e0: b8 90 d5 ca 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097d8e0 <.text+0x97c8e0>:
1097d8e0:	b8 90 d5 ca 10                                  	mov    eax,0x10cad590
1097d8e5:	c3                                              	ret
1097d8e6:	cc                                              	int3
1097d8e7:	cc                                              	int3
1097d8e8:	cc                                              	int3
1097d8e9:	cc                                              	int3
1097d8ea:	cc                                              	int3
1097d8eb:	cc                                              	int3
1097d8ec:	cc                                              	int3
1097d8ed:	cc                                              	int3
1097d8ee:	cc                                              	int3
1097d8ef:	cc                                              	int3
