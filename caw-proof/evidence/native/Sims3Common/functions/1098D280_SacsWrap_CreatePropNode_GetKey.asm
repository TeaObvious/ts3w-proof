# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d280 (SacsWrap_CreatePropNode_GetKey)
Paired Ghidra pseudocode: 1098D280_SacsWrap_CreatePropNode_GetKey.c
Window: [0x1098d280, 0x1098d2c0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d2c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d280: 8b 44 24 08 33 c9 3b c1 74 20 8b 48 58 8b 50 5c
1098d290: 56 8b 70 60 57 8b 78 64 8b 44 24 0c 89 78 04 5f
1098d2a0: 89 30 89 50 0c 5e 89 48 08 c3 8b 44 24 04 89 08
1098d2b0: 89 48 04 89 48 0c 89 48 08 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098d280 <.text+0x98c280>:
1098d280:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098d284:	33 c9                                           	xor    ecx,ecx
1098d286:	3b c1                                           	cmp    eax,ecx
1098d288:	74 20                                           	je     0x1098d2aa
1098d28a:	8b 48 58                                        	mov    ecx,DWORD PTR [eax+0x58]
1098d28d:	8b 50 5c                                        	mov    edx,DWORD PTR [eax+0x5c]
1098d290:	56                                              	push   esi
1098d291:	8b 70 60                                        	mov    esi,DWORD PTR [eax+0x60]
1098d294:	57                                              	push   edi
1098d295:	8b 78 64                                        	mov    edi,DWORD PTR [eax+0x64]
1098d298:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1098d29c:	89 78 04                                        	mov    DWORD PTR [eax+0x4],edi
1098d29f:	5f                                              	pop    edi
1098d2a0:	89 30                                           	mov    DWORD PTR [eax],esi
1098d2a2:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
1098d2a5:	5e                                              	pop    esi
1098d2a6:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1098d2a9:	c3                                              	ret
1098d2aa:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098d2ae:	89 08                                           	mov    DWORD PTR [eax],ecx
1098d2b0:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
1098d2b3:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
1098d2b6:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1098d2b9:	c3                                              	ret
1098d2ba:	cc                                              	int3
1098d2bb:	cc                                              	int3
1098d2bc:	cc                                              	int3
1098d2bd:	cc                                              	int3
1098d2be:	cc                                              	int3
1098d2bf:	cc                                              	int3
