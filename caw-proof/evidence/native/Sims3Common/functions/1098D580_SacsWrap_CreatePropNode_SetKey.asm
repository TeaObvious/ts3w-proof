# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d580 (SacsWrap_CreatePropNode_SetKey)
Paired Ghidra pseudocode: 1098D580_SacsWrap_CreatePropNode_SetKey.c
Window: [0x1098d580, 0x1098d5b0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d5b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d580: 8b 44 24 04 85 c0 8b 4c 24 08 8b 54 24 0c 56 8b
1098d590: 74 24 14 57 8b 7c 24 1c 74 0c 89 70 58 89 78 5c
1098d5a0: 89 48 60 89 50 64 5f 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098d580 <.text+0x98c580>:
1098d580:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098d584:	85 c0                                           	test   eax,eax
1098d586:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1098d58a:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1098d58e:	56                                              	push   esi
1098d58f:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
1098d593:	57                                              	push   edi
1098d594:	8b 7c 24 1c                                     	mov    edi,DWORD PTR [esp+0x1c]
1098d598:	74 0c                                           	je     0x1098d5a6
1098d59a:	89 70 58                                        	mov    DWORD PTR [eax+0x58],esi
1098d59d:	89 78 5c                                        	mov    DWORD PTR [eax+0x5c],edi
1098d5a0:	89 48 60                                        	mov    DWORD PTR [eax+0x60],ecx
1098d5a3:	89 50 64                                        	mov    DWORD PTR [eax+0x64],edx
1098d5a6:	5f                                              	pop    edi
1098d5a7:	5e                                              	pop    esi
1098d5a8:	c3                                              	ret
1098d5a9:	cc                                              	int3
1098d5aa:	cc                                              	int3
1098d5ab:	cc                                              	int3
1098d5ac:	cc                                              	int3
1098d5ad:	cc                                              	int3
1098d5ae:	cc                                              	int3
1098d5af:	cc                                              	int3
