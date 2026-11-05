# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b770 (World_GetCatalogRefundRateImpl)
Paired Ghidra pseudocode: 1057B770_World_GetCatalogRefundRateImpl.c
Window: [0x1057b770, 0x1057b7a0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b7a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b770: 51 83 3d 34 05 c7 10 00 74 12 f3 0f 10 05 a0 fb
1057b780: aa 10 f3 0f 11 04 24 d9 04 24 59 c3 f3 0f 10 05
1057b790: d4 b0 ac 10 f3 0f 11 04 24 d9 04 24 59 c3 cc cc

LINEAR DISASSEMBLY
1057b770 <.text+0x57a770>:
1057b770:	51                                              	push   ecx
1057b771:	83 3d 34 05 c7 10 00                            	cmp    DWORD PTR ds:0x10c70534,0x0
1057b778:	74 12                                           	je     0x1057b78c
1057b77a:	f3 0f 10 05 a0 fb aa 10                         	movss  xmm0,DWORD PTR ds:0x10aafba0
1057b782:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
1057b787:	d9 04 24                                        	fld    DWORD PTR [esp]
1057b78a:	59                                              	pop    ecx
1057b78b:	c3                                              	ret
1057b78c:	f3 0f 10 05 d4 b0 ac 10                         	movss  xmm0,DWORD PTR ds:0x10acb0d4
1057b794:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
1057b799:	d9 04 24                                        	fld    DWORD PTR [esp]
1057b79c:	59                                              	pop    ecx
1057b79d:	c3                                              	ret
1057b79e:	cc                                              	int3
1057b79f:	cc                                              	int3
