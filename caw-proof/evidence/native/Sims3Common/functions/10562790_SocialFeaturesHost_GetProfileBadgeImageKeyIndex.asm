# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562790 (SocialFeaturesHost_GetProfileBadgeImageKeyIndex)
Paired Ghidra pseudocode: 10562790_SocialFeaturesHost_GetProfileBadgeImageKeyIndex.c
Window: [0x10562790, 0x105627d0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x105627d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562790: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 83 ec 10 50
105627a0: 51 52 8d 44 24 0c 50 e8 94 de 2a 00 8b 4c 24 24
105627b0: 8b 10 89 11 8b 50 04 89 51 04 8b 50 08 8b 40 0c
105627c0: 89 51 08 89 41 0c 8b c1 83 c4 20 c3 cc cc cc cc

LINEAR DISASSEMBLY
10562790 <.text+0x561790>:
10562790:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10562794:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10562798:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1056279c:	83 ec 10                                        	sub    esp,0x10
1056279f:	50                                              	push   eax
105627a0:	51                                              	push   ecx
105627a1:	52                                              	push   edx
105627a2:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
105627a6:	50                                              	push   eax
105627a7:	e8 94 de 2a 00                                  	call   0x10810640
105627ac:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
105627b0:	8b 10                                           	mov    edx,DWORD PTR [eax]
105627b2:	89 11                                           	mov    DWORD PTR [ecx],edx
105627b4:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
105627b7:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
105627ba:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
105627bd:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
105627c0:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
105627c3:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
105627c6:	8b c1                                           	mov    eax,ecx
105627c8:	83 c4 20                                        	add    esp,0x20
105627cb:	c3                                              	ret
105627cc:	cc                                              	int3
105627cd:	cc                                              	int3
105627ce:	cc                                              	int3
105627cf:	cc                                              	int3
