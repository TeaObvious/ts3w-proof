# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561c00 (SocialFeaturesHost_GetFriends)
Paired Ghidra pseudocode: 10561C00_SocialFeaturesHost_GetFriends.c
Window: [0x10561c00, 0x10561c30) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561c30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561c00: 8b 44 24 1c 8b 4c 24 18 8b 54 24 14 50 8b 44 24
10561c10: 14 51 8b 4c 24 14 52 8b 54 24 14 50 8b 44 24 14
10561c20: 51 52 50 e8 a8 b8 2a 00 83 c4 1c c3 cc cc cc cc

LINEAR DISASSEMBLY
10561c00 <.text+0x560c00>:
10561c00:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
10561c04:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10561c08:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
10561c0c:	50                                              	push   eax
10561c0d:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10561c11:	51                                              	push   ecx
10561c12:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10561c16:	52                                              	push   edx
10561c17:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
10561c1b:	50                                              	push   eax
10561c1c:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10561c20:	51                                              	push   ecx
10561c21:	52                                              	push   edx
10561c22:	50                                              	push   eax
10561c23:	e8 a8 b8 2a 00                                  	call   0x1080d4d0
10561c28:	83 c4 1c                                        	add    esp,0x1c
10561c2b:	c3                                              	ret
10561c2c:	cc                                              	int3
10561c2d:	cc                                              	int3
10561c2e:	cc                                              	int3
10561c2f:	cc                                              	int3
