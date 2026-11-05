# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105625b0 (SocialFeaturesHost_GetSystemWallPostUserLiked)
Paired Ghidra pseudocode: 105625B0_SocialFeaturesHost_GetSystemWallPostUserLiked.c
Window: [0x105625b0, 0x105625d0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105625d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105625b0: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
105625c0: 08 51 52 50 e8 37 c8 2a 00 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
105625b0 <.text+0x5615b0>:
105625b0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
105625b4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
105625b8:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
105625bc:	50                                              	push   eax
105625bd:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
105625c1:	51                                              	push   ecx
105625c2:	52                                              	push   edx
105625c3:	50                                              	push   eax
105625c4:	e8 37 c8 2a 00                                  	call   0x1080ee00
105625c9:	83 c4 10                                        	add    esp,0x10
105625cc:	c3                                              	ret
105625cd:	cc                                              	int3
105625ce:	cc                                              	int3
105625cf:	cc                                              	int3
