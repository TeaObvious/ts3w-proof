# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1030ffd0 (TextureBuilderWrap_SetupRTT)
Paired Ghidra pseudocode: 1030FFD0_TextureBuilderWrap_SetupRTT.c
Window: [0x1030ffd0, 0x1030ffe0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1030ffe0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1030ffd0: b8 01 00 00 00 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1030ffd0 <.text+0x30efd0>:
1030ffd0:	b8 01 00 00 00                                  	mov    eax,0x1
1030ffd5:	c3                                              	ret
1030ffd6:	cc                                              	int3
1030ffd7:	cc                                              	int3
1030ffd8:	cc                                              	int3
1030ffd9:	cc                                              	int3
1030ffda:	cc                                              	int3
1030ffdb:	cc                                              	int3
1030ffdc:	cc                                              	int3
1030ffdd:	cc                                              	int3
1030ffde:	cc                                              	int3
1030ffdf:	cc                                              	int3
