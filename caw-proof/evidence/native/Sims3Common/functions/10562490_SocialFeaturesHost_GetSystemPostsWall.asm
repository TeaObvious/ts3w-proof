# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562490 (SocialFeaturesHost_GetSystemPostsWall)
Paired Ghidra pseudocode: 10562490_SocialFeaturesHost_GetSystemPostsWall.c
Window: [0x10562490, 0x105624c0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x105624c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562490: 8b 44 24 14 8b 4c 24 10 8b 54 24 0c 50 8b 44 24
105624a0: 0c 51 8b 4c 24 0c 52 50 51 e8 82 c6 2a 00 83 c4
105624b0: 14 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562490 <.text+0x561490>:
10562490:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10562494:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10562498:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1056249c:	50                                              	push   eax
1056249d:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
105624a1:	51                                              	push   ecx
105624a2:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
105624a6:	52                                              	push   edx
105624a7:	50                                              	push   eax
105624a8:	51                                              	push   ecx
105624a9:	e8 82 c6 2a 00                                  	call   0x1080eb30
105624ae:	83 c4 14                                        	add    esp,0x14
105624b1:	c3                                              	ret
105624b2:	cc                                              	int3
105624b3:	cc                                              	int3
105624b4:	cc                                              	int3
105624b5:	cc                                              	int3
105624b6:	cc                                              	int3
105624b7:	cc                                              	int3
105624b8:	cc                                              	int3
105624b9:	cc                                              	int3
105624ba:	cc                                              	int3
105624bb:	cc                                              	int3
105624bc:	cc                                              	int3
105624bd:	cc                                              	int3
105624be:	cc                                              	int3
105624bf:	cc                                              	int3
