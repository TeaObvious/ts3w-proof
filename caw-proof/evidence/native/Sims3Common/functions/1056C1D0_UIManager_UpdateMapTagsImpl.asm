# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056c1d0 (UIManager_UpdateMapTagsImpl)
Paired Ghidra pseudocode: 1056C1D0_UIManager_UpdateMapTagsImpl.c
Window: [0x1056c1d0, 0x1056c1f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056c1f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056c1d0: e8 ab eb 06 00 85 c0 74 07 8b c8 e9 20 f6 06 00
1056c1e0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056c1d0 <.text+0x56b1d0>:
1056c1d0:	e8 ab eb 06 00                                  	call   0x105dad80
1056c1d5:	85 c0                                           	test   eax,eax
1056c1d7:	74 07                                           	je     0x1056c1e0
1056c1d9:	8b c8                                           	mov    ecx,eax
1056c1db:	e9 20 f6 06 00                                  	jmp    0x105db800
1056c1e0:	c3                                              	ret
1056c1e1:	cc                                              	int3
1056c1e2:	cc                                              	int3
1056c1e3:	cc                                              	int3
1056c1e4:	cc                                              	int3
1056c1e5:	cc                                              	int3
1056c1e6:	cc                                              	int3
1056c1e7:	cc                                              	int3
1056c1e8:	cc                                              	int3
1056c1e9:	cc                                              	int3
1056c1ea:	cc                                              	int3
1056c1eb:	cc                                              	int3
1056c1ec:	cc                                              	int3
1056c1ed:	cc                                              	int3
1056c1ee:	cc                                              	int3
1056c1ef:	cc                                              	int3
