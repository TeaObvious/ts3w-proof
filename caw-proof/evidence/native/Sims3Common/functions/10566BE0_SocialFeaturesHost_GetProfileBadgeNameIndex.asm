# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566be0 (SocialFeaturesHost_GetProfileBadgeNameIndex)
Paired Ghidra pseudocode: 10566BE0_SocialFeaturesHost_GetProfileBadgeNameIndex.c
Window: [0x10566be0, 0x10566c00) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566c00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566be0: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
10566bf0: ac e8 ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10566be0 <.text+0x565be0>:
10566be0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10566be4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10566be8:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10566bec:	50                                              	push   eax
10566bed:	51                                              	push   ecx
10566bee:	52                                              	push   edx
10566bef:	e8 ac e8 ff ff                                  	call   0x105654a0
10566bf4:	83 c4 0c                                        	add    esp,0xc
10566bf7:	c3                                              	ret
10566bf8:	cc                                              	int3
10566bf9:	cc                                              	int3
10566bfa:	cc                                              	int3
10566bfb:	cc                                              	int3
10566bfc:	cc                                              	int3
10566bfd:	cc                                              	int3
10566bfe:	cc                                              	int3
10566bff:	cc                                              	int3
