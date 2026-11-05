# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057a870 (World_GetGlobalObjectManagerId)
Paired Ghidra pseudocode: 1057A870_World_GetGlobalObjectManagerId.c
Window: [0x1057a870, 0x1057a890) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057a890
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057a870: a1 c4 00 c7 10 85 c0 74 11 8b 88 b0 00 00 00 85
1057a880: c9 74 07 8b 41 48 8b 51 4c c3 33 c0 33 d2 c3 cc

LINEAR DISASSEMBLY
1057a870 <.text+0x579870>:
1057a870:	a1 c4 00 c7 10                                  	mov    eax,ds:0x10c700c4
1057a875:	85 c0                                           	test   eax,eax
1057a877:	74 11                                           	je     0x1057a88a
1057a879:	8b 88 b0 00 00 00                               	mov    ecx,DWORD PTR [eax+0xb0]
1057a87f:	85 c9                                           	test   ecx,ecx
1057a881:	74 07                                           	je     0x1057a88a
1057a883:	8b 41 48                                        	mov    eax,DWORD PTR [ecx+0x48]
1057a886:	8b 51 4c                                        	mov    edx,DWORD PTR [ecx+0x4c]
1057a889:	c3                                              	ret
1057a88a:	33 c0                                           	xor    eax,eax
1057a88c:	33 d2                                           	xor    edx,edx
1057a88e:	c3                                              	ret
1057a88f:	cc                                              	int3
