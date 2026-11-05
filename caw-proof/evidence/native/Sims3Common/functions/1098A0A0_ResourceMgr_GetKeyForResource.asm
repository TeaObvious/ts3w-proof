# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098a0a0 (ResourceMgr_GetKeyForResource)
Paired Ghidra pseudocode: 1098A0A0_ResourceMgr_GetKeyForResource.c
Window: [0x1098a0a0, 0x1098a0d0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098a0d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098a0a0: 8b 44 24 04 8b 50 08 8b 4c 24 08 56 8b 70 0c 57
1098a0b0: 8b 78 10 8b 40 14 89 39 5f 89 71 0c 89 41 04 89
1098a0c0: 51 08 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098a0a0 <.text+0x9890a0>:
1098a0a0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098a0a4:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1098a0a7:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1098a0ab:	56                                              	push   esi
1098a0ac:	8b 70 0c                                        	mov    esi,DWORD PTR [eax+0xc]
1098a0af:	57                                              	push   edi
1098a0b0:	8b 78 10                                        	mov    edi,DWORD PTR [eax+0x10]
1098a0b3:	8b 40 14                                        	mov    eax,DWORD PTR [eax+0x14]
1098a0b6:	89 39                                           	mov    DWORD PTR [ecx],edi
1098a0b8:	5f                                              	pop    edi
1098a0b9:	89 71 0c                                        	mov    DWORD PTR [ecx+0xc],esi
1098a0bc:	89 41 04                                        	mov    DWORD PTR [ecx+0x4],eax
1098a0bf:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
1098a0c2:	5e                                              	pop    esi
1098a0c3:	c3                                              	ret
1098a0c4:	cc                                              	int3
1098a0c5:	cc                                              	int3
1098a0c6:	cc                                              	int3
1098a0c7:	cc                                              	int3
1098a0c8:	cc                                              	int3
1098a0c9:	cc                                              	int3
1098a0ca:	cc                                              	int3
1098a0cb:	cc                                              	int3
1098a0cc:	cc                                              	int3
1098a0cd:	cc                                              	int3
1098a0ce:	cc                                              	int3
1098a0cf:	cc                                              	int3
