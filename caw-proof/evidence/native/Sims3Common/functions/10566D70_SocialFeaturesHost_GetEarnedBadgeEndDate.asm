# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566d70 (SocialFeaturesHost_GetEarnedBadgeEndDate)
Paired Ghidra pseudocode: 10566D70_SocialFeaturesHost_GetEarnedBadgeEndDate.c
Window: [0x10566d70, 0x10566d90) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566d90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566d70: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
10566d80: 7c f7 ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10566d70 <.text+0x565d70>:
10566d70:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10566d74:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10566d78:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10566d7c:	50                                              	push   eax
10566d7d:	51                                              	push   ecx
10566d7e:	52                                              	push   edx
10566d7f:	e8 7c f7 ff ff                                  	call   0x10566500
10566d84:	83 c4 0c                                        	add    esp,0xc
10566d87:	c3                                              	ret
10566d88:	cc                                              	int3
10566d89:	cc                                              	int3
10566d8a:	cc                                              	int3
10566d8b:	cc                                              	int3
10566d8c:	cc                                              	int3
10566d8d:	cc                                              	int3
10566d8e:	cc                                              	int3
10566d8f:	cc                                              	int3
