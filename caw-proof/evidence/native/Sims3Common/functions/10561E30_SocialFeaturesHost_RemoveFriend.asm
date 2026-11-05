# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561e30 (SocialFeaturesHost_RemoveFriend)
Paired Ghidra pseudocode: 10561E30_SocialFeaturesHost_RemoveFriend.c
Window: [0x10561e30, 0x10561e50) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561e50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561e30: 8b 44 24 08 8b 4c 24 04 50 51 e8 31 bc 2a 00 83
10561e40: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10561e30 <.text+0x560e30>:
10561e30:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10561e34:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10561e38:	50                                              	push   eax
10561e39:	51                                              	push   ecx
10561e3a:	e8 31 bc 2a 00                                  	call   0x1080da70
10561e3f:	83 c4 08                                        	add    esp,0x8
10561e42:	c3                                              	ret
10561e43:	cc                                              	int3
10561e44:	cc                                              	int3
10561e45:	cc                                              	int3
10561e46:	cc                                              	int3
10561e47:	cc                                              	int3
10561e48:	cc                                              	int3
10561e49:	cc                                              	int3
10561e4a:	cc                                              	int3
10561e4b:	cc                                              	int3
10561e4c:	cc                                              	int3
10561e4d:	cc                                              	int3
10561e4e:	cc                                              	int3
10561e4f:	cc                                              	int3
