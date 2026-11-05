# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097d8b0 (App3D_GetBuildVersion)
Paired Ghidra pseudocode: 1097D8B0_App3D_GetBuildVersion.c
Window: [0x1097d8b0, 0x1097d8c0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097d8c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097d8b0: b8 10 d7 ca 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097d8b0 <.text+0x97c8b0>:
1097d8b0:	b8 10 d7 ca 10                                  	mov    eax,0x10cad710
1097d8b5:	c3                                              	ret
1097d8b6:	cc                                              	int3
1097d8b7:	cc                                              	int3
1097d8b8:	cc                                              	int3
1097d8b9:	cc                                              	int3
1097d8ba:	cc                                              	int3
1097d8bb:	cc                                              	int3
1097d8bc:	cc                                              	int3
1097d8bd:	cc                                              	int3
1097d8be:	cc                                              	int3
1097d8bf:	cc                                              	int3
