# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562060 (SocialFeaturesHost_GetWallPostUserLiked)
Paired Ghidra pseudocode: 10562060_SocialFeaturesHost_GetWallPostUserLiked.c
Window: [0x10562060, 0x10562080) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562080
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562060: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
10562070: 08 51 52 50 e8 17 bf 2a 00 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
10562060 <.text+0x561060>:
10562060:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10562064:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10562068:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1056206c:	50                                              	push   eax
1056206d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10562071:	51                                              	push   ecx
10562072:	52                                              	push   edx
10562073:	50                                              	push   eax
10562074:	e8 17 bf 2a 00                                  	call   0x1080df90
10562079:	83 c4 10                                        	add    esp,0x10
1056207c:	c3                                              	ret
1056207d:	cc                                              	int3
1056207e:	cc                                              	int3
1056207f:	cc                                              	int3
