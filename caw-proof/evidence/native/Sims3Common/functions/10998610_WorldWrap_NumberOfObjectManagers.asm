# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10998610 (WorldWrap_NumberOfObjectManagers)
Paired Ghidra pseudocode: 10998610_WorldWrap_NumberOfObjectManagers.c
Window: [0x10998610, 0x10998630) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10998630
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10998610: 8b 4c 24 04 85 c9 74 10 8b 81 a0 00 00 00 2b 81
10998620: 9c 00 00 00 c1 f8 02 c3 33 c0 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10998610 <.text+0x997610>:
10998610:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10998614:	85 c9                                           	test   ecx,ecx
10998616:	74 10                                           	je     0x10998628
10998618:	8b 81 a0 00 00 00                               	mov    eax,DWORD PTR [ecx+0xa0]
1099861e:	2b 81 9c 00 00 00                               	sub    eax,DWORD PTR [ecx+0x9c]
10998624:	c1 f8 02                                        	sar    eax,0x2
10998627:	c3                                              	ret
10998628:	33 c0                                           	xor    eax,eax
1099862a:	c3                                              	ret
1099862b:	cc                                              	int3
1099862c:	cc                                              	int3
1099862d:	cc                                              	int3
1099862e:	cc                                              	int3
1099862f:	cc                                              	int3
