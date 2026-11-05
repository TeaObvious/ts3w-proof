# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562860 (SocialFeaturesHost_GetEarnedBadges)
Paired Ghidra pseudocode: 10562860_SocialFeaturesHost_GetEarnedBadges.c
Window: [0x10562860, 0x10562890) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562890
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562860: 8b 44 24 14 8b 4c 24 10 8b 54 24 0c 50 8b 44 24
10562870: 0c 51 8b 4c 24 0c 52 50 51 e8 d2 d1 2a 00 83 c4
10562880: 14 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562860 <.text+0x561860>:
10562860:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10562864:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10562868:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1056286c:	50                                              	push   eax
1056286d:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10562871:	51                                              	push   ecx
10562872:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10562876:	52                                              	push   edx
10562877:	50                                              	push   eax
10562878:	51                                              	push   ecx
10562879:	e8 d2 d1 2a 00                                  	call   0x1080fa50
1056287e:	83 c4 14                                        	add    esp,0x14
10562881:	c3                                              	ret
10562882:	cc                                              	int3
10562883:	cc                                              	int3
10562884:	cc                                              	int3
10562885:	cc                                              	int3
10562886:	cc                                              	int3
10562887:	cc                                              	int3
10562888:	cc                                              	int3
10562889:	cc                                              	int3
1056288a:	cc                                              	int3
1056288b:	cc                                              	int3
1056288c:	cc                                              	int3
1056288d:	cc                                              	int3
1056288e:	cc                                              	int3
1056288f:	cc                                              	int3
