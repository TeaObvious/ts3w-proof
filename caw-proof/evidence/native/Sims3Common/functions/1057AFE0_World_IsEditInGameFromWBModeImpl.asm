# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057afe0 (World_IsEditInGameFromWBModeImpl)
Paired Ghidra pseudocode: 1057AFE0_World_IsEditInGameFromWBModeImpl.c
Window: [0x1057afe0, 0x1057b000) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b000
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057afe0: a1 c4 00 c7 10 85 c0 74 0b 83 b8 b4 01 00 00 02
1057aff0: 0f 94 c0 c3 32 c0 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057afe0 <.text+0x579fe0>:
1057afe0:	a1 c4 00 c7 10                                  	mov    eax,ds:0x10c700c4
1057afe5:	85 c0                                           	test   eax,eax
1057afe7:	74 0b                                           	je     0x1057aff4
1057afe9:	83 b8 b4 01 00 00 02                            	cmp    DWORD PTR [eax+0x1b4],0x2
1057aff0:	0f 94 c0                                        	sete   al
1057aff3:	c3                                              	ret
1057aff4:	32 c0                                           	xor    al,al
1057aff6:	c3                                              	ret
1057aff7:	cc                                              	int3
1057aff8:	cc                                              	int3
1057aff9:	cc                                              	int3
1057affa:	cc                                              	int3
1057affb:	cc                                              	int3
1057affc:	cc                                              	int3
1057affd:	cc                                              	int3
1057affe:	cc                                              	int3
1057afff:	cc                                              	int3
