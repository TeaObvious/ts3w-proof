# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10990de0 (SimOutfitResourceWrap_SetSpecies)
Paired Ghidra pseudocode: 10990DE0_SimOutfitResourceWrap_SetSpecies.c
Window: [0x10990de0, 0x10990df0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10990df0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10990de0: 8b 44 24 08 8b 4c 24 04 50 e8 62 f4 a4 ff c3 cc

LINEAR DISASSEMBLY
10990de0 <.text+0x98fde0>:
10990de0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10990de4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10990de8:	50                                              	push   eax
10990de9:	e8 62 f4 a4 ff                                  	call   0x103e0250
10990dee:	c3                                              	ret
10990def:	cc                                              	int3
