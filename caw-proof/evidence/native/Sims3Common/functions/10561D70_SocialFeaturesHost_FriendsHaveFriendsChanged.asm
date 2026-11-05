# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561d70 (SocialFeaturesHost_FriendsHaveFriendsChanged)
Paired Ghidra pseudocode: 10561D70_SocialFeaturesHost_FriendsHaveFriendsChanged.c
Window: [0x10561d70, 0x10561d90) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561d90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561d70: 8b 44 24 08 8b 4c 24 04 50 51 e8 71 bb 2a 00 83
10561d80: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10561d70 <.text+0x560d70>:
10561d70:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10561d74:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10561d78:	50                                              	push   eax
10561d79:	51                                              	push   ecx
10561d7a:	e8 71 bb 2a 00                                  	call   0x1080d8f0
10561d7f:	83 c4 08                                        	add    esp,0x8
10561d82:	c3                                              	ret
10561d83:	cc                                              	int3
10561d84:	cc                                              	int3
10561d85:	cc                                              	int3
10561d86:	cc                                              	int3
10561d87:	cc                                              	int3
10561d88:	cc                                              	int3
10561d89:	cc                                              	int3
10561d8a:	cc                                              	int3
10561d8b:	cc                                              	int3
10561d8c:	cc                                              	int3
10561d8d:	cc                                              	int3
10561d8e:	cc                                              	int3
10561d8f:	cc                                              	int3
