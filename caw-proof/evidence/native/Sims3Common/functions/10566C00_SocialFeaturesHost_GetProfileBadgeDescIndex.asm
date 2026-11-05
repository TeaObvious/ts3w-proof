# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566c00 (SocialFeaturesHost_GetProfileBadgeDescIndex)
Paired Ghidra pseudocode: 10566C00_SocialFeaturesHost_GetProfileBadgeDescIndex.c
Window: [0x10566c00, 0x10566c20) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566c20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566c00: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
10566c10: 5c e9 ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10566c00 <.text+0x565c00>:
10566c00:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10566c04:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10566c08:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10566c0c:	50                                              	push   eax
10566c0d:	51                                              	push   ecx
10566c0e:	52                                              	push   edx
10566c0f:	e8 5c e9 ff ff                                  	call   0x10565570
10566c14:	83 c4 0c                                        	add    esp,0xc
10566c17:	c3                                              	ret
10566c18:	cc                                              	int3
10566c19:	cc                                              	int3
10566c1a:	cc                                              	int3
10566c1b:	cc                                              	int3
10566c1c:	cc                                              	int3
10566c1d:	cc                                              	int3
10566c1e:	cc                                              	int3
10566c1f:	cc                                              	int3
