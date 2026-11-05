# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561e10 (SocialFeaturesHost_RejectFriendInvite)
Paired Ghidra pseudocode: 10561E10_SocialFeaturesHost_RejectFriendInvite.c
Window: [0x10561e10, 0x10561e30) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561e30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561e10: 8b 44 24 08 8b 4c 24 04 50 51 e8 11 bc 2a 00 83
10561e20: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10561e10 <.text+0x560e10>:
10561e10:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10561e14:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10561e18:	50                                              	push   eax
10561e19:	51                                              	push   ecx
10561e1a:	e8 11 bc 2a 00                                  	call   0x1080da30
10561e1f:	83 c4 08                                        	add    esp,0x8
10561e22:	c3                                              	ret
10561e23:	cc                                              	int3
10561e24:	cc                                              	int3
10561e25:	cc                                              	int3
10561e26:	cc                                              	int3
10561e27:	cc                                              	int3
10561e28:	cc                                              	int3
10561e29:	cc                                              	int3
10561e2a:	cc                                              	int3
10561e2b:	cc                                              	int3
10561e2c:	cc                                              	int3
10561e2d:	cc                                              	int3
10561e2e:	cc                                              	int3
10561e2f:	cc                                              	int3
