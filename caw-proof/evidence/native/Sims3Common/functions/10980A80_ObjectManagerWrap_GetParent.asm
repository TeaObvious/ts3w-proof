# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10980a80 (ObjectManagerWrap_GetParent)
Paired Ghidra pseudocode: 10980A80_ObjectManagerWrap_GetParent.c
Window: [0x10980a80, 0x10980a90) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10980a90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10980a80: 8b 44 24 04 85 c0 74 04 8b 40 10 c3 33 c0 c3 cc

LINEAR DISASSEMBLY
10980a80 <.text+0x97fa80>:
10980a80:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10980a84:	85 c0                                           	test   eax,eax
10980a86:	74 04                                           	je     0x10980a8c
10980a88:	8b 40 10                                        	mov    eax,DWORD PTR [eax+0x10]
10980a8b:	c3                                              	ret
10980a8c:	33 c0                                           	xor    eax,eax
10980a8e:	c3                                              	ret
10980a8f:	cc                                              	int3
