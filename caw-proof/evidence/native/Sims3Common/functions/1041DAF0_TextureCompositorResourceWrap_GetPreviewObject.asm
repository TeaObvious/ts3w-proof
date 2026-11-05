# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1041daf0 (TextureCompositorResourceWrap_GetPreviewObject)
Paired Ghidra pseudocode: 1041DAF0_TextureCompositorResourceWrap_GetPreviewObject.c
Window: [0x1041daf0, 0x1041db00) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1041db00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1041daf0: 33 c0 33 d2 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1041daf0 <.text+0x41caf0>:
1041daf0:	33 c0                                           	xor    eax,eax
1041daf2:	33 d2                                           	xor    edx,edx
1041daf4:	c3                                              	ret
1041daf5:	cc                                              	int3
1041daf6:	cc                                              	int3
1041daf7:	cc                                              	int3
1041daf8:	cc                                              	int3
1041daf9:	cc                                              	int3
1041dafa:	cc                                              	int3
1041dafb:	cc                                              	int3
1041dafc:	cc                                              	int3
1041dafd:	cc                                              	int3
1041dafe:	cc                                              	int3
1041daff:	cc                                              	int3
