# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562040 (SocialFeaturesHost_GetWallPostIsPostToMyWall)
Paired Ghidra pseudocode: 10562040_SocialFeaturesHost_GetWallPostIsPostToMyWall.c
Window: [0x10562040, 0x10562060) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562060
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562040: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
10562050: 08 51 52 50 e8 f7 be 2a 00 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
10562040 <.text+0x561040>:
10562040:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10562044:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10562048:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1056204c:	50                                              	push   eax
1056204d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10562051:	51                                              	push   ecx
10562052:	52                                              	push   edx
10562053:	50                                              	push   eax
10562054:	e8 f7 be 2a 00                                  	call   0x1080df50
10562059:	83 c4 10                                        	add    esp,0x10
1056205c:	c3                                              	ret
1056205d:	cc                                              	int3
1056205e:	cc                                              	int3
1056205f:	cc                                              	int3
