# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561dd0 (SocialFeaturesHost_UnblockFriend)
Paired Ghidra pseudocode: 10561DD0_SocialFeaturesHost_UnblockFriend.c
Window: [0x10561dd0, 0x10561df0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561df0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561dd0: 8b 44 24 08 8b 4c 24 04 50 51 e8 d1 bb 2a 00 83
10561de0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10561dd0 <.text+0x560dd0>:
10561dd0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10561dd4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10561dd8:	50                                              	push   eax
10561dd9:	51                                              	push   ecx
10561dda:	e8 d1 bb 2a 00                                  	call   0x1080d9b0
10561ddf:	83 c4 08                                        	add    esp,0x8
10561de2:	c3                                              	ret
10561de3:	cc                                              	int3
10561de4:	cc                                              	int3
10561de5:	cc                                              	int3
10561de6:	cc                                              	int3
10561de7:	cc                                              	int3
10561de8:	cc                                              	int3
10561de9:	cc                                              	int3
10561dea:	cc                                              	int3
10561deb:	cc                                              	int3
10561dec:	cc                                              	int3
10561ded:	cc                                              	int3
10561dee:	cc                                              	int3
10561def:	cc                                              	int3
