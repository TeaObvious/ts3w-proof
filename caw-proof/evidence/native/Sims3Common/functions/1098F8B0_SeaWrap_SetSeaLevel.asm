# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098f8b0 (SeaWrap_SetSeaLevel)
Paired Ghidra pseudocode: 1098F8B0_SeaWrap_SetSeaLevel.c
Window: [0x1098f8b0, 0x1098f8d0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098f8d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098f8b0: d9 44 24 08 6a 00 51 8b 4c 24 0c d9 1c 24 e8 9d
1098f8c0: 9f 84 ff c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098f8b0 <.text+0x98e8b0>:
1098f8b0:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
1098f8b4:	6a 00                                           	push   0x0
1098f8b6:	51                                              	push   ecx
1098f8b7:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1098f8bb:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1098f8be:	e8 9d 9f 84 ff                                  	call   0x101d9860
1098f8c3:	c3                                              	ret
1098f8c4:	cc                                              	int3
1098f8c5:	cc                                              	int3
1098f8c6:	cc                                              	int3
1098f8c7:	cc                                              	int3
1098f8c8:	cc                                              	int3
1098f8c9:	cc                                              	int3
1098f8ca:	cc                                              	int3
1098f8cb:	cc                                              	int3
1098f8cc:	cc                                              	int3
1098f8cd:	cc                                              	int3
1098f8ce:	cc                                              	int3
1098f8cf:	cc                                              	int3
