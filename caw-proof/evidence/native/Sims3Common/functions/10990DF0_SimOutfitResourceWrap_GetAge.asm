# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10990df0 (SimOutfitResourceWrap_GetAge)
Paired Ghidra pseudocode: 10990DF0_SimOutfitResourceWrap_GetAge.c
Window: [0x10990df0, 0x10990e00) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10990e00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10990df0: 8b 44 24 04 8b 40 38 83 e0 7f c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10990df0 <.text+0x98fdf0>:
10990df0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10990df4:	8b 40 38                                        	mov    eax,DWORD PTR [eax+0x38]
10990df7:	83 e0 7f                                        	and    eax,0x7f
10990dfa:	c3                                              	ret
10990dfb:	cc                                              	int3
10990dfc:	cc                                              	int3
10990dfd:	cc                                              	int3
10990dfe:	cc                                              	int3
10990dff:	cc                                              	int3
