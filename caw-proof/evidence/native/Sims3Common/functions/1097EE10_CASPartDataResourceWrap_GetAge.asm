# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097ee10 (CASPartDataResourceWrap_GetAge)
Paired Ghidra pseudocode: 1097EE10_CASPartDataResourceWrap_GetAge.c
Window: [0x1097ee10, 0x1097ee20) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097ee20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097ee10: 8b 44 24 04 8b 40 3c 83 e0 7f c3 cc cc cc cc cc

LINEAR DISASSEMBLY
1097ee10 <.text+0x97de10>:
1097ee10:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1097ee14:	8b 40 3c                                        	mov    eax,DWORD PTR [eax+0x3c]
1097ee17:	83 e0 7f                                        	and    eax,0x7f
1097ee1a:	c3                                              	ret
1097ee1b:	cc                                              	int3
1097ee1c:	cc                                              	int3
1097ee1d:	cc                                              	int3
1097ee1e:	cc                                              	int3
1097ee1f:	cc                                              	int3
