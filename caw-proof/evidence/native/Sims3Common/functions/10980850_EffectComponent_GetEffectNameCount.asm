# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10980850 (EffectComponent_GetEffectNameCount)
Paired Ghidra pseudocode: 10980850_EffectComponent_GetEffectNameCount.c
Window: [0x10980850, 0x10980890) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10980890
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10980850: e8 fb c8 b8 ff 85 c0 75 01 c3 8b 10 6a 00 8b c8
10980860: 8b 82 bc 00 00 00 68 b0 9b c5 10 ff d0 8b 0d b4
10980870: 9b c5 10 2b 0d b0 9b c5 10 b8 39 8e e3 38 f7 e9
10980880: c1 fa 03 8b c2 c1 e8 1f 03 c2 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10980850 <.text+0x97f850>:
10980850:	e8 fb c8 b8 ff                                  	call   0x1050d150
10980855:	85 c0                                           	test   eax,eax
10980857:	75 01                                           	jne    0x1098085a
10980859:	c3                                              	ret
1098085a:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098085c:	6a 00                                           	push   0x0
1098085e:	8b c8                                           	mov    ecx,eax
10980860:	8b 82 bc 00 00 00                               	mov    eax,DWORD PTR [edx+0xbc]
10980866:	68 b0 9b c5 10                                  	push   0x10c59bb0
1098086b:	ff d0                                           	call   eax
1098086d:	8b 0d b4 9b c5 10                               	mov    ecx,DWORD PTR ds:0x10c59bb4
10980873:	2b 0d b0 9b c5 10                               	sub    ecx,DWORD PTR ds:0x10c59bb0
10980879:	b8 39 8e e3 38                                  	mov    eax,0x38e38e39
1098087e:	f7 e9                                           	imul   ecx
10980880:	c1 fa 03                                        	sar    edx,0x3
10980883:	8b c2                                           	mov    eax,edx
10980885:	c1 e8 1f                                        	shr    eax,0x1f
10980888:	03 c2                                           	add    eax,edx
1098088a:	c3                                              	ret
1098088b:	cc                                              	int3
1098088c:	cc                                              	int3
1098088d:	cc                                              	int3
1098088e:	cc                                              	int3
1098088f:	cc                                              	int3
