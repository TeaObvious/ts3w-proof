# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105621a0 (SocialFeaturesHost_LikeComment)
Paired Ghidra pseudocode: 105621A0_SocialFeaturesHost_LikeComment.c
Window: [0x105621a0, 0x105621d0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x105621d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105621a0: 8b 44 24 18 8b 4c 24 14 8b 54 24 10 50 8b 44 24
105621b0: 10 51 8b 4c 24 10 52 8b 54 24 10 50 51 52 e8 7d
105621c0: c0 2a 00 83 c4 18 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105621a0 <.text+0x5611a0>:
105621a0:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
105621a4:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
105621a8:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
105621ac:	50                                              	push   eax
105621ad:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
105621b1:	51                                              	push   ecx
105621b2:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
105621b6:	52                                              	push   edx
105621b7:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
105621bb:	50                                              	push   eax
105621bc:	51                                              	push   ecx
105621bd:	52                                              	push   edx
105621be:	e8 7d c0 2a 00                                  	call   0x1080e240
105621c3:	83 c4 18                                        	add    esp,0x18
105621c6:	c3                                              	ret
105621c7:	cc                                              	int3
105621c8:	cc                                              	int3
105621c9:	cc                                              	int3
105621ca:	cc                                              	int3
105621cb:	cc                                              	int3
105621cc:	cc                                              	int3
105621cd:	cc                                              	int3
105621ce:	cc                                              	int3
105621cf:	cc                                              	int3
