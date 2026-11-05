# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10982730 (ConfigRegistry_Shutdown)
Paired Ghidra pseudocode: 10982730_ConfigRegistry_Shutdown.c
Window: [0x10982730, 0x10982780) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10982780
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10982730: 80 3d 34 7f cb 10 00 74 37 8b 0d 30 7f cb 10 85
10982740: c9 56 c6 05 34 7f cb 10 00 8b f1 74 0e e8 ce 91
10982750: a0 ff 56 e8 38 67 f9 ff 83 c4 04 6a 00 c7 05 30
10982760: 7f cb 10 00 00 00 00 e8 a4 6d a0 ff 83 c4 04 5e
10982770: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10982730 <.text+0x981730>:
10982730:	80 3d 34 7f cb 10 00                            	cmp    BYTE PTR ds:0x10cb7f34,0x0
10982737:	74 37                                           	je     0x10982770
10982739:	8b 0d 30 7f cb 10                               	mov    ecx,DWORD PTR ds:0x10cb7f30
1098273f:	85 c9                                           	test   ecx,ecx
10982741:	56                                              	push   esi
10982742:	c6 05 34 7f cb 10 00                            	mov    BYTE PTR ds:0x10cb7f34,0x0
10982749:	8b f1                                           	mov    esi,ecx
1098274b:	74 0e                                           	je     0x1098275b
1098274d:	e8 ce 91 a0 ff                                  	call   0x1038b920
10982752:	56                                              	push   esi
10982753:	e8 38 67 f9 ff                                  	call   0x10918e90
10982758:	83 c4 04                                        	add    esp,0x4
1098275b:	6a 00                                           	push   0x0
1098275d:	c7 05 30 7f cb 10 00 00 00 00                   	mov    DWORD PTR ds:0x10cb7f30,0x0
10982767:	e8 a4 6d a0 ff                                  	call   0x10389510
1098276c:	83 c4 04                                        	add    esp,0x4
1098276f:	5e                                              	pop    esi
10982770:	c3                                              	ret
10982771:	cc                                              	int3
10982772:	cc                                              	int3
10982773:	cc                                              	int3
10982774:	cc                                              	int3
10982775:	cc                                              	int3
10982776:	cc                                              	int3
10982777:	cc                                              	int3
10982778:	cc                                              	int3
10982779:	cc                                              	int3
1098277a:	cc                                              	int3
1098277b:	cc                                              	int3
1098277c:	cc                                              	int3
1098277d:	cc                                              	int3
1098277e:	cc                                              	int3
1098277f:	cc                                              	int3
