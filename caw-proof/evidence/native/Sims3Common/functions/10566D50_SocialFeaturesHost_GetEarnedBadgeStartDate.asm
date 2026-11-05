# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566d50 (SocialFeaturesHost_GetEarnedBadgeStartDate)
Paired Ghidra pseudocode: 10566D50_SocialFeaturesHost_GetEarnedBadgeStartDate.c
Window: [0x10566d50, 0x10566d70) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566d70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566d50: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
10566d60: cc f6 ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10566d50 <.text+0x565d50>:
10566d50:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10566d54:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10566d58:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10566d5c:	50                                              	push   eax
10566d5d:	51                                              	push   ecx
10566d5e:	52                                              	push   edx
10566d5f:	e8 cc f6 ff ff                                  	call   0x10566430
10566d64:	83 c4 0c                                        	add    esp,0xc
10566d67:	c3                                              	ret
10566d68:	cc                                              	int3
10566d69:	cc                                              	int3
10566d6a:	cc                                              	int3
10566d6b:	cc                                              	int3
10566d6c:	cc                                              	int3
10566d6d:	cc                                              	int3
10566d6e:	cc                                              	int3
10566d6f:	cc                                              	int3
