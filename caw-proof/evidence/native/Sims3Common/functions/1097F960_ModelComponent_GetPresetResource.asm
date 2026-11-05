# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f960 (ModelComponent_GetPresetResource)
Paired Ghidra pseudocode: 1097F960_ModelComponent_GetPresetResource.c
Window: [0x1097f960, 0x1097f970) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f970
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f960: 8b 44 24 04 85 c0 74 04 8b 40 48 c3 33 c0 c3 cc

LINEAR DISASSEMBLY
1097f960 <.text+0x97e960>:
1097f960:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1097f964:	85 c0                                           	test   eax,eax
1097f966:	74 04                                           	je     0x1097f96c
1097f968:	8b 40 48                                        	mov    eax,DWORD PTR [eax+0x48]
1097f96b:	c3                                              	ret
1097f96c:	33 c0                                           	xor    eax,eax
1097f96e:	c3                                              	ret
1097f96f:	cc                                              	int3
