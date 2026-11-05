# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105621d0 (SocialFeaturesHost_GetNumberOfCommentLikes)
Paired Ghidra pseudocode: 105621D0_SocialFeaturesHost_GetNumberOfCommentLikes.c
Window: [0x105621d0, 0x10562200) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562200
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105621d0: 8b 44 24 18 8b 4c 24 14 8b 54 24 10 50 8b 44 24
105621e0: 10 51 8b 4c 24 10 52 8b 54 24 10 50 51 52 e8 9d
105621f0: c0 2a 00 83 c4 18 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105621d0 <.text+0x5611d0>:
105621d0:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
105621d4:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
105621d8:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
105621dc:	50                                              	push   eax
105621dd:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
105621e1:	51                                              	push   ecx
105621e2:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
105621e6:	52                                              	push   edx
105621e7:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
105621eb:	50                                              	push   eax
105621ec:	51                                              	push   ecx
105621ed:	52                                              	push   edx
105621ee:	e8 9d c0 2a 00                                  	call   0x1080e290
105621f3:	83 c4 18                                        	add    esp,0x18
105621f6:	c3                                              	ret
105621f7:	cc                                              	int3
105621f8:	cc                                              	int3
105621f9:	cc                                              	int3
105621fa:	cc                                              	int3
105621fb:	cc                                              	int3
105621fc:	cc                                              	int3
105621fd:	cc                                              	int3
105621fe:	cc                                              	int3
105621ff:	cc                                              	int3
