# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10580250 (World_ForceVisibilityForPicture)
Paired Ghidra pseudocode: 10580250_World_ForceVisibilityForPicture.c
Window: [0x10580250, 0x10580270) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10580270
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10580250: e8 4b e1 f5 ff 85 c0 74 10 33 c9 38 4c 24 04 0f
10580260: 95 c1 05 a4 02 00 00 87 08 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10580250 <.text+0x57f250>:
10580250:	e8 4b e1 f5 ff                                  	call   0x104de3a0
10580255:	85 c0                                           	test   eax,eax
10580257:	74 10                                           	je     0x10580269
10580259:	33 c9                                           	xor    ecx,ecx
1058025b:	38 4c 24 04                                     	cmp    BYTE PTR [esp+0x4],cl
1058025f:	0f 95 c1                                        	setne  cl
10580262:	05 a4 02 00 00                                  	add    eax,0x2a4
10580267:	87 08                                           	xchg   DWORD PTR [eax],ecx
10580269:	c3                                              	ret
1058026a:	cc                                              	int3
1058026b:	cc                                              	int3
1058026c:	cc                                              	int3
1058026d:	cc                                              	int3
1058026e:	cc                                              	int3
1058026f:	cc                                              	int3
