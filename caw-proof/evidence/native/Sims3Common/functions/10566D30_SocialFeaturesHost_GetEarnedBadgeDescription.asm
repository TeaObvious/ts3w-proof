# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566d30 (SocialFeaturesHost_GetEarnedBadgeDescription)
Paired Ghidra pseudocode: 10566D30_SocialFeaturesHost_GetEarnedBadgeDescription.c
Window: [0x10566d30, 0x10566d50) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566d50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566d30: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
10566d40: 1c f6 ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10566d30 <.text+0x565d30>:
10566d30:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10566d34:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10566d38:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10566d3c:	50                                              	push   eax
10566d3d:	51                                              	push   ecx
10566d3e:	52                                              	push   edx
10566d3f:	e8 1c f6 ff ff                                  	call   0x10566360
10566d44:	83 c4 0c                                        	add    esp,0xc
10566d47:	c3                                              	ret
10566d48:	cc                                              	int3
10566d49:	cc                                              	int3
10566d4a:	cc                                              	int3
10566d4b:	cc                                              	int3
10566d4c:	cc                                              	int3
10566d4d:	cc                                              	int3
10566d4e:	cc                                              	int3
10566d4f:	cc                                              	int3
