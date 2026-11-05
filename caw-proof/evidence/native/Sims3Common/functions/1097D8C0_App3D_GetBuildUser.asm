# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097d8c0 (App3D_GetBuildUser)
Paired Ghidra pseudocode: 1097D8C0_App3D_GetBuildUser.c
Window: [0x1097d8c0, 0x1097d8d0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097d8d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097d8c0: b8 90 d6 ca 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097d8c0 <.text+0x97c8c0>:
1097d8c0:	b8 90 d6 ca 10                                  	mov    eax,0x10cad690
1097d8c5:	c3                                              	ret
1097d8c6:	cc                                              	int3
1097d8c7:	cc                                              	int3
1097d8c8:	cc                                              	int3
1097d8c9:	cc                                              	int3
1097d8ca:	cc                                              	int3
1097d8cb:	cc                                              	int3
1097d8cc:	cc                                              	int3
1097d8cd:	cc                                              	int3
1097d8ce:	cc                                              	int3
1097d8cf:	cc                                              	int3
