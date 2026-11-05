# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097d8f0 (App3D_GetBuildConfig)
Paired Ghidra pseudocode: 1097D8F0_App3D_GetBuildConfig.c
Window: [0x1097d8f0, 0x1097d900) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097d900
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097d8f0: b8 10 d5 ca 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097d8f0 <.text+0x97c8f0>:
1097d8f0:	b8 10 d5 ca 10                                  	mov    eax,0x10cad510
1097d8f5:	c3                                              	ret
1097d8f6:	cc                                              	int3
1097d8f7:	cc                                              	int3
1097d8f8:	cc                                              	int3
1097d8f9:	cc                                              	int3
1097d8fa:	cc                                              	int3
1097d8fb:	cc                                              	int3
1097d8fc:	cc                                              	int3
1097d8fd:	cc                                              	int3
1097d8fe:	cc                                              	int3
1097d8ff:	cc                                              	int3
