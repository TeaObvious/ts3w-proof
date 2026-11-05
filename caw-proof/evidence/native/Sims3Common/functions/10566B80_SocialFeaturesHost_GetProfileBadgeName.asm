# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566b80 (SocialFeaturesHost_GetProfileBadgeName)
Paired Ghidra pseudocode: 10566B80_SocialFeaturesHost_GetProfileBadgeName.c
Window: [0x10566b80, 0x10566ba0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566ba0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566b80: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
10566b90: ec e4 ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10566b80 <.text+0x565b80>:
10566b80:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10566b84:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10566b88:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10566b8c:	50                                              	push   eax
10566b8d:	51                                              	push   ecx
10566b8e:	52                                              	push   edx
10566b8f:	e8 ec e4 ff ff                                  	call   0x10565080
10566b94:	83 c4 0c                                        	add    esp,0xc
10566b97:	c3                                              	ret
10566b98:	cc                                              	int3
10566b99:	cc                                              	int3
10566b9a:	cc                                              	int3
10566b9b:	cc                                              	int3
10566b9c:	cc                                              	int3
10566b9d:	cc                                              	int3
10566b9e:	cc                                              	int3
10566b9f:	cc                                              	int3
