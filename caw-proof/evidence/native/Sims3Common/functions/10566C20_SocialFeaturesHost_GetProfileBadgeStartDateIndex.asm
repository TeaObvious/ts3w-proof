# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566c20 (SocialFeaturesHost_GetProfileBadgeStartDateIndex)
Paired Ghidra pseudocode: 10566C20_SocialFeaturesHost_GetProfileBadgeStartDateIndex.c
Window: [0x10566c20, 0x10566c40) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566c40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566c20: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
10566c30: 0c ea ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10566c20 <.text+0x565c20>:
10566c20:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10566c24:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10566c28:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10566c2c:	50                                              	push   eax
10566c2d:	51                                              	push   ecx
10566c2e:	52                                              	push   edx
10566c2f:	e8 0c ea ff ff                                  	call   0x10565640
10566c34:	83 c4 0c                                        	add    esp,0xc
10566c37:	c3                                              	ret
10566c38:	cc                                              	int3
10566c39:	cc                                              	int3
10566c3a:	cc                                              	int3
10566c3b:	cc                                              	int3
10566c3c:	cc                                              	int3
10566c3d:	cc                                              	int3
10566c3e:	cc                                              	int3
10566c3f:	cc                                              	int3
