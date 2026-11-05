# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b8a0 (World_GetPoolObjectIdForPoolBelowPositionImpl)
Paired Ghidra pseudocode: 1057B8A0_World_GetPoolObjectIdForPoolBelowPositionImpl.c
Window: [0x1057b8a0, 0x1057b8d0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b8d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b8a0: 8b 4c 24 04 8b 54 24 08 83 ec 0c 8b c4 89 08 8b
1057b8b0: 4c 24 18 89 50 04 89 48 08 e8 72 e1 ff ff 83 c4
1057b8c0: 0c c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057b8a0 <.text+0x57a8a0>:
1057b8a0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1057b8a4:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1057b8a8:	83 ec 0c                                        	sub    esp,0xc
1057b8ab:	8b c4                                           	mov    eax,esp
1057b8ad:	89 08                                           	mov    DWORD PTR [eax],ecx
1057b8af:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1057b8b3:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1057b8b6:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1057b8b9:	e8 72 e1 ff ff                                  	call   0x10579a30
1057b8be:	83 c4 0c                                        	add    esp,0xc
1057b8c1:	c3                                              	ret
1057b8c2:	cc                                              	int3
1057b8c3:	cc                                              	int3
1057b8c4:	cc                                              	int3
1057b8c5:	cc                                              	int3
1057b8c6:	cc                                              	int3
1057b8c7:	cc                                              	int3
1057b8c8:	cc                                              	int3
1057b8c9:	cc                                              	int3
1057b8ca:	cc                                              	int3
1057b8cb:	cc                                              	int3
1057b8cc:	cc                                              	int3
1057b8cd:	cc                                              	int3
1057b8ce:	cc                                              	int3
1057b8cf:	cc                                              	int3
