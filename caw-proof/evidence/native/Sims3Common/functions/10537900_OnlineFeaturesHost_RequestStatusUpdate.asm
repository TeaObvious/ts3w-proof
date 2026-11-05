# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10537900 (OnlineFeaturesHost_RequestStatusUpdate)
Paired Ghidra pseudocode: 10537900_OnlineFeaturesHost_RequestStatusUpdate.c
Window: [0x10537900, 0x10537930) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10537930
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10537900: 80 3d 7c 88 c7 10 00 75 1e a1 dc 88 c7 10 85 c0
10537910: c6 05 7c 88 c7 10 01 74 0e 8d 48 f8 85 c9 74 07
10537920: 6a 00 e8 39 cf 13 00 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10537900 <.text+0x536900>:
10537900:	80 3d 7c 88 c7 10 00                            	cmp    BYTE PTR ds:0x10c7887c,0x0
10537907:	75 1e                                           	jne    0x10537927
10537909:	a1 dc 88 c7 10                                  	mov    eax,ds:0x10c788dc
1053790e:	85 c0                                           	test   eax,eax
10537910:	c6 05 7c 88 c7 10 01                            	mov    BYTE PTR ds:0x10c7887c,0x1
10537917:	74 0e                                           	je     0x10537927
10537919:	8d 48 f8                                        	lea    ecx,[eax-0x8]
1053791c:	85 c9                                           	test   ecx,ecx
1053791e:	74 07                                           	je     0x10537927
10537920:	6a 00                                           	push   0x0
10537922:	e8 39 cf 13 00                                  	call   0x10674860
10537927:	c3                                              	ret
10537928:	cc                                              	int3
10537929:	cc                                              	int3
1053792a:	cc                                              	int3
1053792b:	cc                                              	int3
1053792c:	cc                                              	int3
1053792d:	cc                                              	int3
1053792e:	cc                                              	int3
1053792f:	cc                                              	int3
