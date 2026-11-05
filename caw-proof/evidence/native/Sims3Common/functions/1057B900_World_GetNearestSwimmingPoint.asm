# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b900 (World_GetNearestSwimmingPoint)
Paired Ghidra pseudocode: 1057B900_World_GetNearestSwimmingPoint.c
Window: [0x1057b900, 0x1057b930) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b930
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b900: 8b 44 24 14 8b 4c 24 10 8b 54 24 04 50 51 8b 4c
1057b910: 24 10 83 ec 0c 8b c4 89 10 8b 54 24 20 89 48 04
1057b920: 89 50 08 e8 88 e1 ff ff 83 c4 14 c3 cc cc cc cc

LINEAR DISASSEMBLY
1057b900 <.text+0x57a900>:
1057b900:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
1057b904:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1057b908:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057b90c:	50                                              	push   eax
1057b90d:	51                                              	push   ecx
1057b90e:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1057b912:	83 ec 0c                                        	sub    esp,0xc
1057b915:	8b c4                                           	mov    eax,esp
1057b917:	89 10                                           	mov    DWORD PTR [eax],edx
1057b919:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
1057b91d:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
1057b920:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
1057b923:	e8 88 e1 ff ff                                  	call   0x10579ab0
1057b928:	83 c4 14                                        	add    esp,0x14
1057b92b:	c3                                              	ret
1057b92c:	cc                                              	int3
1057b92d:	cc                                              	int3
1057b92e:	cc                                              	int3
1057b92f:	cc                                              	int3
