# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109900c0 (SimBuilderWrap_SetWaitForTextures)
Paired Ghidra pseudocode: 109900C0_SimBuilderWrap_SetWaitForTextures.c
Window: [0x109900c0, 0x109900d0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x109900d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109900c0: 8b 44 24 04 85 c0 74 07 8a 4c 24 08 88 48 6a c3

LINEAR DISASSEMBLY
109900c0 <.text+0x98f0c0>:
109900c0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
109900c4:	85 c0                                           	test   eax,eax
109900c6:	74 07                                           	je     0x109900cf
109900c8:	8a 4c 24 08                                     	mov    cl,BYTE PTR [esp+0x8]
109900cc:	88 48 6a                                        	mov    BYTE PTR [eax+0x6a],cl
109900cf:	c3                                              	ret
