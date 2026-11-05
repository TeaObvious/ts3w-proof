# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561db0 (SocialFeaturesHost_BlockFriend)
Paired Ghidra pseudocode: 10561DB0_SocialFeaturesHost_BlockFriend.c
Window: [0x10561db0, 0x10561dd0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561dd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561db0: 8b 44 24 08 8b 4c 24 04 50 51 e8 b1 bb 2a 00 83
10561dc0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10561db0 <.text+0x560db0>:
10561db0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10561db4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10561db8:	50                                              	push   eax
10561db9:	51                                              	push   ecx
10561dba:	e8 b1 bb 2a 00                                  	call   0x1080d970
10561dbf:	83 c4 08                                        	add    esp,0x8
10561dc2:	c3                                              	ret
10561dc3:	cc                                              	int3
10561dc4:	cc                                              	int3
10561dc5:	cc                                              	int3
10561dc6:	cc                                              	int3
10561dc7:	cc                                              	int3
10561dc8:	cc                                              	int3
10561dc9:	cc                                              	int3
10561dca:	cc                                              	int3
10561dcb:	cc                                              	int3
10561dcc:	cc                                              	int3
10561dcd:	cc                                              	int3
10561dce:	cc                                              	int3
10561dcf:	cc                                              	int3
