# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10563dc0 (SocialFeaturesHost_GetProfileBadgeImageKey)
Paired Ghidra pseudocode: 10563DC0_SocialFeaturesHost_GetProfileBadgeImageKey.c
Window: [0x10563dc0, 0x10563e00) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10563e00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10563dc0: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 83 ec 10 50
10563dd0: 51 52 8d 44 24 0c 50 e8 94 f8 ff ff 8b 4c 24 24
10563de0: 8b 10 89 11 8b 50 04 89 51 04 8b 50 08 8b 40 0c
10563df0: 89 51 08 89 41 0c 8b c1 83 c4 20 c3 cc cc cc cc

LINEAR DISASSEMBLY
10563dc0 <.text+0x562dc0>:
10563dc0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10563dc4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10563dc8:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10563dcc:	83 ec 10                                        	sub    esp,0x10
10563dcf:	50                                              	push   eax
10563dd0:	51                                              	push   ecx
10563dd1:	52                                              	push   edx
10563dd2:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
10563dd6:	50                                              	push   eax
10563dd7:	e8 94 f8 ff ff                                  	call   0x10563670
10563ddc:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10563de0:	8b 10                                           	mov    edx,DWORD PTR [eax]
10563de2:	89 11                                           	mov    DWORD PTR [ecx],edx
10563de4:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10563de7:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
10563dea:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10563ded:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
10563df0:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
10563df3:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
10563df6:	8b c1                                           	mov    eax,ecx
10563df8:	83 c4 20                                        	add    esp,0x20
10563dfb:	c3                                              	ret
10563dfc:	cc                                              	int3
10563dfd:	cc                                              	int3
10563dfe:	cc                                              	int3
10563dff:	cc                                              	int3
