# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566cf0 (SocialFeaturesHost_GetEarnedBadgeID)
Paired Ghidra pseudocode: 10566CF0_SocialFeaturesHost_GetEarnedBadgeID.c
Window: [0x10566cf0, 0x10566d10) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566d10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566cf0: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
10566d00: bc f4 ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10566cf0 <.text+0x565cf0>:
10566cf0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10566cf4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10566cf8:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10566cfc:	50                                              	push   eax
10566cfd:	51                                              	push   ecx
10566cfe:	52                                              	push   edx
10566cff:	e8 bc f4 ff ff                                  	call   0x105661c0
10566d04:	83 c4 0c                                        	add    esp,0xc
10566d07:	c3                                              	ret
10566d08:	cc                                              	int3
10566d09:	cc                                              	int3
10566d0a:	cc                                              	int3
10566d0b:	cc                                              	int3
10566d0c:	cc                                              	int3
10566d0d:	cc                                              	int3
10566d0e:	cc                                              	int3
10566d0f:	cc                                              	int3
