# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561f00 (SocialFeaturesHost_GetNumberOfWallPosts)
Paired Ghidra pseudocode: 10561F00_SocialFeaturesHost_GetNumberOfWallPosts.c
Window: [0x10561f00, 0x10561f20) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561f20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561f00: 8b 44 24 08 8b 4c 24 04 50 51 e8 f1 bc 2a 00 83
10561f10: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10561f00 <.text+0x560f00>:
10561f00:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10561f04:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10561f08:	50                                              	push   eax
10561f09:	51                                              	push   ecx
10561f0a:	e8 f1 bc 2a 00                                  	call   0x1080dc00
10561f0f:	83 c4 08                                        	add    esp,0x8
10561f12:	c3                                              	ret
10561f13:	cc                                              	int3
10561f14:	cc                                              	int3
10561f15:	cc                                              	int3
10561f16:	cc                                              	int3
10561f17:	cc                                              	int3
10561f18:	cc                                              	int3
10561f19:	cc                                              	int3
10561f1a:	cc                                              	int3
10561f1b:	cc                                              	int3
10561f1c:	cc                                              	int3
10561f1d:	cc                                              	int3
10561f1e:	cc                                              	int3
10561f1f:	cc                                              	int3
