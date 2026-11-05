# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566ba0 (SocialFeaturesHost_GetProfileBadgeDesc)
Paired Ghidra pseudocode: 10566BA0_SocialFeaturesHost_GetProfileBadgeDesc.c
Window: [0x10566ba0, 0x10566bc0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566bc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566ba0: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
10566bb0: 2c e6 ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10566ba0 <.text+0x565ba0>:
10566ba0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10566ba4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10566ba8:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10566bac:	50                                              	push   eax
10566bad:	51                                              	push   ecx
10566bae:	52                                              	push   edx
10566baf:	e8 2c e6 ff ff                                  	call   0x105651e0
10566bb4:	83 c4 0c                                        	add    esp,0xc
10566bb7:	c3                                              	ret
10566bb8:	cc                                              	int3
10566bb9:	cc                                              	int3
10566bba:	cc                                              	int3
10566bbb:	cc                                              	int3
10566bbc:	cc                                              	int3
10566bbd:	cc                                              	int3
10566bbe:	cc                                              	int3
10566bbf:	cc                                              	int3
