# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566d90 (SocialFeaturesHost_GetEarnedBadgeCategories)
Paired Ghidra pseudocode: 10566D90_SocialFeaturesHost_GetEarnedBadgeCategories.c
Window: [0x10566d90, 0x10566db0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566db0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566d90: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
10566da0: 2c f8 ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10566d90 <.text+0x565d90>:
10566d90:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10566d94:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10566d98:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10566d9c:	50                                              	push   eax
10566d9d:	51                                              	push   ecx
10566d9e:	52                                              	push   edx
10566d9f:	e8 2c f8 ff ff                                  	call   0x105665d0
10566da4:	83 c4 0c                                        	add    esp,0xc
10566da7:	c3                                              	ret
10566da8:	cc                                              	int3
10566da9:	cc                                              	int3
10566daa:	cc                                              	int3
10566dab:	cc                                              	int3
10566dac:	cc                                              	int3
10566dad:	cc                                              	int3
10566dae:	cc                                              	int3
10566daf:	cc                                              	int3
