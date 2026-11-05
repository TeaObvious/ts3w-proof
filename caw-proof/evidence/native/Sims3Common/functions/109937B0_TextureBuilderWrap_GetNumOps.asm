# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109937b0 (TextureBuilderWrap_GetNumOps)
Paired Ghidra pseudocode: 109937B0_TextureBuilderWrap_GetNumOps.c
Window: [0x109937b0, 0x109937c0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x109937c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109937b0: 8b 4c 24 04 e9 77 ee a5 ff cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109937b0 <.text+0x9927b0>:
109937b0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
109937b4:	e9 77 ee a5 ff                                  	jmp    0x103f2630
109937b9:	cc                                              	int3
109937ba:	cc                                              	int3
109937bb:	cc                                              	int3
109937bc:	cc                                              	int3
109937bd:	cc                                              	int3
109937be:	cc                                              	int3
109937bf:	cc                                              	int3
