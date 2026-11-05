# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10982530 (ConfigRegistry_Init)
Paired Ghidra pseudocode: 10982530_ConfigRegistry_Init.c
Window: [0x10982530, 0x109825a0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x109825a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10982530: 80 3d 35 7f cb 10 00 75 61 e8 c2 6f a0 ff 85 c0
10982540: 74 14 c6 05 34 7f cb 10 00 a3 30 7f cb 10 c6 05
10982550: 35 7f cb 10 01 c3 6a 00 6a 00 6a 00 6a 00 68 84
10982560: 64 b9 10 6a 3c c6 05 34 7f cb 10 01 e8 3f 69 f9
10982570: ff 83 c4 18 85 c0 74 0b 6a 00 8b c8 e8 2f 94 a0
10982580: ff eb 02 33 c0 50 a3 30 7f cb 10 e8 80 6f a0 ff
10982590: 83 c4 04 c6 05 35 7f cb 10 01 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10982530 <.text+0x981530>:
10982530:	80 3d 35 7f cb 10 00                            	cmp    BYTE PTR ds:0x10cb7f35,0x0
10982537:	75 61                                           	jne    0x1098259a
10982539:	e8 c2 6f a0 ff                                  	call   0x10389500
1098253e:	85 c0                                           	test   eax,eax
10982540:	74 14                                           	je     0x10982556
10982542:	c6 05 34 7f cb 10 00                            	mov    BYTE PTR ds:0x10cb7f34,0x0
10982549:	a3 30 7f cb 10                                  	mov    ds:0x10cb7f30,eax
1098254e:	c6 05 35 7f cb 10 01                            	mov    BYTE PTR ds:0x10cb7f35,0x1
10982555:	c3                                              	ret
10982556:	6a 00                                           	push   0x0
10982558:	6a 00                                           	push   0x0
1098255a:	6a 00                                           	push   0x0
1098255c:	6a 00                                           	push   0x0
1098255e:	68 84 64 b9 10                                  	push   0x10b96484
10982563:	6a 3c                                           	push   0x3c
10982565:	c6 05 34 7f cb 10 01                            	mov    BYTE PTR ds:0x10cb7f34,0x1
1098256c:	e8 3f 69 f9 ff                                  	call   0x10918eb0
10982571:	83 c4 18                                        	add    esp,0x18
10982574:	85 c0                                           	test   eax,eax
10982576:	74 0b                                           	je     0x10982583
10982578:	6a 00                                           	push   0x0
1098257a:	8b c8                                           	mov    ecx,eax
1098257c:	e8 2f 94 a0 ff                                  	call   0x1038b9b0
10982581:	eb 02                                           	jmp    0x10982585
10982583:	33 c0                                           	xor    eax,eax
10982585:	50                                              	push   eax
10982586:	a3 30 7f cb 10                                  	mov    ds:0x10cb7f30,eax
1098258b:	e8 80 6f a0 ff                                  	call   0x10389510
10982590:	83 c4 04                                        	add    esp,0x4
10982593:	c6 05 35 7f cb 10 01                            	mov    BYTE PTR ds:0x10cb7f35,0x1
1098259a:	c3                                              	ret
1098259b:	cc                                              	int3
1098259c:	cc                                              	int3
1098259d:	cc                                              	int3
1098259e:	cc                                              	int3
1098259f:	cc                                              	int3
