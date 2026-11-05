# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1039f1d0 (CASUtils_SimServiceEnableTimeSlicing)
Paired Ghidra pseudocode: 1039F1D0_CASUtils_SimServiceEnableTimeSlicing.c
Window: [0x1039f1d0, 0x1039f200) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1039f200
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1039f1d0: e8 0b 6e 04 00 85 c0 74 0a 8a 4c 24 04 88 88 39
1039f1e0: 01 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc
1039f1f0: b8 40 a6 af 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1039f1d0 <.text+0x39e1d0>:
1039f1d0:	e8 0b 6e 04 00                                  	call   0x103e5fe0
1039f1d5:	85 c0                                           	test   eax,eax
1039f1d7:	74 0a                                           	je     0x1039f1e3
1039f1d9:	8a 4c 24 04                                     	mov    cl,BYTE PTR [esp+0x4]
1039f1dd:	88 88 39 01 00 00                               	mov    BYTE PTR [eax+0x139],cl
1039f1e3:	c3                                              	ret
1039f1e4:	cc                                              	int3
1039f1e5:	cc                                              	int3
1039f1e6:	cc                                              	int3
1039f1e7:	cc                                              	int3
1039f1e8:	cc                                              	int3
1039f1e9:	cc                                              	int3
1039f1ea:	cc                                              	int3
1039f1eb:	cc                                              	int3
1039f1ec:	cc                                              	int3
1039f1ed:	cc                                              	int3
1039f1ee:	cc                                              	int3
1039f1ef:	cc                                              	int3
1039f1f0:	b8 40 a6 af 10                                  	mov    eax,0x10afa640
1039f1f5:	c3                                              	ret
1039f1f6:	cc                                              	int3
1039f1f7:	cc                                              	int3
1039f1f8:	cc                                              	int3
1039f1f9:	cc                                              	int3
1039f1fa:	cc                                              	int3
1039f1fb:	cc                                              	int3
1039f1fc:	cc                                              	int3
1039f1fd:	cc                                              	int3
1039f1fe:	cc                                              	int3
1039f1ff:	cc                                              	int3
