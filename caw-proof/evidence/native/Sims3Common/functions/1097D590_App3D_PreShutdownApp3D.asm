# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097d590 (App3D_PreShutdownApp3D)
Paired Ghidra pseudocode: 1097D590_App3D_PreShutdownApp3D.c
Window: [0x1097d590, 0x1097d5a0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097d5a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097d590: e9 fb 94 a0 ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097d590 <.text+0x97c590>:
1097d590:	e9 fb 94 a0 ff                                  	jmp    0x10386a90
1097d595:	cc                                              	int3
1097d596:	cc                                              	int3
1097d597:	cc                                              	int3
1097d598:	cc                                              	int3
1097d599:	cc                                              	int3
1097d59a:	cc                                              	int3
1097d59b:	cc                                              	int3
1097d59c:	cc                                              	int3
1097d59d:	cc                                              	int3
1097d59e:	cc                                              	int3
1097d59f:	cc                                              	int3
