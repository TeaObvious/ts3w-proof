# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b2a0 (World_ObjectDesigner_CreateLargePatternThumbnailImpl)
Paired Ghidra pseudocode: 1057B2A0_World_ObjectDesigner_CreateLargePatternThumbnailImpl.c
Window: [0x1057b2a0, 0x1057b2d0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b2d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b2a0: 8b 44 24 14 8b 4c 24 10 8b 54 24 0c 50 8b 44 24
1057b2b0: 0c 51 8b 4c 24 0c 52 50 51 e8 b2 de ff ff 83 c4
1057b2c0: 14 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057b2a0 <.text+0x57a2a0>:
1057b2a0:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
1057b2a4:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1057b2a8:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1057b2ac:	50                                              	push   eax
1057b2ad:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1057b2b1:	51                                              	push   ecx
1057b2b2:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1057b2b6:	52                                              	push   edx
1057b2b7:	50                                              	push   eax
1057b2b8:	51                                              	push   ecx
1057b2b9:	e8 b2 de ff ff                                  	call   0x10579170
1057b2be:	83 c4 14                                        	add    esp,0x14
1057b2c1:	c3                                              	ret
1057b2c2:	cc                                              	int3
1057b2c3:	cc                                              	int3
1057b2c4:	cc                                              	int3
1057b2c5:	cc                                              	int3
1057b2c6:	cc                                              	int3
1057b2c7:	cc                                              	int3
1057b2c8:	cc                                              	int3
1057b2c9:	cc                                              	int3
1057b2ca:	cc                                              	int3
1057b2cb:	cc                                              	int3
1057b2cc:	cc                                              	int3
1057b2cd:	cc                                              	int3
1057b2ce:	cc                                              	int3
1057b2cf:	cc                                              	int3
