# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561ce0 (SocialFeaturesHost_FriendsGetFriendImage)
Paired Ghidra pseudocode: 10561CE0_SocialFeaturesHost_FriendsGetFriendImage.c
Window: [0x10561ce0, 0x10561d30) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561d30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561ce0: 8b 44 24 14 8b 4c 24 10 8b 54 24 0c 83 ec 10 50
10561cf0: 8b 44 24 1c 51 52 50 8d 4c 24 10 51 e8 df ba 2a
10561d00: 00 8b 4c 24 28 8b 10 89 11 8b 50 04 89 51 04 8b
10561d10: 50 08 8b 40 0c 89 51 08 89 41 0c 8b c1 83 c4 24
10561d20: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10561ce0 <.text+0x560ce0>:
10561ce0:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10561ce4:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10561ce8:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10561cec:	83 ec 10                                        	sub    esp,0x10
10561cef:	50                                              	push   eax
10561cf0:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
10561cf4:	51                                              	push   ecx
10561cf5:	52                                              	push   edx
10561cf6:	50                                              	push   eax
10561cf7:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10561cfb:	51                                              	push   ecx
10561cfc:	e8 df ba 2a 00                                  	call   0x1080d7e0
10561d01:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
10561d05:	8b 10                                           	mov    edx,DWORD PTR [eax]
10561d07:	89 11                                           	mov    DWORD PTR [ecx],edx
10561d09:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10561d0c:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
10561d0f:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10561d12:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
10561d15:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
10561d18:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
10561d1b:	8b c1                                           	mov    eax,ecx
10561d1d:	83 c4 24                                        	add    esp,0x24
10561d20:	c3                                              	ret
10561d21:	cc                                              	int3
10561d22:	cc                                              	int3
10561d23:	cc                                              	int3
10561d24:	cc                                              	int3
10561d25:	cc                                              	int3
10561d26:	cc                                              	int3
10561d27:	cc                                              	int3
10561d28:	cc                                              	int3
10561d29:	cc                                              	int3
10561d2a:	cc                                              	int3
10561d2b:	cc                                              	int3
10561d2c:	cc                                              	int3
10561d2d:	cc                                              	int3
10561d2e:	cc                                              	int3
10561d2f:	cc                                              	int3
