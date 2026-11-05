# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10563e40 (SocialFeaturesHost_GetBadgeGrayImageKey)
Paired Ghidra pseudocode: 10563E40_SocialFeaturesHost_GetBadgeGrayImageKey.c
Window: [0x10563e40, 0x10563e80) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10563e80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10563e40: 8b 44 24 08 83 ec 10 50 8d 4c 24 04 51 e8 9e fa
10563e50: ff ff 8b 4c 24 1c 8b 10 89 11 8b 50 04 89 51 04
10563e60: 8b 50 08 8b 40 0c 89 51 08 89 41 0c 8b c1 83 c4
10563e70: 18 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10563e40 <.text+0x562e40>:
10563e40:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10563e44:	83 ec 10                                        	sub    esp,0x10
10563e47:	50                                              	push   eax
10563e48:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
10563e4c:	51                                              	push   ecx
10563e4d:	e8 9e fa ff ff                                  	call   0x105638f0
10563e52:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10563e56:	8b 10                                           	mov    edx,DWORD PTR [eax]
10563e58:	89 11                                           	mov    DWORD PTR [ecx],edx
10563e5a:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10563e5d:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
10563e60:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10563e63:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
10563e66:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
10563e69:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
10563e6c:	8b c1                                           	mov    eax,ecx
10563e6e:	83 c4 18                                        	add    esp,0x18
10563e71:	c3                                              	ret
10563e72:	cc                                              	int3
10563e73:	cc                                              	int3
10563e74:	cc                                              	int3
10563e75:	cc                                              	int3
10563e76:	cc                                              	int3
10563e77:	cc                                              	int3
10563e78:	cc                                              	int3
10563e79:	cc                                              	int3
10563e7a:	cc                                              	int3
10563e7b:	cc                                              	int3
10563e7c:	cc                                              	int3
10563e7d:	cc                                              	int3
10563e7e:	cc                                              	int3
10563e7f:	cc                                              	int3
