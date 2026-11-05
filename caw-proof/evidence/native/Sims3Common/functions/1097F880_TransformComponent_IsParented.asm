# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f880 (TransformComponent_IsParented)
Paired Ghidra pseudocode: 1097F880_TransformComponent_IsParented.c
Window: [0x1097f880, 0x1097f890) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f890
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f880: 8b 4c 24 04 33 c0 39 41 30 0f 95 c0 c3 cc cc cc

LINEAR DISASSEMBLY
1097f880 <.text+0x97e880>:
1097f880:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1097f884:	33 c0                                           	xor    eax,eax
1097f886:	39 41 30                                        	cmp    DWORD PTR [ecx+0x30],eax
1097f889:	0f 95 c0                                        	setne  al
1097f88c:	c3                                              	ret
1097f88d:	cc                                              	int3
1097f88e:	cc                                              	int3
1097f88f:	cc                                              	int3
