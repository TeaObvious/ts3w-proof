# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105627d0 (SocialFeaturesHost_GetRankPoints)
Paired Ghidra pseudocode: 105627D0_SocialFeaturesHost_GetRankPoints.c
Window: [0x105627d0, 0x105627f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105627f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105627d0: 8b 44 24 08 8b 4c 24 04 50 51 e8 01 cd 2a 00 83
105627e0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105627d0 <.text+0x5617d0>:
105627d0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
105627d4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
105627d8:	50                                              	push   eax
105627d9:	51                                              	push   ecx
105627da:	e8 01 cd 2a 00                                  	call   0x1080f4e0
105627df:	83 c4 08                                        	add    esp,0x8
105627e2:	c3                                              	ret
105627e3:	cc                                              	int3
105627e4:	cc                                              	int3
105627e5:	cc                                              	int3
105627e6:	cc                                              	int3
105627e7:	cc                                              	int3
105627e8:	cc                                              	int3
105627e9:	cc                                              	int3
105627ea:	cc                                              	int3
105627eb:	cc                                              	int3
105627ec:	cc                                              	int3
105627ed:	cc                                              	int3
105627ee:	cc                                              	int3
105627ef:	cc                                              	int3
