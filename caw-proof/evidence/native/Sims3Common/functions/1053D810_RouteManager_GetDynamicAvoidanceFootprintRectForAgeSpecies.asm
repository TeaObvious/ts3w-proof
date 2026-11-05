# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053d810 (RouteManager_GetDynamicAvoidanceFootprintRectForAgeSpecies)
Paired Ghidra pseudocode: 1053D810_RouteManager_GetDynamicAvoidanceFootprintRectForAgeSpecies.c
Window: [0x1053d810, 0x1053d850) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053d850
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053d810: 8b 44 24 08 83 ec 10 50 8d 4c 24 04 51 e8 be ea
1053d820: ff ff 8b 4c 24 1c 8b 10 89 11 8b 50 04 89 51 04
1053d830: 8b 50 08 8b 40 0c 89 51 08 89 41 0c 8b c1 83 c4
1053d840: 18 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1053d810 <.text+0x53c810>:
1053d810:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1053d814:	83 ec 10                                        	sub    esp,0x10
1053d817:	50                                              	push   eax
1053d818:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
1053d81c:	51                                              	push   ecx
1053d81d:	e8 be ea ff ff                                  	call   0x1053c2e0
1053d822:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1053d826:	8b 10                                           	mov    edx,DWORD PTR [eax]
1053d828:	89 11                                           	mov    DWORD PTR [ecx],edx
1053d82a:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1053d82d:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
1053d830:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1053d833:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
1053d836:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
1053d839:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
1053d83c:	8b c1                                           	mov    eax,ecx
1053d83e:	83 c4 18                                        	add    esp,0x18
1053d841:	c3                                              	ret
1053d842:	cc                                              	int3
1053d843:	cc                                              	int3
1053d844:	cc                                              	int3
1053d845:	cc                                              	int3
1053d846:	cc                                              	int3
1053d847:	cc                                              	int3
1053d848:	cc                                              	int3
1053d849:	cc                                              	int3
1053d84a:	cc                                              	int3
1053d84b:	cc                                              	int3
1053d84c:	cc                                              	int3
1053d84d:	cc                                              	int3
1053d84e:	cc                                              	int3
1053d84f:	cc                                              	int3
