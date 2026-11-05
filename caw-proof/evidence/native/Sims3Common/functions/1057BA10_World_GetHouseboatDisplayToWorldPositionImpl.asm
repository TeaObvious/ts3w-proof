# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057ba10 (World_GetHouseboatDisplayToWorldPositionImpl)
Paired Ghidra pseudocode: 1057BA10_World_GetHouseboatDisplayToWorldPositionImpl.c
Window: [0x1057ba10, 0x1057ba50) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057ba50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057ba10: 8b 44 24 18 8b 4c 24 0c 8b 54 24 10 50 83 ec 0c
1057ba20: 8b c4 89 08 8b 4c 24 24 89 50 04 8b 54 24 18 89
1057ba30: 48 08 8b 44 24 14 52 50 e8 23 e4 ff ff 83 c4 18
1057ba40: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057ba10 <.text+0x57aa10>:
1057ba10:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1057ba14:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1057ba18:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1057ba1c:	50                                              	push   eax
1057ba1d:	83 ec 0c                                        	sub    esp,0xc
1057ba20:	8b c4                                           	mov    eax,esp
1057ba22:	89 08                                           	mov    DWORD PTR [eax],ecx
1057ba24:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
1057ba28:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1057ba2b:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
1057ba2f:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1057ba32:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
1057ba36:	52                                              	push   edx
1057ba37:	50                                              	push   eax
1057ba38:	e8 23 e4 ff ff                                  	call   0x10579e60
1057ba3d:	83 c4 18                                        	add    esp,0x18
1057ba40:	c3                                              	ret
1057ba41:	cc                                              	int3
1057ba42:	cc                                              	int3
1057ba43:	cc                                              	int3
1057ba44:	cc                                              	int3
1057ba45:	cc                                              	int3
1057ba46:	cc                                              	int3
1057ba47:	cc                                              	int3
1057ba48:	cc                                              	int3
1057ba49:	cc                                              	int3
1057ba4a:	cc                                              	int3
1057ba4b:	cc                                              	int3
1057ba4c:	cc                                              	int3
1057ba4d:	cc                                              	int3
1057ba4e:	cc                                              	int3
1057ba4f:	cc                                              	int3
