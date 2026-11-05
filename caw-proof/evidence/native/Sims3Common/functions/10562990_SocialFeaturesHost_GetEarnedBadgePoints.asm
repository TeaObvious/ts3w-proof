# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562990 (SocialFeaturesHost_GetEarnedBadgePoints)
Paired Ghidra pseudocode: 10562990_SocialFeaturesHost_GetEarnedBadgePoints.c
Window: [0x10562990, 0x105629b0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105629b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562990: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
105629a0: dc d3 2a 00 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562990 <.text+0x561990>:
10562990:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10562994:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10562998:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1056299c:	50                                              	push   eax
1056299d:	51                                              	push   ecx
1056299e:	52                                              	push   edx
1056299f:	e8 dc d3 2a 00                                  	call   0x1080fd80
105629a4:	83 c4 0c                                        	add    esp,0xc
105629a7:	c3                                              	ret
105629a8:	cc                                              	int3
105629a9:	cc                                              	int3
105629aa:	cc                                              	int3
105629ab:	cc                                              	int3
105629ac:	cc                                              	int3
105629ad:	cc                                              	int3
105629ae:	cc                                              	int3
105629af:	cc                                              	int3
