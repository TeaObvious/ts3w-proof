# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052f780 (Camera_GetCustomFlyThroughIndex)
Paired Ghidra pseudocode: 1052F780_Camera_GetCustomFlyThroughIndex.c
Window: [0x1052f780, 0x1052f7a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052f7a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052f780: e8 ab ce 22 00 85 c0 74 12 8b c8 e8 f0 82 40 00
1052f790: 85 c0 74 07 8b c8 e9 95 d1 22 00 33 c0 c3 cc cc

LINEAR DISASSEMBLY
1052f780 <.text+0x52e780>:
1052f780:	e8 ab ce 22 00                                  	call   0x1075c630
1052f785:	85 c0                                           	test   eax,eax
1052f787:	74 12                                           	je     0x1052f79b
1052f789:	8b c8                                           	mov    ecx,eax
1052f78b:	e8 f0 82 40 00                                  	call   0x10937a80
1052f790:	85 c0                                           	test   eax,eax
1052f792:	74 07                                           	je     0x1052f79b
1052f794:	8b c8                                           	mov    ecx,eax
1052f796:	e9 95 d1 22 00                                  	jmp    0x1075c930
1052f79b:	33 c0                                           	xor    eax,eax
1052f79d:	c3                                              	ret
1052f79e:	cc                                              	int3
1052f79f:	cc                                              	int3
