# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561c50 (SocialFeaturesHost_FriendsGetSearchResultImageKey)
Paired Ghidra pseudocode: 10561C50_SocialFeaturesHost_FriendsGetSearchResultImageKey.c
Window: [0x10561c50, 0x10561c90) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561c90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561c50: 8b 44 24 08 83 ec 10 50 8d 4c 24 04 51 e8 be b9
10561c60: 2a 00 8b 4c 24 1c 8b 10 89 11 8b 50 04 89 51 04
10561c70: 8b 50 08 8b 40 0c 89 51 08 89 41 0c 8b c1 83 c4
10561c80: 18 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10561c50 <.text+0x560c50>:
10561c50:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10561c54:	83 ec 10                                        	sub    esp,0x10
10561c57:	50                                              	push   eax
10561c58:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
10561c5c:	51                                              	push   ecx
10561c5d:	e8 be b9 2a 00                                  	call   0x1080d620
10561c62:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10561c66:	8b 10                                           	mov    edx,DWORD PTR [eax]
10561c68:	89 11                                           	mov    DWORD PTR [ecx],edx
10561c6a:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10561c6d:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
10561c70:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10561c73:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
10561c76:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
10561c79:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
10561c7c:	8b c1                                           	mov    eax,ecx
10561c7e:	83 c4 18                                        	add    esp,0x18
10561c81:	c3                                              	ret
10561c82:	cc                                              	int3
10561c83:	cc                                              	int3
10561c84:	cc                                              	int3
10561c85:	cc                                              	int3
10561c86:	cc                                              	int3
10561c87:	cc                                              	int3
10561c88:	cc                                              	int3
10561c89:	cc                                              	int3
10561c8a:	cc                                              	int3
10561c8b:	cc                                              	int3
10561c8c:	cc                                              	int3
10561c8d:	cc                                              	int3
10561c8e:	cc                                              	int3
10561c8f:	cc                                              	int3
