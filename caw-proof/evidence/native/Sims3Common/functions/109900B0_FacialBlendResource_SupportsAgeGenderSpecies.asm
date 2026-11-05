# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109900b0 (FacialBlendResource_SupportsAgeGenderSpecies)
Paired Ghidra pseudocode: 109900B0_FacialBlendResource_SupportsAgeGenderSpecies.c
Window: [0x109900b0, 0x109900c0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x109900c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109900b0: 8b 44 24 08 8b 4c 24 04 50 e8 02 fe a2 ff c3 cc

LINEAR DISASSEMBLY
109900b0 <.text+0x98f0b0>:
109900b0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
109900b4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
109900b8:	50                                              	push   eax
109900b9:	e8 02 fe a2 ff                                  	call   0x103bfec0
109900be:	c3                                              	ret
109900bf:	cc                                              	int3
