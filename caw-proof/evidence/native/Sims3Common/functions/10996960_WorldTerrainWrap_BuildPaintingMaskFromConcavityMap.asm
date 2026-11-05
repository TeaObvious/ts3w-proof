# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996960 (WorldTerrainWrap_BuildPaintingMaskFromConcavityMap)
Paired Ghidra pseudocode: 10996960_WorldTerrainWrap_BuildPaintingMaskFromConcavityMap.c
Window: [0x10996960, 0x109969a0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x109969a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996960: 8b 44 24 04 85 c0 74 31 56 8b 70 64 85 f6 74 28
10996970: 57 8b ce e8 d8 00 d2 ff 8b f8 85 ff 8b 46 08 74
10996980: 16 85 c0 74 12 56 50 8b cf e8 02 0e fa ff 8b cf
10996990: 5f 5e e9 f9 9a 85 ff 5f 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10996960 <.text+0x995960>:
10996960:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10996964:	85 c0                                           	test   eax,eax
10996966:	74 31                                           	je     0x10996999
10996968:	56                                              	push   esi
10996969:	8b 70 64                                        	mov    esi,DWORD PTR [eax+0x64]
1099696c:	85 f6                                           	test   esi,esi
1099696e:	74 28                                           	je     0x10996998
10996970:	57                                              	push   edi
10996971:	8b ce                                           	mov    ecx,esi
10996973:	e8 d8 00 d2 ff                                  	call   0x106b6a50
10996978:	8b f8                                           	mov    edi,eax
1099697a:	85 ff                                           	test   edi,edi
1099697c:	8b 46 08                                        	mov    eax,DWORD PTR [esi+0x8]
1099697f:	74 16                                           	je     0x10996997
10996981:	85 c0                                           	test   eax,eax
10996983:	74 12                                           	je     0x10996997
10996985:	56                                              	push   esi
10996986:	50                                              	push   eax
10996987:	8b cf                                           	mov    ecx,edi
10996989:	e8 02 0e fa ff                                  	call   0x10937790
1099698e:	8b cf                                           	mov    ecx,edi
10996990:	5f                                              	pop    edi
10996991:	5e                                              	pop    esi
10996992:	e9 f9 9a 85 ff                                  	jmp    0x101f0490
10996997:	5f                                              	pop    edi
10996998:	5e                                              	pop    esi
10996999:	c3                                              	ret
1099699a:	cc                                              	int3
1099699b:	cc                                              	int3
1099699c:	cc                                              	int3
1099699d:	cc                                              	int3
1099699e:	cc                                              	int3
1099699f:	cc                                              	int3
