# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109808b0 (EffectComponent_GetName)
Paired Ghidra pseudocode: 109808B0_EffectComponent_GetName.c
Window: [0x109808b0, 0x109808c0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x109808c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109808b0: 8b 44 24 04 85 c0 74 04 8b 40 08 c3 33 c0 c3 cc

LINEAR DISASSEMBLY
109808b0 <.text+0x97f8b0>:
109808b0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
109808b4:	85 c0                                           	test   eax,eax
109808b6:	74 04                                           	je     0x109808bc
109808b8:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
109808bb:	c3                                              	ret
109808bc:	33 c0                                           	xor    eax,eax
109808be:	c3                                              	ret
109808bf:	cc                                              	int3
