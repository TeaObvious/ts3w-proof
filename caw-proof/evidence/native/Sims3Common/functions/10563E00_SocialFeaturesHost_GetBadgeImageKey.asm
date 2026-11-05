# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10563e00 (SocialFeaturesHost_GetBadgeImageKey)
Paired Ghidra pseudocode: 10563E00_SocialFeaturesHost_GetBadgeImageKey.c
Window: [0x10563e00, 0x10563e40) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10563e40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10563e00: 8b 44 24 08 83 ec 10 50 8d 4c 24 04 51 e8 fe f9
10563e10: ff ff 8b 4c 24 1c 8b 10 89 11 8b 50 04 89 51 04
10563e20: 8b 50 08 8b 40 0c 89 51 08 89 41 0c 8b c1 83 c4
10563e30: 18 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10563e00 <.text+0x562e00>:
10563e00:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10563e04:	83 ec 10                                        	sub    esp,0x10
10563e07:	50                                              	push   eax
10563e08:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
10563e0c:	51                                              	push   ecx
10563e0d:	e8 fe f9 ff ff                                  	call   0x10563810
10563e12:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10563e16:	8b 10                                           	mov    edx,DWORD PTR [eax]
10563e18:	89 11                                           	mov    DWORD PTR [ecx],edx
10563e1a:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10563e1d:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
10563e20:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10563e23:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
10563e26:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
10563e29:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
10563e2c:	8b c1                                           	mov    eax,ecx
10563e2e:	83 c4 18                                        	add    esp,0x18
10563e31:	c3                                              	ret
10563e32:	cc                                              	int3
10563e33:	cc                                              	int3
10563e34:	cc                                              	int3
10563e35:	cc                                              	int3
10563e36:	cc                                              	int3
10563e37:	cc                                              	int3
10563e38:	cc                                              	int3
10563e39:	cc                                              	int3
10563e3a:	cc                                              	int3
10563e3b:	cc                                              	int3
10563e3c:	cc                                              	int3
10563e3d:	cc                                              	int3
10563e3e:	cc                                              	int3
10563e3f:	cc                                              	int3
