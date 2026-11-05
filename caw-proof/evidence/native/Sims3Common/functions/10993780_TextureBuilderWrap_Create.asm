# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10993780 (TextureBuilderWrap_Create)
Paired Ghidra pseudocode: 10993780_TextureBuilderWrap_Create.c
Window: [0x10993780, 0x109937b0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x109937b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10993780: 6a 00 6a 00 6a 00 6a 00 68 c4 76 b9 10 68 a0 00
10993790: 00 00 e8 19 57 f8 ff 83 c4 18 85 c0 74 07 8b c8
109937a0: e9 bb 3d a6 ff 33 c0 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10993780 <.text+0x992780>:
10993780:	6a 00                                           	push   0x0
10993782:	6a 00                                           	push   0x0
10993784:	6a 00                                           	push   0x0
10993786:	6a 00                                           	push   0x0
10993788:	68 c4 76 b9 10                                  	push   0x10b976c4
1099378d:	68 a0 00 00 00                                  	push   0xa0
10993792:	e8 19 57 f8 ff                                  	call   0x10918eb0
10993797:	83 c4 18                                        	add    esp,0x18
1099379a:	85 c0                                           	test   eax,eax
1099379c:	74 07                                           	je     0x109937a5
1099379e:	8b c8                                           	mov    ecx,eax
109937a0:	e9 bb 3d a6 ff                                  	jmp    0x103f7560
109937a5:	33 c0                                           	xor    eax,eax
109937a7:	c3                                              	ret
109937a8:	cc                                              	int3
109937a9:	cc                                              	int3
109937aa:	cc                                              	int3
109937ab:	cc                                              	int3
109937ac:	cc                                              	int3
109937ad:	cc                                              	int3
109937ae:	cc                                              	int3
109937af:	cc                                              	int3
