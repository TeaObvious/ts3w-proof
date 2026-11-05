# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105628f0 (SocialFeaturesHost_GetEarnedBadgeImageKey)
Paired Ghidra pseudocode: 105628F0_SocialFeaturesHost_GetEarnedBadgeImageKey.c
Window: [0x105628f0, 0x10562930) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562930
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105628f0: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 83 ec 10 50
10562900: 51 52 8d 44 24 0c 50 e8 24 df 2a 00 8b 4c 24 24
10562910: 8b 10 89 11 8b 50 04 89 51 04 8b 50 08 8b 40 0c
10562920: 89 51 08 89 41 0c 8b c1 83 c4 20 c3 cc cc cc cc

LINEAR DISASSEMBLY
105628f0 <.text+0x5618f0>:
105628f0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
105628f4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
105628f8:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
105628fc:	83 ec 10                                        	sub    esp,0x10
105628ff:	50                                              	push   eax
10562900:	51                                              	push   ecx
10562901:	52                                              	push   edx
10562902:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
10562906:	50                                              	push   eax
10562907:	e8 24 df 2a 00                                  	call   0x10810830
1056290c:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10562910:	8b 10                                           	mov    edx,DWORD PTR [eax]
10562912:	89 11                                           	mov    DWORD PTR [ecx],edx
10562914:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10562917:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
1056291a:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1056291d:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
10562920:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
10562923:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
10562926:	8b c1                                           	mov    eax,ecx
10562928:	83 c4 20                                        	add    esp,0x20
1056292b:	c3                                              	ret
1056292c:	cc                                              	int3
1056292d:	cc                                              	int3
1056292e:	cc                                              	int3
1056292f:	cc                                              	int3
