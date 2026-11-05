# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561f80 (SocialFeaturesHost_GetWallPostType)
Paired Ghidra pseudocode: 10561F80_SocialFeaturesHost_GetWallPostType.c
Window: [0x10561f80, 0x10561fa0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561fa0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561f80: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
10561f90: 08 51 52 50 e8 77 bd 2a 00 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
10561f80 <.text+0x560f80>:
10561f80:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10561f84:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10561f88:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10561f8c:	50                                              	push   eax
10561f8d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10561f91:	51                                              	push   ecx
10561f92:	52                                              	push   edx
10561f93:	50                                              	push   eax
10561f94:	e8 77 bd 2a 00                                  	call   0x1080dd10
10561f99:	83 c4 10                                        	add    esp,0x10
10561f9c:	c3                                              	ret
10561f9d:	cc                                              	int3
10561f9e:	cc                                              	int3
10561f9f:	cc                                              	int3
