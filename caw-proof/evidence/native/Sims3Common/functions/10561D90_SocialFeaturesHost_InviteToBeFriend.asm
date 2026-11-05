# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561d90 (SocialFeaturesHost_InviteToBeFriend)
Paired Ghidra pseudocode: 10561D90_SocialFeaturesHost_InviteToBeFriend.c
Window: [0x10561d90, 0x10561db0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561db0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561d90: 8b 44 24 08 8b 4c 24 04 50 51 e8 91 bb 2a 00 83
10561da0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10561d90 <.text+0x560d90>:
10561d90:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10561d94:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10561d98:	50                                              	push   eax
10561d99:	51                                              	push   ecx
10561d9a:	e8 91 bb 2a 00                                  	call   0x1080d930
10561d9f:	83 c4 08                                        	add    esp,0x8
10561da2:	c3                                              	ret
10561da3:	cc                                              	int3
10561da4:	cc                                              	int3
10561da5:	cc                                              	int3
10561da6:	cc                                              	int3
10561da7:	cc                                              	int3
10561da8:	cc                                              	int3
10561da9:	cc                                              	int3
10561daa:	cc                                              	int3
10561dab:	cc                                              	int3
10561dac:	cc                                              	int3
10561dad:	cc                                              	int3
10561dae:	cc                                              	int3
10561daf:	cc                                              	int3
