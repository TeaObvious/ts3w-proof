# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561df0 (SocialFeaturesHost_AcceptFriendInvite)
Paired Ghidra pseudocode: 10561DF0_SocialFeaturesHost_AcceptFriendInvite.c
Window: [0x10561df0, 0x10561e10) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561e10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561df0: 8b 44 24 08 8b 4c 24 04 50 51 e8 f1 bb 2a 00 83
10561e00: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10561df0 <.text+0x560df0>:
10561df0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10561df4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10561df8:	50                                              	push   eax
10561df9:	51                                              	push   ecx
10561dfa:	e8 f1 bb 2a 00                                  	call   0x1080d9f0
10561dff:	83 c4 08                                        	add    esp,0x8
10561e02:	c3                                              	ret
10561e03:	cc                                              	int3
10561e04:	cc                                              	int3
10561e05:	cc                                              	int3
10561e06:	cc                                              	int3
10561e07:	cc                                              	int3
10561e08:	cc                                              	int3
10561e09:	cc                                              	int3
10561e0a:	cc                                              	int3
10561e0b:	cc                                              	int3
10561e0c:	cc                                              	int3
10561e0d:	cc                                              	int3
10561e0e:	cc                                              	int3
10561e0f:	cc                                              	int3
