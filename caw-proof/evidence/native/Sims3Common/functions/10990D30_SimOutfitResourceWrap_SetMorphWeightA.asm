# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10990d30 (SimOutfitResourceWrap_SetMorphWeightA)
Paired Ghidra pseudocode: 10990D30_SimOutfitResourceWrap_SetMorphWeightA.c
Window: [0x10990d30, 0x10990d40) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10990d40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10990d30: 8b 44 24 04 f3 0f 10 44 24 08 f3 0f 11 40 68 c3

LINEAR DISASSEMBLY
10990d30 <.text+0x98fd30>:
10990d30:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10990d34:	f3 0f 10 44 24 08                               	movss  xmm0,DWORD PTR [esp+0x8]
10990d3a:	f3 0f 11 40 68                                  	movss  DWORD PTR [eax+0x68],xmm0
10990d3f:	c3                                              	ret
