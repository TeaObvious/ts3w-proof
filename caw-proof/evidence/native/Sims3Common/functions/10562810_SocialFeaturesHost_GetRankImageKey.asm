# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562810 (SocialFeaturesHost_GetRankImageKey)
Paired Ghidra pseudocode: 10562810_SocialFeaturesHost_GetRankImageKey.c
Window: [0x10562810, 0x10562850) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562850
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562810: 8b 44 24 0c 8b 4c 24 08 83 ec 10 50 51 8d 54 24
10562820: 08 52 e8 69 cd 2a 00 8b 4c 24 20 8b 10 89 11 8b
10562830: 50 04 89 51 04 8b 50 08 8b 40 0c 89 51 08 89 41
10562840: 0c 8b c1 83 c4 1c c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562810 <.text+0x561810>:
10562810:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10562814:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10562818:	83 ec 10                                        	sub    esp,0x10
1056281b:	50                                              	push   eax
1056281c:	51                                              	push   ecx
1056281d:	8d 54 24 08                                     	lea    edx,[esp+0x8]
10562821:	52                                              	push   edx
10562822:	e8 69 cd 2a 00                                  	call   0x1080f590
10562827:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1056282b:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056282d:	89 11                                           	mov    DWORD PTR [ecx],edx
1056282f:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10562832:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
10562835:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10562838:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
1056283b:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
1056283e:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
10562841:	8b c1                                           	mov    eax,ecx
10562843:	83 c4 1c                                        	add    esp,0x1c
10562846:	c3                                              	ret
10562847:	cc                                              	int3
10562848:	cc                                              	int3
10562849:	cc                                              	int3
1056284a:	cc                                              	int3
1056284b:	cc                                              	int3
1056284c:	cc                                              	int3
1056284d:	cc                                              	int3
1056284e:	cc                                              	int3
1056284f:	cc                                              	int3
