# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561ff0 (SocialFeaturesHost_GetWallPostImage)
Paired Ghidra pseudocode: 10561FF0_SocialFeaturesHost_GetWallPostImage.c
Window: [0x10561ff0, 0x10562040) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562040
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561ff0: 8b 44 24 14 8b 4c 24 10 8b 54 24 0c 83 ec 10 50
10562000: 8b 44 24 1c 51 52 50 8d 4c 24 10 51 e8 6f be 2a
10562010: 00 8b 4c 24 28 8b 10 89 11 8b 50 04 89 51 04 8b
10562020: 50 08 8b 40 0c 89 51 08 89 41 0c 8b c1 83 c4 24
10562030: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10561ff0 <.text+0x560ff0>:
10561ff0:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10561ff4:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10561ff8:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10561ffc:	83 ec 10                                        	sub    esp,0x10
10561fff:	50                                              	push   eax
10562000:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
10562004:	51                                              	push   ecx
10562005:	52                                              	push   edx
10562006:	50                                              	push   eax
10562007:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
1056200b:	51                                              	push   ecx
1056200c:	e8 6f be 2a 00                                  	call   0x1080de80
10562011:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
10562015:	8b 10                                           	mov    edx,DWORD PTR [eax]
10562017:	89 11                                           	mov    DWORD PTR [ecx],edx
10562019:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1056201c:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
1056201f:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10562022:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
10562025:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
10562028:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
1056202b:	8b c1                                           	mov    eax,ecx
1056202d:	83 c4 24                                        	add    esp,0x24
10562030:	c3                                              	ret
10562031:	cc                                              	int3
10562032:	cc                                              	int3
10562033:	cc                                              	int3
10562034:	cc                                              	int3
10562035:	cc                                              	int3
10562036:	cc                                              	int3
10562037:	cc                                              	int3
10562038:	cc                                              	int3
10562039:	cc                                              	int3
1056203a:	cc                                              	int3
1056203b:	cc                                              	int3
1056203c:	cc                                              	int3
1056203d:	cc                                              	int3
1056203e:	cc                                              	int3
1056203f:	cc                                              	int3
