# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105624c0 (SocialFeaturesHost_GetNumberOfSystemWallPosts)
Paired Ghidra pseudocode: 105624C0_SocialFeaturesHost_GetNumberOfSystemWallPosts.c
Window: [0x105624c0, 0x105624e0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105624e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105624c0: 8b 44 24 08 8b 4c 24 04 50 51 e8 b1 c6 2a 00 83
105624d0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105624c0 <.text+0x5614c0>:
105624c0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
105624c4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
105624c8:	50                                              	push   eax
105624c9:	51                                              	push   ecx
105624ca:	e8 b1 c6 2a 00                                  	call   0x1080eb80
105624cf:	83 c4 08                                        	add    esp,0x8
105624d2:	c3                                              	ret
105624d3:	cc                                              	int3
105624d4:	cc                                              	int3
105624d5:	cc                                              	int3
105624d6:	cc                                              	int3
105624d7:	cc                                              	int3
105624d8:	cc                                              	int3
105624d9:	cc                                              	int3
105624da:	cc                                              	int3
105624db:	cc                                              	int3
105624dc:	cc                                              	int3
105624dd:	cc                                              	int3
105624de:	cc                                              	int3
105624df:	cc                                              	int3
