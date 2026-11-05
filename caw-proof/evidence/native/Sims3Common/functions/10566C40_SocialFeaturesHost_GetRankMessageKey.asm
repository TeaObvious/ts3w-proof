# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566c40 (SocialFeaturesHost_GetRankMessageKey)
Paired Ghidra pseudocode: 10566C40_SocialFeaturesHost_GetRankMessageKey.c
Window: [0x10566c40, 0x10566c60) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566c60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566c40: 8b 44 24 08 8b 4c 24 04 50 51 e8 c1 ea ff ff 83
10566c50: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10566c40 <.text+0x565c40>:
10566c40:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10566c44:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10566c48:	50                                              	push   eax
10566c49:	51                                              	push   ecx
10566c4a:	e8 c1 ea ff ff                                  	call   0x10565710
10566c4f:	83 c4 08                                        	add    esp,0x8
10566c52:	c3                                              	ret
10566c53:	cc                                              	int3
10566c54:	cc                                              	int3
10566c55:	cc                                              	int3
10566c56:	cc                                              	int3
10566c57:	cc                                              	int3
10566c58:	cc                                              	int3
10566c59:	cc                                              	int3
10566c5a:	cc                                              	int3
10566c5b:	cc                                              	int3
10566c5c:	cc                                              	int3
10566c5d:	cc                                              	int3
10566c5e:	cc                                              	int3
10566c5f:	cc                                              	int3
