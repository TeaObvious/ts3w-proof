# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561f20 (SocialFeaturesHost_GetNumberOfGiftPosts)
Paired Ghidra pseudocode: 10561F20_SocialFeaturesHost_GetNumberOfGiftPosts.c
Window: [0x10561f20, 0x10561f40) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561f40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561f20: 8b 44 24 08 8b 4c 24 04 50 51 e8 11 bd 2a 00 83
10561f30: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10561f20 <.text+0x560f20>:
10561f20:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10561f24:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10561f28:	50                                              	push   eax
10561f29:	51                                              	push   ecx
10561f2a:	e8 11 bd 2a 00                                  	call   0x1080dc40
10561f2f:	83 c4 08                                        	add    esp,0x8
10561f32:	c3                                              	ret
10561f33:	cc                                              	int3
10561f34:	cc                                              	int3
10561f35:	cc                                              	int3
10561f36:	cc                                              	int3
10561f37:	cc                                              	int3
10561f38:	cc                                              	int3
10561f39:	cc                                              	int3
10561f3a:	cc                                              	int3
10561f3b:	cc                                              	int3
10561f3c:	cc                                              	int3
10561f3d:	cc                                              	int3
10561f3e:	cc                                              	int3
10561f3f:	cc                                              	int3
