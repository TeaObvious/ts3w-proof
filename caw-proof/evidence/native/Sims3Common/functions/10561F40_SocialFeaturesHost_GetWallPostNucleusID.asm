# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561f40 (SocialFeaturesHost_GetWallPostNucleusID)
Paired Ghidra pseudocode: 10561F40_SocialFeaturesHost_GetWallPostNucleusID.c
Window: [0x10561f40, 0x10561f60) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561f60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561f40: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
10561f50: 08 51 52 50 e8 27 bd 2a 00 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
10561f40 <.text+0x560f40>:
10561f40:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10561f44:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10561f48:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10561f4c:	50                                              	push   eax
10561f4d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10561f51:	51                                              	push   ecx
10561f52:	52                                              	push   edx
10561f53:	50                                              	push   eax
10561f54:	e8 27 bd 2a 00                                  	call   0x1080dc80
10561f59:	83 c4 10                                        	add    esp,0x10
10561f5c:	c3                                              	ret
10561f5d:	cc                                              	int3
10561f5e:	cc                                              	int3
10561f5f:	cc                                              	int3
