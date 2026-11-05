# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561ea0 (SocialFeaturesHost_GetWall)
Paired Ghidra pseudocode: 10561EA0_SocialFeaturesHost_GetWall.c
Window: [0x10561ea0, 0x10561ed0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561ed0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561ea0: 8b 44 24 18 8b 4c 24 14 8b 54 24 10 50 8b 44 24
10561eb0: 10 51 8b 4c 24 10 52 8b 54 24 10 50 51 52 e8 9d
10561ec0: bc 2a 00 83 c4 18 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10561ea0 <.text+0x560ea0>:
10561ea0:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10561ea4:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10561ea8:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10561eac:	50                                              	push   eax
10561ead:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10561eb1:	51                                              	push   ecx
10561eb2:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10561eb6:	52                                              	push   edx
10561eb7:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10561ebb:	50                                              	push   eax
10561ebc:	51                                              	push   ecx
10561ebd:	52                                              	push   edx
10561ebe:	e8 9d bc 2a 00                                  	call   0x1080db60
10561ec3:	83 c4 18                                        	add    esp,0x18
10561ec6:	c3                                              	ret
10561ec7:	cc                                              	int3
10561ec8:	cc                                              	int3
10561ec9:	cc                                              	int3
10561eca:	cc                                              	int3
10561ecb:	cc                                              	int3
10561ecc:	cc                                              	int3
10561ecd:	cc                                              	int3
10561ece:	cc                                              	int3
10561ecf:	cc                                              	int3
