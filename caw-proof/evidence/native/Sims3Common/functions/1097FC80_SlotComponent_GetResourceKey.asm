# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097fc80 (SlotComponent_GetResourceKey)
Paired Ghidra pseudocode: 1097FC80_SlotComponent_GetResourceKey.c
Window: [0x1097fc80, 0x1097fcc0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097fcc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097fc80: 8b 4c 24 08 8b 44 24 04 33 d2 3b ca 74 18 8b 51
1097fc90: 38 89 10 8b 51 3c 89 50 04 8b 51 30 8b 49 34 89
1097fca0: 48 0c 89 50 08 c3 89 10 89 50 04 89 50 0c 89 50
1097fcb0: 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097fc80 <.text+0x97ec80>:
1097fc80:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1097fc84:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1097fc88:	33 d2                                           	xor    edx,edx
1097fc8a:	3b ca                                           	cmp    ecx,edx
1097fc8c:	74 18                                           	je     0x1097fca6
1097fc8e:	8b 51 38                                        	mov    edx,DWORD PTR [ecx+0x38]
1097fc91:	89 10                                           	mov    DWORD PTR [eax],edx
1097fc93:	8b 51 3c                                        	mov    edx,DWORD PTR [ecx+0x3c]
1097fc96:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1097fc99:	8b 51 30                                        	mov    edx,DWORD PTR [ecx+0x30]
1097fc9c:	8b 49 34                                        	mov    ecx,DWORD PTR [ecx+0x34]
1097fc9f:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
1097fca2:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
1097fca5:	c3                                              	ret
1097fca6:	89 10                                           	mov    DWORD PTR [eax],edx
1097fca8:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1097fcab:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
1097fcae:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
1097fcb1:	c3                                              	ret
1097fcb2:	cc                                              	int3
1097fcb3:	cc                                              	int3
1097fcb4:	cc                                              	int3
1097fcb5:	cc                                              	int3
1097fcb6:	cc                                              	int3
1097fcb7:	cc                                              	int3
1097fcb8:	cc                                              	int3
1097fcb9:	cc                                              	int3
1097fcba:	cc                                              	int3
1097fcbb:	cc                                              	int3
1097fcbc:	cc                                              	int3
1097fcbd:	cc                                              	int3
1097fcbe:	cc                                              	int3
1097fcbf:	cc                                              	int3
