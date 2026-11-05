# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105625f0 (SocialFeaturesHost_LikeSystemPost)
Paired Ghidra pseudocode: 105625F0_SocialFeaturesHost_LikeSystemPost.c
Window: [0x105625f0, 0x10562610) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562610
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105625f0: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
10562600: 08 51 52 50 e8 77 c8 2a 00 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
105625f0 <.text+0x5615f0>:
105625f0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
105625f4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
105625f8:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
105625fc:	50                                              	push   eax
105625fd:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10562601:	51                                              	push   ecx
10562602:	52                                              	push   edx
10562603:	50                                              	push   eax
10562604:	e8 77 c8 2a 00                                  	call   0x1080ee80
10562609:	83 c4 10                                        	add    esp,0x10
1056260c:	c3                                              	ret
1056260d:	cc                                              	int3
1056260e:	cc                                              	int3
1056260f:	cc                                              	int3
