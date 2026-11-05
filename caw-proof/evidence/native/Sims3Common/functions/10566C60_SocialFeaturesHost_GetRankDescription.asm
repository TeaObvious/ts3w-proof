# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566c60 (SocialFeaturesHost_GetRankDescription)
Paired Ghidra pseudocode: 10566C60_SocialFeaturesHost_GetRankDescription.c
Window: [0x10566c60, 0x10566c80) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566c80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566c60: 8b 44 24 08 8b 4c 24 04 50 51 e8 71 eb ff ff 83
10566c70: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10566c60 <.text+0x565c60>:
10566c60:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10566c64:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10566c68:	50                                              	push   eax
10566c69:	51                                              	push   ecx
10566c6a:	e8 71 eb ff ff                                  	call   0x105657e0
10566c6f:	83 c4 08                                        	add    esp,0x8
10566c72:	c3                                              	ret
10566c73:	cc                                              	int3
10566c74:	cc                                              	int3
10566c75:	cc                                              	int3
10566c76:	cc                                              	int3
10566c77:	cc                                              	int3
10566c78:	cc                                              	int3
10566c79:	cc                                              	int3
10566c7a:	cc                                              	int3
10566c7b:	cc                                              	int3
10566c7c:	cc                                              	int3
10566c7d:	cc                                              	int3
10566c7e:	cc                                              	int3
10566c7f:	cc                                              	int3
