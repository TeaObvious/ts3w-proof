# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561e80 (SocialFeaturesHost_SetFriendSubscription)
Paired Ghidra pseudocode: 10561E80_SocialFeaturesHost_SetFriendSubscription.c
Window: [0x10561e80, 0x10561ea0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561ea0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561e80: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
10561e90: 8c bc 2a 00 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10561e80 <.text+0x560e80>:
10561e80:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10561e84:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10561e88:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10561e8c:	50                                              	push   eax
10561e8d:	51                                              	push   ecx
10561e8e:	52                                              	push   edx
10561e8f:	e8 8c bc 2a 00                                  	call   0x1080db20
10561e94:	83 c4 0c                                        	add    esp,0xc
10561e97:	c3                                              	ret
10561e98:	cc                                              	int3
10561e99:	cc                                              	int3
10561e9a:	cc                                              	int3
10561e9b:	cc                                              	int3
10561e9c:	cc                                              	int3
10561e9d:	cc                                              	int3
10561e9e:	cc                                              	int3
10561e9f:	cc                                              	int3
