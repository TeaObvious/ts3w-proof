# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109981a0 (WorldWrap_IsUsingSinglePackedFile)
Paired Ghidra pseudocode: 109981A0_WorldWrap_IsUsingSinglePackedFile.c
Window: [0x109981a0, 0x109981c0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109981c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109981a0: 8b 44 24 04 85 c0 74 0f 80 b8 90 01 00 00 00 74
109981b0: 06 b8 01 00 00 00 c3 33 c0 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
109981a0 <.text+0x9971a0>:
109981a0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
109981a4:	85 c0                                           	test   eax,eax
109981a6:	74 0f                                           	je     0x109981b7
109981a8:	80 b8 90 01 00 00 00                            	cmp    BYTE PTR [eax+0x190],0x0
109981af:	74 06                                           	je     0x109981b7
109981b1:	b8 01 00 00 00                                  	mov    eax,0x1
109981b6:	c3                                              	ret
109981b7:	33 c0                                           	xor    eax,eax
109981b9:	c3                                              	ret
109981ba:	cc                                              	int3
109981bb:	cc                                              	int3
109981bc:	cc                                              	int3
109981bd:	cc                                              	int3
109981be:	cc                                              	int3
109981bf:	cc                                              	int3
