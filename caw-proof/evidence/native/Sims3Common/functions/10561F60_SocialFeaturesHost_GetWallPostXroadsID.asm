# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561f60 (SocialFeaturesHost_GetWallPostXroadsID)
Paired Ghidra pseudocode: 10561F60_SocialFeaturesHost_GetWallPostXroadsID.c
Window: [0x10561f60, 0x10561f80) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561f80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561f60: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
10561f70: 5c bd 2a 00 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10561f60 <.text+0x560f60>:
10561f60:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10561f64:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10561f68:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10561f6c:	50                                              	push   eax
10561f6d:	51                                              	push   ecx
10561f6e:	52                                              	push   edx
10561f6f:	e8 5c bd 2a 00                                  	call   0x1080dcd0
10561f74:	83 c4 0c                                        	add    esp,0xc
10561f77:	c3                                              	ret
10561f78:	cc                                              	int3
10561f79:	cc                                              	int3
10561f7a:	cc                                              	int3
10561f7b:	cc                                              	int3
10561f7c:	cc                                              	int3
10561f7d:	cc                                              	int3
10561f7e:	cc                                              	int3
10561f7f:	cc                                              	int3
