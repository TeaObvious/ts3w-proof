# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10990d50 (SimOutfitResourceWrap_SetMorphWeightB)
Paired Ghidra pseudocode: 10990D50_SimOutfitResourceWrap_SetMorphWeightB.c
Window: [0x10990d50, 0x10990d60) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10990d60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10990d50: 8b 44 24 04 f3 0f 10 44 24 08 f3 0f 11 40 6c c3

LINEAR DISASSEMBLY
10990d50 <.text+0x98fd50>:
10990d50:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10990d54:	f3 0f 10 44 24 08                               	movss  xmm0,DWORD PTR [esp+0x8]
10990d5a:	f3 0f 11 40 6c                                  	movss  DWORD PTR [eax+0x6c],xmm0
10990d5f:	c3                                              	ret
