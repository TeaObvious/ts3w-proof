# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562750 (SocialFeaturesHost_GetLatestStatusUpdate)
Paired Ghidra pseudocode: 10562750_SocialFeaturesHost_GetLatestStatusUpdate.c
Window: [0x10562750, 0x10562770) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562770
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562750: 8b 44 24 08 8b 4c 24 04 50 51 e8 d1 c9 2a 00 83
10562760: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562750 <.text+0x561750>:
10562750:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10562754:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10562758:	50                                              	push   eax
10562759:	51                                              	push   ecx
1056275a:	e8 d1 c9 2a 00                                  	call   0x1080f130
1056275f:	83 c4 08                                        	add    esp,0x8
10562762:	c3                                              	ret
10562763:	cc                                              	int3
10562764:	cc                                              	int3
10562765:	cc                                              	int3
10562766:	cc                                              	int3
10562767:	cc                                              	int3
10562768:	cc                                              	int3
10562769:	cc                                              	int3
1056276a:	cc                                              	int3
1056276b:	cc                                              	int3
1056276c:	cc                                              	int3
1056276d:	cc                                              	int3
1056276e:	cc                                              	int3
1056276f:	cc                                              	int3
