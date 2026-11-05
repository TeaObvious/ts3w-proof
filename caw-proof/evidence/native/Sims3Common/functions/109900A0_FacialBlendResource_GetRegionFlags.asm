# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109900a0 (FacialBlendResource_GetRegionFlags)
Paired Ghidra pseudocode: 109900A0_FacialBlendResource_GetRegionFlags.c
Window: [0x109900a0, 0x109900b0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x109900b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109900a0: 8b 4c 24 04 e9 57 00 a3 ff cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109900a0 <.text+0x98f0a0>:
109900a0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
109900a4:	e9 57 00 a3 ff                                  	jmp    0x103c0100
109900a9:	cc                                              	int3
109900aa:	cc                                              	int3
109900ab:	cc                                              	int3
109900ac:	cc                                              	int3
109900ad:	cc                                              	int3
109900ae:	cc                                              	int3
109900af:	cc                                              	int3
