# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109926d0 (Sims3PackFile_GetFileOffset)
Paired Ghidra pseudocode: 109926D0_Sims3PackFile_GetFileOffset.c
Window: [0x109926d0, 0x109926f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109926f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109926d0: 8b 44 24 08 8b 4c 24 04 50 e8 82 1b e2 ff 85 c0
109926e0: 74 04 8b 40 24 c3 33 c0 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109926d0 <.text+0x9916d0>:
109926d0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
109926d4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
109926d8:	50                                              	push   eax
109926d9:	e8 82 1b e2 ff                                  	call   0x107b4260
109926de:	85 c0                                           	test   eax,eax
109926e0:	74 04                                           	je     0x109926e6
109926e2:	8b 40 24                                        	mov    eax,DWORD PTR [eax+0x24]
109926e5:	c3                                              	ret
109926e6:	33 c0                                           	xor    eax,eax
109926e8:	c3                                              	ret
109926e9:	cc                                              	int3
109926ea:	cc                                              	int3
109926eb:	cc                                              	int3
109926ec:	cc                                              	int3
109926ed:	cc                                              	int3
109926ee:	cc                                              	int3
109926ef:	cc                                              	int3
